import logging


class CustomFormatter(logging.Formatter):
    grey = "\x1b[38;20m"
    yellow = "\x1b[33;20m"
    red = "\x1b[31;20m"
    bold_red = "\x1b[31;1m"
    reset = "\x1b[0m"
    format = "%(asctime)s - %(name)s - %(levelname)s - %(message)s (%(filename)s:%(lineno)d)"
    info_format = "%(asctime)s - %(name)s - %(levelname)s - %(message)s"

    FORMATS = {
        logging.DEBUG: grey + format + reset,
        logging.INFO: grey + info_format + reset,
        logging.WARNING: yellow + format + reset,
        logging.ERROR: red + format + reset,
        logging.CRITICAL: bold_red + format + reset
    }

    def format(self, record):
        log_fmt = self.FORMATS.get(record.levelno)
        formatter = logging.Formatter(log_fmt)
        return formatter.format(record)


class CustomLogger:
    # create logger with 'spam_application'
    LOGGER = logging.getLogger("NEEM_SQLIZER")
    LOGGER.setLevel(logging.INFO)

    # create console handler with a higher log level
    stream_handler = logging.StreamHandler(open("../../stdout_file.txt", "w"))
    stream_handler.setLevel(logging.INFO)

    stream_handler.setFormatter(CustomFormatter())
    LOGGER.addHandler(stream_handler)
