# Use the official PostgreSQL image as the base
FROM postgres:17

# Set environment variables for PostgreSQL
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=guest
ENV POSTGRES_DB=game_data

# Copy your database dump file into the image
COPY new_database_backup.dump /tmp/new_database_backup.dump

# Set PostgreSQL configuration overrides
CMD ["postgres", "-c", "max_connections=1000", "-c", "shared_buffers=6200MB"]

# Expose the default PostgreSQL port
EXPOSE 5431


