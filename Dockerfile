FROM nvcr.io/nvidia/tensorflow:21.10-tf1-py3

COPY pan24-generative-authorship /home/pan24-generative-authorship

RUN pip3 install bert4keras

ENTRYPOINT [ "python3", "/home/pan24-generative-authorship/kear4bert_test.py", "-i", "$inputDataset", "-o", "$outputDir" ]

