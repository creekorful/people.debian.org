# Traefik packaging progress

I will try to keep updated my progress with the Traefik (v2.4.3) packaging.

## Dependencies (extracted from go.mod)


<table style="border-collapse: collapse; border-spacing: 5px;">
<thead>
<tr>
<th>Dependency</th>
<th>Version</th>
<th>Packaged?</th>
<th>Link</th>
</tr>
</thead>
<tbody>
<tr><td>github.com/BurntSushi/toml</td><td>v0.3.1</td><td>Yes (0.3.1)</td><td><a href="https://tracker.debian.org/pkg/golang-toml">Tracker</a></td></tr>
<tr><td>github.com/ExpediaDotCom/haystack-client-go</td><td>v0.0.0-20190315171017-e7edbdf53a61</td><td>No (in NEW)</td><td><a href="https://bugs.debian.org/991637">ITP</a></td></tr>
<tr><td>github.com/Masterminds/semver</td><td>v1.4.2</td><td>Yes (1.4.2)</td><td><a href="https://tracker.debian.org/pkg/golang-github-masterminds-semver-dev">Tracker</a></td></tr>
<tr><td>github.com/Masterminds/sprig</td><td>v2.22.0+incompatible</td><td>Yes - exp (3.2.1)</td><td><a href="https://tracker.debian.org/pkg/golang-github-masterminds-sprig">Tracker</a></td></tr>
<tr><td>github.com/Microsoft/hcsshim</td><td>v0.8.7</td><td>No</td><td></td></tr>
<tr><td>github.com/Shopify/sarama</td><td>v1.23.1</td><td>Yes (1.22.1)</td><td><a href="https://tracker.debian.org/pkg/golang-github-shopify-sarama">Tracker</a></td></tr>
<tr><td>github.com/abbot/go-http-auth</td><td>v0.0.0-00010101000000-000000000000</td><td>Yes (0.4.0)</td><td><a href="https://tracker.debian.org/pkg/golang-github-abbot-go-http-auth">Tracker</a></td></tr>
<tr><td>github.com/abronan/valkeyrie</td><td>v0.0.0-20200127174252-ef4277a138cd</td><td>No</td><td></td></tr>
<tr><td>github.com/aws/aws-sdk-go</td><td>v1.30.20</td><td>Yes (1.36.33)</td><td><a href="https://tracker.debian.org/pkg/golang-github-aws-aws-sdk-go">Tracker</a></td></tr>
<tr><td>github.com/cenkalti/backoff/v4</td><td>v4.0.2</td><td>Yes - exp (4.1.0)</td><td></td></tr>
<tr><td>github.com/containerd/containerd</td><td>v1.3.2 </td><td>Yes (1.4.5)</td><td><a href="https://tracker.debian.org/pkg/containerd">Tracker</a></td></tr>
<tr><td>github.com/containous/alice</td><td>v0.0.0-20181107144136-d83ebdd94cbd</td><td>No</td><td></td></tr>
<tr><td>github.com/coreos/go-systemd</td><td>v0.0.0-20191104093116-d3cd4ed1dbcf</td><td>Yes (22.1.0)</td><td><a href="https://tracker.debian.org/pkg/golang-github-coreos-go-systemd">Tracker</a></td></tr>
<tr><td>github.com/davecgh/go-spew</td><td>v1.1.1</td><td>Yes (1.1.1)</td><td><a href="https://tracker.debian.org/pkg/golang-github-davecgh-go-spew">Tracker</a></td></tr>
<tr><td>github.com/docker/cli</td><td>v0.0.0-20200221155518-740919cc7fc0</td><td>No</td><td></td></tr>
<tr><td>github.com/docker/distribution</td><td>v2.7.1+incompatible </td><td>No</td><td></td></tr>
<tr><td>github.com/docker/docker</td><td>v0.7.3-0.20190327010347-be7ac8be2ae0</td><td>No</td><td></td></tr>
<tr><td>github.com/docker/docker-credential-helpers</td><td>v0.6.3 </td><td>No</td><td></td></tr>
<tr><td>github.com/docker/go-connections</td><td>v0.4.0</td><td>No</td><td></td></tr>
<tr><td>github.com/docker/go-metrics</td><td>v0.0.0-20181218153428-b84716841b82 </td><td>No</td><td></td></tr>
<tr><td>github.com/docker/libcompose</td><td>v0.0.0-20190805081528-eac9fe1b8b03 </td><td>No</td><td></td></tr>
<tr><td>github.com/docker/libtrust</td><td>v0.0.0-20160708172513-aabc10ec26b7 </td><td>No</td><td></td></tr>
<tr><td>github.com/donovanhide/eventsource</td><td>v0.0.0-20170630084216-b8f31a59085e </td><td>No</td><td></td></tr>
<tr><td>github.com/eapache/channels</td><td>v1.1.0</td><td>Yes (1.1.0)</td><td><a href="https://tracker.debian.org/pkg/golang-gopkg-eapache-channels.v1">Tracker</a></td></tr>
<tr><td>github.com/elazarl/go-bindata-assetfs</td><td>v1.0.0</td><td>Yes (1.0.0)</td><td><a href="https://tracker.debian.org/pkg/golang-github-elazarl-go-bindata-assetfs">Tracker</a></td></tr>
<tr><td>github.com/fatih/structs</td><td>v1.1.0</td><td>Yes (1.0.0)</td><td><a href="https://tracker.debian.org/pkg/golang-github-fatih-structs">Tracker</a></td></tr>
<tr><td>github.com/flynn/go-shlex</td><td>v0.0.0-20150515145356-3f9db97f8568 </td><td>No</td><td></td></tr>
<tr><td>github.com/gambol99/go-marathon</td><td>v0.0.0-20180614232016-99a156b96fb2</td><td>No</td><td></td></tr>
<tr><td>github.com/go-acme/lego/v4</td><td>v4.2.0</td><td>No</td><td></td></tr>
<tr><td>github.com/go-check/check</td><td>v0.0.0-00010101000000-000000000000</td><td>No</td><td></td></tr>
<tr><td>github.com/go-kit/kit</td><td>v0.10.1-0.20200915143503-439c4d2ed3ea</td><td>Yes (0.6.0)</td><td><a href="https://tracker.debian.org/pkg/golang-github-go-kit-kit">Tracker</a></td></tr>
<tr><td>github.com/golang/protobuf</td><td>v1.4.2</td><td>Yes (1.3.4)</td><td><a href="https://tracker.debian.org/pkg/golang-goprotobuf">Tracker</a></td></tr>
<tr><td>github.com/google/go-github/v28</td><td>v28.1.1</td><td>No</td><td></td></tr>
<tr><td>github.com/gorilla/mux</td><td>v1.7.3</td><td>Yes (1.7.4)</td><td><a href="https://tracker.debian.org/pkg/golang-github-gorilla-mux">Tracker</a></td></tr>
<tr><td>github.com/gorilla/websocket</td><td>v1.4.2</td><td>Yes (1.4.2)</td><td><a href="https://tracker.debian.org/pkg/golang-github-gorilla-websocket">Tracker</a></td></tr>
<tr><td>github.com/hashicorp/consul/api</td><td>v1.3.0</td><td>No</td><td></td></tr>
<tr><td>github.com/hashicorp/go-multierror</td><td>v1.0.0</td><td>Yes (1.1.0)</td><td><a href="https://tracker.debian.org/pkg/golang-github-hashicorp-go-multierror">Tracker</a></td></tr>
<tr><td>github.com/hashicorp/go-version</td><td>v1.2.0</td><td>Yes (1.2.0)</td><td><a href="https://tracker.debian.org/pkg/golang-github-hashicorp-go-version">Tracker</a></td></tr>
<tr><td>github.com/influxdata/influxdb1-client</td><td>v0.0.0-20191209144304-8bf82d3c094d</td><td>No</td><td></td></tr>
<tr><td>github.com/instana/go-sensor</td><td>v1.5.1</td><td>No</td><td></td></tr>
<tr><td>github.com/libkermit/compose</td><td>v0.0.0-20171122111507-c04e39c026ad</td><td>No</td><td></td></tr>
<tr><td>github.com/libkermit/docker</td><td>v0.0.0-20171122101128-e6674d32b807</td><td>No</td><td></td></tr>
<tr><td>github.com/libkermit/docker-check</td><td>v0.0.0-20171122104347-1113af38e591</td><td>No</td><td></td></tr>
<tr><td>github.com/magiconair/properties</td><td>v1.8.1</td><td>Yes (1.8.4)</td><td><a href="https://tracker.debian.org/pkg/golang-github-magiconair-properties">Tracker</a></td></tr>
<tr><td>github.com/mailgun/ttlmap</td><td>v0.0.0-20170619185759-c1c17f74874f</td><td>No</td><td></td></tr>
<tr><td>github.com/miekg/dns</td><td>v1.1.31</td><td>Yes (1.1.35)</td><td><a href="https://tracker.debian.org/pkg/golang-github-miekg-dns">Tracker</a></td></tr>
<tr><td>github.com/mitchellh/copystructure</td><td>v1.0.0</td><td>Yes (0.0~git20161013.0.5af94ae)</td><td><a href="https://tracker.debian.org/pkg/golang-github-mitchellh-copystructure">Tracker</a></td></tr>
<tr><td>github.com/mitchellh/hashstructure</td><td>v1.0.0</td><td>Yes (1.0.0)</td><td><a href="https://tracker.debian.org/pkg/golang-github-mitchellh-hashstructure">Tracker</a></td></tr>
<tr><td>github.com/mitchellh/mapstructure</td><td>v1.3.3</td><td>Yes (1.3.3)</td><td><a href="https://tracker.debian.org/pkg/golang-github-mitchellh-mapstructure">Tracker</a></td></tr>
<tr><td>github.com/morikuni/aec</td><td>v0.0.0-20170113033406-39771216ff4c</td><td>Yes (1.0.0)</td><td><a href="https://tracker.debian.org/pkg/golang-github-morikuni-aec">Tracker</a></td></tr>
<tr><td>github.com/opencontainers/go-digest</td><td>v1.0.0-rc1</td><td>Yes (1.0.0)</td><td><a href="https://tracker.debian.org/pkg/golang-github-opencontainers-go-digest">Tracker</a></td></tr>
<tr><td>github.com/opencontainers/image-spec</td><td>v1.0.1</td><td>Yes (1.0.1)</td><td><a href="https://tracker.debian.org/pkg/golang-github-opencontainers-image-spec">Tracker</a></td></tr>
<tr><td>github.com/opencontainers/runc</td><td>v1.0.0-rc10</td><td>No</td><td></td></tr>
<tr><td>github.com/opentracing/opentracing-go</td><td>v1.1.0</td><td>No</td><td></td></tr>
<tr><td>github.com/openzipkin-contrib/zipkin-go-opentracing</td><td>v0.4.5</td><td>No</td><td></td></tr>
<tr><td>github.com/openzipkin/zipkin-go</td><td>v0.2.2</td><td>Yes (0.1.5)</td><td><a href="https://tracker.debian.org/pkg/golang-github-openzipkin-zipkin-go">Tracker</a></td></tr>
<tr><td>github.com/patrickmn/go-cache</td><td>v2.1.0+incompatible</td><td>Yes (2.1.0)</td><td><a href="https://tracker.debian.org/pkg/golang-github-patrickmn-go-cache">Tracker</a></td></tr>
<tr><td>github.com/philhofer/fwd</td><td>v1.0.0</td><td>Yes (1.1.1)</td><td><a href="https://tracker.debian.org/pkg/golang-github-philhofer-fwd">Tracker</a></td></tr>
<tr><td>github.com/pires/go-proxyproto</td><td>v0.3.1</td><td>Yes (0.4.2)</td><td><a href="https://tracker.debian.org/pkg/golang-github-pires-go-proxyproto">Tracker</a></td></tr>
<tr><td>github.com/pmezard/go-difflib</td><td>v1.0.0</td><td>Yes (1.0.0)</td><td><a href="https://tracker.debian.org/pkg/golang-github-pmezard-go-difflib">Tracker</a></td></tr>
<tr><td>github.com/prometheus/client_golang</td><td>v1.3.0</td><td>No</td><td></td></tr>
<tr><td>github.com/prometheus/client_model</td><td>v0.2.0</td><td>No</td><td></td></tr>
<tr><td>github.com/rancher/go-rancher-metadata</td><td>v0.0.0-20200311180630-7f4c936a06ac</td><td>No</td><td></td></tr>
<tr><td>github.com/sirupsen/logrus</td><td>v1.7.0</td><td>Yes (1.7.0)</td><td><a href="https://tracker.debian.org/pkg/golang-logrus">Tracker</a></td></tr>
<tr><td>github.com/stretchr/testify</td><td>v1.7.0</td><td>Yes (1.6.1)</td><td><a href="https://tracker.debian.org/pkg/golang-testify">Tracker</a></td></tr>
<tr><td>github.com/stvp/go-udp-testing</td><td>v0.0.0-20191102171040-06b61409b154</td><td>Yes (0.0~git20150316.0.abcd331)</td><td><a href="https://tracker.debian.org/pkg/golang-github-stvp-go-udp-testing">Tracker</a></td></tr>
<tr><td>github.com/tinylib/msgp</td><td>v1.0.2</td><td>Yes (1.0.2)</td><td><a href="https://tracker.debian.org/pkg/golang-github-tinylib-msgp">Tracker</a></td></tr>
<tr><td>github.com/traefik/gziphandler</td><td>v1.1.2-0.20210212101304-175e0fad6888</td><td>No</td><td></td></tr>
<tr><td>github.com/traefik/paerser</td><td>v0.1.1</td><td>No</td><td></td></tr>
<tr><td>github.com/traefik/yaegi</td><td>v0.9.8</td><td>No (IN PROGRESS)</td><td></td><a href="https://bugs.debian.org/991757">ITP</a></tr>
<tr><td>github.com/uber/jaeger-client-go</td><td>v2.25.0+incompatible</td><td>No</td><td></td></tr>
<tr><td>github.com/uber/jaeger-lib</td><td>v2.2.0+incompatible</td><td>No</td><td></td></tr>
<tr><td>github.com/unrolled/render</td><td>v1.0.2</td><td>No</td><td></td></tr>
<tr><td>github.com/unrolled/secure</td><td>v1.0.7</td><td>No</td><td></td></tr>
<tr><td>github.com/vdemeester/shakers</td><td>v0.1.0</td><td>Yes (0.0~git20160210.0.24d7f1d)</td><td><a href="https://tracker.debian.org/pkg/golang-github-vdemeester-shakers">Tracker</a></td></tr>
<tr><td>github.com/vulcand/oxy</td><td>v1.1.0</td><td>No (in NEW)</td><td><a href="https://bugs.debian.org/991675">ITP</a></td></tr>
<tr><td>github.com/vulcand/predicate</td><td>v1.1.0</td><td>No (in NEW)</td><td><a href="https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=991658">ITP</a></td></tr>
<tr><td>go.elastic.co/apm</td><td>v1.7.0</td><td>No</td><td></td></tr>
<tr><td>go.elastic.co/apm/module/apmot</td><td>v1.7.0</td><td>No</td><td></td></tr>
<tr><td>golang.org/x/mod</td><td>v0.3.0</td><td>Yes (0.4.1)</td><td><a href="https://tracker.debian.org/pkg/golang-golang-x-mod">Tracker</a></td></tr>
<tr><td>golang.org/x/net</td><td>v0.0.0-20200904194848-62affa334b73</td><td>Yes (1.0.0)</td><td><a href="https://tracker.debian.org/pkg/golang-golang-x-net">Tracker</a></td></tr>
<tr><td>golang.org/x/time</td><td>v0.0.0-20200630173020-3af7569d3a1e</td><td>Yes (0.0+git20200630.3af7569)</td><td><a href="https://tracker.debian.org/pkg/golang-golang-x-time">Tracker</a></td></tr>
<tr><td>google.golang.org/grpc</td><td>v1.27.1</td><td>Yes (1.27.1)</td><td><a href="https://tracker.debian.org/pkg/golang-google-grpc">Tracker</a></td></tr>
<tr><td>gopkg.in/DataDog/dd-trace-go.v1</td><td>v1.19.0</td><td>No</td><td></td></tr>
<tr><td>gopkg.in/fsnotify.v1</td><td>v1.4.7</td><td>No</td><td></td></tr>
<tr><td>gopkg.in/jcmturner/goidentity.v3</td><td>v3.0.0 </td><td>No</td><td></td></tr>
<tr><td>gopkg.in/yaml.v3</td><td>v3.0.0-20200615113413-eeeca48fe776</td><td>No</td><td></td></tr>
<tr><td>k8s.io/api</td><td>v0.19.2</td><td>No</td><td></td></tr>
<tr><td>k8s.io/apimachinery</td><td>v0.19.2</td><td>No</td><td></td></tr>
<tr><td>k8s.io/client-go</td><td>v0.19.2</td><td>No</td><td></td></tr>
<tr><td>k8s.io/code-generator</td><td>v0.19.2</td><td>No</td><td></td></tr>
<tr><td>mvdan.cc/xurls/v2</td><td>v2.1.0</td><td>Yes/No (1.1.0)</td><td><a href="https://tracker.debian.org/pkg/golang-github-mvdan-xurls">Tracker</a></td></tr>
<tr><td>sigs.k8s.io/service-apis</td><td>v0.1.0</td><td>No</td><td></td></tr>
<tr><td>github.com/docker/engine</td><td>v1.4.2-0.20200204220554-5f6d6f3f2203</td><td>No</td><td></td></tr>
<tr><td>github.com/containous/go-http-auth</td><td>v0.4.1-0.20200324110947-a37a7636d23e</td><td>No</td><td></td></tr>
<tr><td>github.com/containous/check</td><td>v0.0.0-20170915194414-ca0bf163426a</td><td>No</td><td></td></tr>
<tr><td>github.com/containous/mux</td><td>v0.0.0-20181024131434-c33f32e26898</td><td>No</td><td></td></tr>
<tr><td>github.com/containous/minheap</td><td>v0.0.0-20190809180810-6e71eb837595</td><td>No</td><td></td></tr>
<tr><td>github.com/containous/multibuf</td><td>v0.0.0-20190809014333-8b6c9a7e6bba</td><td>No</td><td></td></tr>
</tbody>
</table>
