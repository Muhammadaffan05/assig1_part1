ASSIGNMENT  PART 1  README FILE:

I started by creating a folder named docker_learning . Inside the docker_learning folder i created two files : app.py for simple Python program and a docker file which defines how the Docker image is built.

In the CMD i ran the following command to build the Docker image named "test-app":
"docker build -t test-app ."

After building the image, I give a tag name to it
"docker tag test-app:latest muhammadaffan05/test-app:latest"

Using "docker login" i logged in to my docker account using command prompt 

then i pushed my docker images to it : "docker push muhammadaffan05/test-app:latest" 

docker repo link : https://hub.docker.com/repository/docker/muhammadaffan05/test-app/general


ASSIGMENT-1 PART 2 README FILE:
I make a docker container of docker image which i made in part 1:
"C:\docker_learning>docker run --name my-test-container-2 muhammadaffan05/test-app:latest
hello world"

logs: "C:\docker_learning>docker logs my-test-container-2
hello world"

1. 'docker ps' => "C:\docker_learning>docker ps
CONTAINER ID   IMAGE     COMMAND                  CREATED         STATUS         PORTS     NAMES
37937904b3a7   nginx     "/docker-entrypoint.…"   7 seconds ago   Up 5 seconds   80/tcp    bold_satoshi"

2. 'docker stop' =>"C:\docker_learning>docker stop 37937904b3a7
37937904b3a7"

3. 'docker rm' =>"C:\docker_learning>docker rm 37937904b3a7
37937904b3a7"

4. 'docker logs' =>"C:\docker_learning>docker logs my-test-container-2
hello world"

