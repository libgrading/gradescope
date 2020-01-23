FROM gradescope/auto-builds:latest

RUN add-apt-repository ppa:professor-jon/grading-software && \
    apt-get install -y libgrading-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/* /var/tmp/* /root/.cache
