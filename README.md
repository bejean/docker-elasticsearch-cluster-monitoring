# docker-elasticsearch-cluster

Test in order to implement :

- one production cluster without any monitoring (Kibana is used only for Stack Managment and Dev Tools)
	- 3 es container
	- 1 kibana container
	- 1 metricbeats container for es module
	- 1 metricbeats container for system module

- one monitoring cluster (monitor the production server)
	- 2 es container
	- 1 kibana container


Reference :

- https://www.elastic.co/guide/en/elasticsearch/reference/current/monitoring-production.html
- https://www.elastic.co/guide/en/elasticsearch/reference/current/configuring-metricbeat.html
