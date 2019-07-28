env ?= prod

create:
	eb create $(env) \
		--instance_type t2.micro \
		--platform "ruby-2.6-(puma)" \
		--vpc \
		--vpc.id vpc-080b561e5a661f715 \
		--vpc.publicip \
		--vpc.ec2subnets subnet-025f69124e2531f04,subnet-0b20e2a7fd2f0883e \
		--vpc.dbsubnets subnet-0691d49d86c3a2f91,subnet-08154e710fcf0cfda \
		--vpc.elbpublic \
		--vpc.elbsubnets subnet-025f69124e2531f04,subnet-0b20e2a7fd2f0883e \
		--vpc.securitygroups sg-015ee79a11c13f8fc \
		--database \
		--database.instance db.t2.micro \
		--database.username postgres \
		--database.password p0stgre5
	eb setenv SECRET_KEY_BASE=$(shell rake secret) PORT=80

delete:
	eb terminate $(env) --force
