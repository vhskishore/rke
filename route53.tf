resource "aws_route53_record" "itzhsk" {
zone_id = "${aws_route53_zone.some-zone.zone_id}"
name = "www.astrahome.xyz"
type = "A"
ttl = "300"
records = ["104.236.247.8"]
}