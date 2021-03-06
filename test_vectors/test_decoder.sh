#!/bin/bash

KOPRINA_HOME=..
BITSTREAMPATH=${KOPRINA_HOME}/test_vectors/bitstream/
OUTPUTPATH=${KOPRINA_HOME}/test_vectors/output/
DEC=net.java.sip.communicator.impl.neomedia.codec.audio.silk.Decoder
#DEC=net.java.sip.communicator.impl.neomedia.codec.audio.silk.DecoderTest
CLASSPATH=${KOPRINA_HOME}/lib/installer-exclude/fmj.jar:${KOPRINA_HOME}/lib/installer-exclude/jmf.jar:$CLASSPATH
#COMP=${KOPRINA_HOME}/test_vectors/signalcompare
COMP=util.SignalCompare

cd ../classes/


# 8 kHz

# 8 kHz, 60 ms, 8 kbps, complexity 0
PARAMS=8_kHz_60_ms_8_kbps
java -classpath ${CLASSPATH} ${DEC} ${BITSTREAMPATH}payload_${PARAMS}.bit tmp.pcm
java ${COMP} ${OUTPUTPATH}testvector_output_${PARAMS}.pcm tmp.pcm -fs 24000 > test_decoder_report.txt

java -classpath ${CLASSPATH} ${DEC} ${BITSTREAMPATH}payload_${PARAMS}.bit tmp.pcm -Fs_API 8000
java ${COMP} ${OUTPUTPATH}testvector_output_${PARAMS}_8_kHz_out.pcm tmp.pcm -fs 8000 >> test_decoder_report.txt

java -classpath ${CLASSPATH} ${DEC} ${BITSTREAMPATH}payload_${PARAMS}.bit tmp.pcm -Fs_API 12000
java ${COMP} ${OUTPUTPATH}testvector_output_${PARAMS}_12_kHz_out.pcm tmp.pcm -fs 12000 >> test_decoder_report.txt

java -classpath ${CLASSPATH} ${DEC} ${BITSTREAMPATH}payload_${PARAMS}.bit tmp.pcm -Fs_API 16000
java ${COMP} ${OUTPUTPATH}testvector_output_${PARAMS}_16_kHz_out.pcm tmp.pcm -fs 16000 >> test_decoder_report.txt

# 8 kHz, 40 ms, 12 kbps, complexity 1
PARAMS=8_kHz_40_ms_12_kbps
java -classpath ${CLASSPATH} ${DEC} ${BITSTREAMPATH}payload_${PARAMS}.bit tmp.pcm
java ${COMP} ${OUTPUTPATH}testvector_output_${PARAMS}.pcm tmp.pcm >> test_decoder_report.txt

# 8 kHz, 20 ms, 20 kbps, 10% packet loss, FEC
PARAMS=8_kHz_20_ms_20_kbps_10_loss_FEC
java -classpath ${CLASSPATH} ${DEC} ${BITSTREAMPATH}payload_${PARAMS}.bit tmp.pcm
java ${COMP} ${OUTPUTPATH}testvector_output_${PARAMS}.pcm tmp.pcm >> test_decoder_report.txt


# 12 kHz

# 12 kHz, 60 ms, 10 kbps, complexity 0
PARAMS=12_kHz_60_ms_10_kbps
java -classpath ${CLASSPATH} ${DEC} ${BITSTREAMPATH}payload_${PARAMS}.bit tmp.pcm
java ${COMP} ${OUTPUTPATH}testvector_output_${PARAMS}.pcm tmp.pcm >> test_decoder_report.txt

java -classpath ${CLASSPATH} ${DEC} ${BITSTREAMPATH}payload_${PARAMS}.bit tmp.pcm -Fs_API 12000
java ${COMP} ${OUTPUTPATH}testvector_output_${PARAMS}_12_kHz_out.pcm tmp.pcm -fs 12000 >> test_decoder_report.txt

java -classpath ${CLASSPATH} ${DEC} ${BITSTREAMPATH}payload_${PARAMS}.bit tmp.pcm -Fs_API 16000
java ${COMP} ${OUTPUTPATH}testvector_output_${PARAMS}_16_kHz_out.pcm tmp.pcm -fs 16000 >> test_decoder_report.txt

