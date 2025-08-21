FROM postgres:latest

# Optional: Copy custom initialization scripts
#COPY ./init-db/init /docker-entrypoint-initdb.d/


ENV POSTGRES_USER=petclinic
ENV POSTGRES_DB=petclinic
ENV POSTGRES_PASSWORD=petclinic

COPY schema.sql data.sql /docker-entrypoint-initdb.d/
COPY data.sql /docker-entrypoint-initdb.d/



# Expose the default PostgreSQL port
EXPOSE 5432
CMD ["docker-entrypoint.sh", "postgres"]