5. 'docker inspect' =>"C:\docker_learning>docker inspect my-test-container-2
[
    {
        "Id": "265f1c5511d04eea70ea7a9edd172bbd953a3b8b0ca3e5391dc11d335627e17d",
        "Created": "2023-08-18T20:13:53.008971606Z",
        "Path": "python",
        "Args": [
            "app.py"
        ],
        "State": {
            "Status": "exited",
            "Running": false,
            "Paused": false,
            "Restarting": false,
            "OOMKilled": false,
            "Dead": false,
            "Pid": 0,
            "ExitCode": 0,
            "Error": "",
            "StartedAt": "2023-08-18T20:13:53.709496996Z",
            "FinishedAt": "2023-08-18T20:13:53.770657238Z"
        },
        "Image": "sha256:1e6e9a08e6893789e9b6cfb39252c2c312f53cc593dfcfaaee65e8a5d29ae3b5",
        "ResolvConfPath": "/var/lib/docker/containers/265f1c5511d04eea70ea7a9edd172bbd953a3b8b0ca3e5391dc11d335627e17d/resolv.conf",
        "HostnamePath": "/var/lib/docker/containers/265f1c5511d04eea70ea7a9edd172bbd953a3b8b0ca3e5391dc11d335627e17d/hostname",
        "HostsPath": "/var/lib/docker/containers/265f1c5511d04eea70ea7a9edd172bbd953a3b8b0ca3e5391dc11d335627e17d/hosts",
        "LogPath": "/var/lib/docker/containers/265f1c5511d04eea70ea7a9edd172bbd953a3b8b0ca3e5391dc11d335627e17d/265f1c5511d04eea70ea7a9edd172bbd953a3b8b0ca3e5391dc11d335627e17d-json.log",
        "Name": "/my-test-container-2",
        "RestartCount": 0,
        "Driver": "overlay2",
        "Platform": "linux",
        "MountLabel": "",
        "ProcessLabel": "",
        "AppArmorProfile": "",
        "ExecIDs": null,
        "HostConfig": {
            "Binds": null,
            "ContainerIDFile": "",
            "LogConfig": {
                "Type": "json-file",
                "Config": {}
            },
            "NetworkMode": "default",
            "PortBindings": {},
            "RestartPolicy": {
                "Name": "no",
                "MaximumRetryCount": 0
            },
            "AutoRemove": false,
            "VolumeDriver": "",
            "VolumesFrom": null,
            "ConsoleSize": [
                20,
                151
            ],
            "CapAdd": null,
            "CapDrop": null,
            "CgroupnsMode": "host",
            "Dns": [],
            "DnsOptions": [],
            "DnsSearch": [],
            "ExtraHosts": null,
            "GroupAdd": null,
            "IpcMode": "private",
            "Cgroup": "",
            "Links": null,
            "OomScoreAdj": 0,
            "PidMode": "",
            "Privileged": false,
            "PublishAllPorts": false,
            "ReadonlyRootfs": false,
            "SecurityOpt": null,
            "UTSMode": "",
            "UsernsMode": "",
            "ShmSize": 67108864,
            "Runtime": "runc",
            "Isolation": "",
            "CpuShares": 0,
            "Memory": 0,
            "NanoCpus": 0,
            "CgroupParent": "",
            "BlkioWeight": 0,
            "BlkioWeightDevice": [],
            "BlkioDeviceReadBps": [],
            "BlkioDeviceWriteBps": [],
            "BlkioDeviceReadIOps": [],
            "BlkioDeviceWriteIOps": [],
            "CpuPeriod": 0,
            "CpuQuota": 0,
            "CpuRealtimePeriod": 0,
            "CpuRealtimeRuntime": 0,
            "CpusetCpus": "",
            "CpusetMems": "",
            "Devices": [],
            "DeviceCgroupRules": null,
            "DeviceRequests": null,
            "MemoryReservation": 0,
            "MemorySwap": 0,
            "MemorySwappiness": null,
            "OomKillDisable": false,
            "PidsLimit": null,
            "Ulimits": null,
            "CpuCount": 0,
            "CpuPercent": 0,
            "IOMaximumIOps": 0,
            "IOMaximumBandwidth": 0,
            "MaskedPaths": [
                "/proc/asound",
                "/proc/acpi",
                "/proc/kcore",
                "/proc/keys",
                "/proc/latency_stats",
                "/proc/timer_list",
                "/proc/timer_stats",
                "/proc/sched_debug",
                "/proc/scsi",
                "/sys/firmware"
            ],
            "ReadonlyPaths": [
                "/proc/bus",
                "/proc/fs",
                "/proc/irq",
                "/proc/sys",
                "/proc/sysrq-trigger"
            ]
        },
        "GraphDriver": {
            "Data": {
                "LowerDir": "/var/lib/docker/overlay2/0ac3116c98274abd0a602c6503f8459b2977362fa9d2721ebbb163837296b4c3-init/diff:/var/lib/docker/overlay2/0nikxa47j932kb0u0l8rrutca/diff:/var/lib/docker/overlay2/x56b6abcqaegzwamd5pk89wqb/diff:/var/lib/docker/overlay2/6y59uw84qn5udkgp4c05s7uvh/diff:/var/lib/docker/overlay2/561d879cb3fd3d1ebb9fe7994af34c858b5aa25a43364ae0288fcf10d02aa8a8/diff:/var/lib/docker/overlay2/b9c896af61cbb5a5ee7c2884fec2c81dfdf9dd4d179f25ca285db7855936c64a/diff:/var/lib/docker/overlay2/ace80d0f5dab1eca40c74d78e5c0e230758f157b3674448069f79e6f163f6199/diff:/var/lib/docker/overlay2/e52417cc8df3af54f54f3b7c32e4e5c58d26da9a635b9800a77407a19ba7dfb7/diff:/var/lib/docker/overlay2/472c8d77603d2c10db1b6751e3670f4ce6a893d8a914d69b3a4a4916e54ca90b/diff:/var/lib/docker/overlay2/7edfec4f14415f1220713862ec270e4172b97e332f62272253f3671a125d3a85/diff:/var/lib/docker/overlay2/35cc1831738272d64d5e0e0a920909e8626f8a8c593bfdf9e17fe68aedbe69de/diff:/var/lib/docker/overlay2/045bca467b01068439ee8a7f509825c89420758f5c5ddea91df45618f0b9481f/diff",
                "MergedDir": "/var/lib/docker/overlay2/0ac3116c98274abd0a602c6503f8459b2977362fa9d2721ebbb163837296b4c3/merged",
                "UpperDir": "/var/lib/docker/overlay2/0ac3116c98274abd0a602c6503f8459b2977362fa9d2721ebbb163837296b4c3/diff",
                "WorkDir": "/var/lib/docker/overlay2/0ac3116c98274abd0a602c6503f8459b2977362fa9d2721ebbb163837296b4c3/work"
            },
            "Name": "overlay2"
        },
        "Mounts": [],
        "Config": {
            "Hostname": "265f1c5511d0",
            "Domainname": "",
            "User": "",
            "AttachStdin": false,
            "AttachStdout": true,
            "AttachStderr": true,
            "Tty": false,
            "OpenStdin": false,
            "StdinOnce": false,
            "Env": [
                "PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
                "LANG=C.UTF-8",
                "GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D",
                "PYTHON_VERSION=3.11.4",
                "PYTHON_PIP_VERSION=23.1.2",
                "PYTHON_SETUPTOOLS_VERSION=65.5.1",
                "PYTHON_GET_PIP_URL=https://github.com/pypa/get-pip/raw/9af82b715db434abb94a0a6f3569f43e72157346/public/get-pip.py",
                "PYTHON_GET_PIP_SHA256=45a2bb8bf2bb5eff16fdd00faef6f29731831c7c59bd9fc2bf1f3bed511ff1fe"
            ],
            "Cmd": [
                "python",
                "app.py"
            ],
            "Image": "muhammadaffan05/test-app:latest",
            "Volumes": null,
            "WorkingDir": "/docker_learning",
            "Entrypoint": null,
            "OnBuild": null,
            "Labels": {}
        },
        "NetworkSettings": {
            "Bridge": "",
            "SandboxID": "87c40e4e658e0de00c1ca4206f3c172c5b97bc599fd8ff512f92d50bb9d1af45",
            "HairpinMode": false,
            "LinkLocalIPv6Address": "",
            "LinkLocalIPv6PrefixLen": 0,
            "Ports": {},
            "SandboxKey": "/var/run/docker/netns/87c40e4e658e",
            "SecondaryIPAddresses": null,
            "SecondaryIPv6Addresses": null,
            "EndpointID": "",
            "Gateway": "",
            "GlobalIPv6Address": "",
            "GlobalIPv6PrefixLen": 0,
            "IPAddress": "",
            "IPPrefixLen": 0,
            "IPv6Gateway": "",
            "MacAddress": "",
            "Networks": {
                "bridge": {
                    "IPAMConfig": null,
                    "Links": null,
                    "Aliases": null,
                    "NetworkID": "104fccbebe0de152f55b2a743cc06c5e3a6e158563afcd810d903cf3682c519b",
                    "EndpointID": "",
                    "Gateway": "",
                    "IPAddress": "",
                    "IPPrefixLen": 0,
                    "IPv6Gateway": "",
                    "GlobalIPv6Address": "",
                    "GlobalIPv6PrefixLen": 0,
                    "MacAddress": "",
                    "DriverOpts": null
                }
            }
        }
    }
]"


