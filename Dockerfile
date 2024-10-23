# Sử dụng image Ubuntu 22.04 làm base image
FROM ubuntu:22.04

# Thiết lập biến môi trường để không yêu cầu nhập thông tin trong quá trình cài đặt
ENV DEBIAN_FRONTEND=noninteractive

# Cài đặt git, vim và openssh-client
RUN apt-get update && \
    apt-get install -y git vim openssh-client && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Command mặc định khi chạy container
CMD ["/bin/bash"]
