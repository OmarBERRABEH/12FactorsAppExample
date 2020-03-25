FROM node:12

# Copy source code
COPY . /app

# Change working directory
WORKDIR /app

RUN echo $(npm -v)

# Install dependencies
RUN npm install

# Expose API port to the outside
ENV PORT 80
EXPOSE 80

# Launch application
CMD ["npm","start"]