FROM alpine:latest

RUN apk add --no-cache g++ make git

WORKDIR /app
RUN git clone https://github.com/ArtemYakimets/Introduction-to-Docker.git .

RUN g++ shell_sort.cpp -o shell_sort -fopenmp

CMD ./shell_sort > /output/result.txt
