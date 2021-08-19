# Using Python Slim-Buster
FROM vckyouuu/geezprojects:buster
# kalian ngentot
# KG-UBOT
#
RUN git clone -b KG-UBOT https://github.com/KGPROJE/KG-UBOT/root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/KGPROJE/KG-UBOT/KG-UBOT/requirements.txt

EXPOSE 80 443

# Finalization
CMD ["python3","-m","userbot"]
