FROM public.ecr.aws/lambda/python:3.9

COPY requirements.txt .

RUN pip install --upgrade pip && pip install uv

RUN pip install --system -r requirements.txt --target "${LAMBDA_TASK_ROOT}"

COPY . .

COPY app.py app-chainlit.py config.py ${LAMBDA_TASK_ROOT}

CMD [ "app.handler" ]