# 12 kHz, 40 ms, 16 kbps, complexity 1
PARAMS=12_kHz_40_ms_16_kbps
java -classpath ${CLASSPATH} ${DEC} ${BITSTREAMPATH}payload_${PARAMS}.bit tmp.pcm
java ${COMP} ${OUTPUTPATH}testvector_output_${PARAMS}.pcm tmp.pcm >> test_decoder_report.txt

# 12 kHz, 20 ms, 24 kbps, 10% packet loss, FEC
PARAMS=12_kHz_20_ms_24_kbps_10_loss_FEC
java -classpath ${CLASSPATH} ${DEC} ${BITSTREAMPATH}payload_${PARAMS}.bit tmp.pcm
java ${COMP} ${OUTPUTPATH}testvector_output_${PARAMS}.pcm tmp.pcm >> test_decoder_report.txt


# 16 kHz

# 16 kHz, 60 ms, 12 kbps, complexity 0
PARAMS=16_kHz_60_ms_12_kbps
java -classpath ${CLASSPATH} ${DEC} ${BITSTREAMPATH}payload_${PARAMS}.bit tmp.pcm
java ${COMP} ${OUTPUTPATH}testvector_output_${PARAMS}.pcm tmp.pcm >> test_decoder_report.txt

java -classpath ${CLASSPATH} ${DEC} ${BITSTREAMPATH}payload_${PARAMS}.bit tmp.pcm -Fs_API 16000
java ${COMP} ${OUTPUTPATH}testvector_output_${PARAMS}_16_kHz_out.pcm tmp.pcm -fs 16000 >> test_decoder_report.txt

# 16 kHz, 40 ms, 20 kbps, complexity 1
PARAMS=16_kHz_40_ms_20_kbps
java -classpath ${CLASSPATH} ${DEC} ${BITSTREAMPATH}payload_${PARAMS}.bit tmp.pcm
java ${COMP} ${OUTPUTPATH}testvector_output_${PARAMS}.pcm tmp.pcm >> test_decoder_report.txt

# 16 kHz, 20 ms, 32 kbps, 10% packet loss, FEC
PARAMS=16_kHz_20_ms_32_kbps_10_loss_FEC
java -classpath ${CLASSPATH} ${DEC} ${BITSTREAMPATH}payload_${PARAMS}.bit tmp.pcm
java ${COMP} ${OUTPUTPATH}testvector_output_${PARAMS}.pcm tmp.pcm >> test_decoder_report.txt


# 24 kHz

# 24 kHz, 60 ms, 16 kbps, complexity 0
PARAMS=24_kHz_60_ms_16_kbps
java -classpath ${CLASSPATH} ${DEC} ${BITSTREAMPATH}payload_${PARAMS}.bit tmp.pcm
java ${COMP} ${OUTPUTPATH}testvector_output_${PARAMS}.pcm tmp.pcm >> test_decoder_report.txt

# 24 kHz, 40 ms, 24 kbps, complexity 1
PARAMS=24_kHz_40_ms_24_kbps
java -classpath ${CLASSPATH} ${DEC} ${BITSTREAMPATH}payload_${PARAMS}.bit tmp.pcm
java ${COMP} ${OUTPUTPATH}testvector_output_${PARAMS}.pcm tmp.pcm >> test_decoder_report.txt

# 24 kHz, 20 ms, 40 kbps, 10% packet loss, FEC
PARAMS=24_kHz_20_ms_40_kbps_10_loss_FEC
java -classpath ${CLASSPATH} ${DEC} ${BITSTREAMPATH}payload_${PARAMS}.bit tmp.pcm
java ${COMP} ${OUTPUTPATH}testvector_output_${PARAMS}.pcm tmp.pcm >> test_decoder_report.txt

rm tmp.pcm
mv test_decoder_report.txt ../test_vectors/test_decoder_report.txt

echo ""
echo "The results have been saved as test_decoder_report.txt"
echo ""
