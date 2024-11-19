# Use the official PostgreSQL image as the base
FROM postgres:17

# Set environment variables for PostgreSQL (optional but recommended)
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=guest
ENV POSTGRES_DB=game_data

# Copy your database dump file into the image
COPY database_dump.sql /docker-entrypoint-initdb.d/

# Expose the default PostgreSQL port
EXPOSE 5431