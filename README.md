<<<<<<< HEAD
=======
# DjangoOracle


DjangoOracle is a DJango app with oracle implementation with docker.

## Installation

```bash
cd DjangoOracle
```

## Usage

```bash

sudo docker build --pull -t oracle/instantclient:18 .

```
```bash

sudo docker run -p 8000:8000 -v $PWD:/opt/ -ti --rm oracle/instantclient:18 /bin/bash

```
## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)

## Credits 

[oracle-instantclient](https://github.com/oracle/docker-images/tree/master/OracleInstantClient)


[oracle11g](https://github.com/wnameless/docker-oracle-xe-11g)
>>>>>>> e9bca6e099359d3828926d67513dc4cdfadf575e
