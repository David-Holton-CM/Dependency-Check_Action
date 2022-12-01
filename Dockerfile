FROM owasp/dependency-check-action:latest

LABEL repository="https://github.com/dependency-check/Dependency-Check_Action" \
      homepage="https://github.com/dependency-check/Dependency-Check_Action" \
      maintainer="javixeneize" \
      com.github.actions.name="Dependency Check" \
      com.github.actions.description="Github action to execute dependency check as part of a github workflow" \
      com.github.actions.icon="shield" \
      com.github.actions.color="red"

USER root

RUN groupadd  -g 910 -o dockerroot
RUN useradd -m -u 910 -g 910 -o -s /bin/bash dockerroot
RUN groupadd  -g 911 -o jenkins
RUN useradd -m -u 911 -g 911 -o -s /bin/bash jenkins
RUN usermod -a -G 910 jenkins

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/bin/sh","/entrypoint.sh"]
