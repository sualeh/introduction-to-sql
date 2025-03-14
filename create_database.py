"""
Create database schema and populate with initial data.
"""

import os
import logging
from sqlalchemy import text, Engine, Connection, create_engine


# Configure logger
logging.basicConfig(
    level=logging.ERROR,
    format="%(asctime)s - %(name)s - %(levelname)s - %(message)s"
)
logger = logging.getLogger(__name__)


def execute_sql_script(connection: Connection, sql_file_path: str) -> None:
    """
    Execute SQL statements from a file.

    Args:
        connection: SQLAlchemy Connection object
        sql_file_path: Path to the SQL script file

    Raises:
        FileNotFoundError: If the SQL file doesn't exist
        Exception: For any SQL execution errors
    """
    try:
        if os.path.exists(sql_file_path):
            logger.info("Executing SQL script: %s", sql_file_path)
            with open(sql_file_path, "r", encoding="utf-8") as file:
                sql_script = file.read()
                # Split script by semicolons for multiple statements
                statements = sql_script.split(";")
                for statement in statements:
                    if statement.strip():
                        connection.execute(text(statement))
        else:
            raise FileNotFoundError(
                f"SQL script file not found: {sql_file_path}"
            )
    except Exception as e:
        logger.error("Error in executing SQL script: %s", e)
        raise


def create_database(engine: Engine) -> None:
    """
    Create database schema and populate with initial data.

    Args:
        engine: SQLAlchemy engine instance

    Raises:
        Exception: If any error occurs during database creation
    """
    try:
        logger.info("Starting database creation")
        with engine.begin() as connection:
            execute_sql_script(connection, "schema.sql")
            execute_sql_script(connection, "data.sql")
            logger.info("Database created successfully")
    except Exception as e:
        logger.error("Error in creating database: %s", e)
        raise


def create_sqlite_database(db_file_path: str) -> None:
    """
    Create a SQLite database file with schema and initial data.

    Args:
        db_file_path: Path to SQLite database file

    Raises:
        Exception: If any error occurs during database creation
    """
    logger.info("Creating SQLite database at: %s", db_file_path)
    # SQLite connection string uses sqlite:/// format
    engine = create_engine(f"sqlite:///{db_file_path}")
    create_database(engine)
    logger.info("SQLite database created successfully at: %s", db_file_path)


def main() -> None:
    """
    Main function to create a SQLite database file.

    Default to 'database.db' in current directory
    """
    db_path = os.path.join(os.getcwd(), "database.db")
    create_sqlite_database(db_path)
    print(f"Database created successfully at: {db_path}")


if __name__ == "__main__":
    main()
