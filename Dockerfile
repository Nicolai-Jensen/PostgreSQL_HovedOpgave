# Use the official PostgreSQL image as the base
FROM postgres:17

# Set environment variables for PostgreSQL (optional but recommended)
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=guest
ENV POSTGRES_DB=game_data

# Copy your database dump file into the image
COPY database_backup.dump /tmp/database_backup.dump
#CMD ["bash", "-c", "pg_restore -U postgres -d game_data /tmp/database_backup.dump && postgres"]

# Expose the default PostgreSQL port
EXPOSE 5431