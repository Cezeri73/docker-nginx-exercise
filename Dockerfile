FROM nginx:latest

# 1. Mevcut tüm varsayılan dosyaları siliyoruz (Kalıntı kalmasın)
RUN rm /usr/share/nginx/html/*

# 2. Kendi dosyamızı hem index.html hem de index.nginx-debian.html olarak kopyalıyoruz
# Böylece Nginx hangisine bakarsa baksın senin yazını görecek.
COPY index.html /usr/share/nginx/html/index.html
COPY index.html /usr/share/nginx/html/index.nginx-debian.html
RUN chmod 644 /usr/share/nginx/html/index.html
EXPOSE 80
