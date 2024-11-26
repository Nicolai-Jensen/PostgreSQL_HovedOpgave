# Use the official PostgreSQL image as the base
FROM postgres:17

# Set environment variables for PostgreSQL (optional but recommended)
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=guest
ENV POSTGRES_DB=game_data

# Copy your database dump file into the image
COPY new_database_backup.dump /tmp/new_database_backup.dump


#CMD [ "pg_restore -U postgres -d game_data -h localhost -p 5431 database_backup.dump" ]

# Expose the default PostgreSQL port
EXPOSE 5431