6. 'docker attach' =>"C:\docker_learning>docker attach fa12c6e07a84
2023/08/18 20:57:38 [notice] 1#1: signal 2 (SIGINT) received, exiting
2023/08/18 20:57:38 [notice] 30#30: exiting
2023/08/18 20:57:38 [notice] 31#31: exiting
2023/08/18 20:57:38 [notice] 31#31: exit
2023/08/18 20:57:38 [notice] 30#30: exit
2023/08/18 20:57:38 [notice] 33#33: exiting
2023/08/18 20:57:38 [notice] 33#33: exit
2023/08/18 20:57:38 [notice] 32#32: exiting
2023/08/18 20:57:38 [notice] 32#32: exit
2023/08/18 20:57:38 [notice] 1#1: signal 14 (SIGALRM) received
2023/08/18 20:57:38 [notice] 1#1: signal 17 (SIGCHLD) received from 31
2023/08/18 20:57:38 [notice] 1#1: worker process 31 exited with code 0
2023/08/18 20:57:38 [notice] 1#1: worker process 30 exited with code 0
2023/08/18 20:57:38 [notice] 1#1: worker process 32 exited with code 0
2023/08/18 20:57:38 [notice] 1#1: worker process 33 exited with code 0
2023/08/18 20:57:38 [notice] 1#1: exit"

7. 'docker commit' => C:\docker_learning>docker commit my-test-container-2 new-image:tag
sha256:32881a1a197741810a934db1d978a36c7ec89c4b3684cddce22c18aa1d761a9b

8. 'docker cp' =>"docker cp my-test-container-2:/path/to/container/file.txt /path/on/host/"

9. docker stat =>C:\docker_learning>docker stats my-test-container-2
CONTAINER ID   NAME                  CPU %     MEM USAGE / LIMIT   MEM %     NET I/O   BLOCK I/O   PIDS
265f1c5511d0   my-test-container-2   0.00%     0B / 0B             0.00%     0B / 0B   0B / 0B     0

