import falcon
import time

class HelloWorldResource:

    def on_get(self, request, response):
        t = time.process_time()
        response.media = ('Hello, World')
        elapsed_time = time.process_time() - t
        print (elapsed_time)


app = application = falcon.API()
app.add_route('/', HelloWorldResource())
