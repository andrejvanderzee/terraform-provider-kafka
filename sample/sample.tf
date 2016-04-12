provider "kafka" {
  zookeeper = "localhost"
}

resource "kafka_topic" "my-topic" {
  name = "my-topic"
  partitions = 2
  replication_factor = 1
  retention_ms = 300000
  cleanup_policy = "compact"
}