10. docker top => "C:\docker_learning>docker top 5ca0685b3946
UID                 PID                 PPID                C                   STIME               TTY                 TIME                CMD
root                19344               19324               0                   21:05               ?                   00:00:00            nginx: master process nginx -g daemon off;
uuidd               19388               19344               0                   21:05               ?                   00:00:00            nginx: worker process
uuidd               19389               19344               0                   21:05               ?                   00:00:00            nginx: worker process
uuidd               19390               19344               0                   21:05               ?                   00:00:00            nginx: worker process
uuidd               19391               19344               0                   21:05               ?                   00:00:00            nginx: worker process"


11. docker start => C:\docker_learning>docker start 5ca0685b3946
5ca0685b3946

C:\docker_learning>docker ps
CONTAINER ID   IMAGE     COMMAND                  CREATED         STATUS         PORTS     NAMES
5ca0685b3946   nginx     "/docker-entrypoint.…"   3 minutes ago   Up 6 seconds   80/tcp    loving_dhawan


12. docker pause => C:\docker_learning>docker pause 5ca0685b3946
5ca0685b3946

13. docker unpause => C:\docker_learning>docker unpause 5ca0685b3946
5ca0685b3946

14. docker rename => C:\docker_learning>docker rename my-test-container m_container

15. docker wait => C:\docker_learning>docker wait 5ca0685b3946
0

16.  docker port => C:\docker_learning>docker run -d -p 80:80 nginx
3cec3493b47f6da8ace14361121600fe4b89f614a0e42f38306b8f800367ba75

C:\docker_learning>docker ps
CONTAINER ID   IMAGE     COMMAND                  CREATED          STATUS          PORTS                NAMES
3cec3493b47f   nginx     "/docker-entrypoint.…"   31 seconds ago   Up 29 seconds   0.0.0.0:80->80/tcp   cranky_archimedes

C:\docker_learning>docker port 3cec3493b47f
80/tcp -> 0.0.0.0:80

17. docker update => C:\docker_learning>docker update --cpus 2 --memory 512m 3cec3493b47f
Error response from daemon: Cannot update container 3cec3493b47f6da8ace14361121600fe4b89f614a0e42f38306b8f800367ba75: Memory limit should be smaller than already set memoryswap limit, update the memoryswap at the same time

18. docker restart => C:\docker_learning>docker restart 3cec3493b47f
3cec3493b47f
 

ASSIGNMENT 1 : part 3 :
. C:\docker_learning>docker volume create my_volume
my_volume (creating name volume )

.C:\docker_learning>docker run -d --name nginx-container -p 8080:80 -v my_volume:/usr/share/nginx/html nginx(creating docker container)

.C:\docker_learning>docker cp index.html nginx-container:/usr/share/nginx/html/
Successfully copied 2.05kB to nginx-container:/usr/share/nginx/html/(Copy the "index.html" file from your host machine to the "my_volume" volume)

.C:\docker_learning>docker stop nginx-container
nginx-container(stopping nginx )

C:\docker_learning>docker rm nginx-container
nginx-container(deleting nginx)


.C:\docker_learning>docker run -d --name httpd-container -p 8081:80 -v my_volume:/usr/local/apache2/htdocs httpd
Unable to find image 'httpd:latest' locally
latest: Pulling from library/httpd
52d2b7f179e3: Already exists
5bfaffbad7bf: Pull complete
460cd5c32012: Pull complete
ba29f61f6139: Pull complete
92baf798eff7: Pull complete
Digest: sha256:333f7bca9fb72248f301fd2ae4892b86d36cc2fdf4c6aa49a6700f27c8e06daf
Status: Downloaded newer image for httpd:latest
e6514c28dc0065cf0163b2388ccf4cb858c3ec172fa4dabea529ac476cdf4938( i create new Docker container using the "httpd" image and mount the "my_volume" volume)(I navigate to http://localhost:8081 and "Docker Volume!  Testing Docker Volume" written on this page)

. C:\docker_learning>docker cp about.html httpd-container:/usr/local/apache2/htdocs/
Successfully copied 2.05kB to httpd-container:/usr/local/apache2/htdocs/ (i copy the about.html file from my host machine to the "my_volume" volume) (i navigate to http://localhost:8081/about.html. and i can see the content i added to the "about.html" file that is "Docker Volume!  Testing Docker Volume" written on this page .)

. C:\docker_learning>docker stop httpd
httpd  C:\docker_learning>docker rm httpd
httpd("Stop and remove the httpd")

.To check if a Docker volume is present i run the command ("C:\docker_learning>docker volume ls
DRIVER    VOLUME NAME
local     my_volume")

. docker volume rm my_volume (for remove the "my_volume" volume)