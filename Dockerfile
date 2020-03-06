# Container image that runs your code
FROM efrat19/tests-buster

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
