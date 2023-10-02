# Use an official Mosquitto image as the base image
FROM eclipse-mosquitto

# Copy your custom Mosquitto configuration file (mosquitto.conf)
# to the appropriate location in the container
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# Expose the MQTT port
EXPOSE 1883

# Start the Mosquitto broker with the custom configuration
CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
