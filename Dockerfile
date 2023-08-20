FROM container-registry.oracle.com/database/ords

USER root

WORKDIR /app

COPY . .

# Give execute permissions to the script
RUN chmod +x installApp.sh

# Run the script when the container starts
# CMD ["./installApp.sh"]

