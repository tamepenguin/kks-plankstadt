require 'rqrcode_png'

qr = RQRCode::QRCode.new('http://createdbypete.com')
png = qr.to_img


<<-MARKUP.strip
    <div class="qrcode">
      <img src="#{png.to_data_url}" alt="">
    </div>
MARKUP
# Now we have a chunky_png to work with we can base64 encode the image
#png.to_data_url

