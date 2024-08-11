# memo: https://github.com/aws/aws-cli/issues/5373
FROM --platform=arm64 amazon/aws-cli

RUN yum install -y https://s3.amazonaws.com/session-manager-downloads/plugin/latest/linux_arm64/session-manager-plugin.rpm
