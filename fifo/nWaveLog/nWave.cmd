wvResizeWindow -win $_nWave1 4 9 1680 987
wvConvertFile -win $_nWave1 -o "/home/raid7_2/user04/r04133/fifo/fifo.vcd.fsdb" \
           "/home/raid7_2/user04/r04133/fifo/fifo.vcd"
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/raid7_2/user04/r04133/fifo/fifo.vcd.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/tb_fifo"
wvGetSignalSetScope -win $_nWave1 "/tb_fifo/fifo1"
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb_fifo/fifo1/clk} \
{/tb_fifo/fifo1/rst} \
{/tb_fifo/fifo1/write_en} \
{/tb_fifo/fifo1/read_en} \
{/tb_fifo/fifo1/counter\[200\]} \
{/tb_fifo/fifo1/empty} \
{/tb_fifo/fifo1/full} \
{/tb_fifo/fifo1/in\[700\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb_fifo/fifo1/clk} \
{/tb_fifo/fifo1/rst} \
{/tb_fifo/fifo1/write_en} \
{/tb_fifo/fifo1/read_en} \
{/tb_fifo/fifo1/counter\[200\]} \
{/tb_fifo/fifo1/empty} \
{/tb_fifo/fifo1/full} \
{/tb_fifo/fifo1/in\[700\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 148.884796 -snap {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 55.066979 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 195.113865 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 297.089752 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 394.986604 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 491.523778 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 93.137977 -snap {("G1" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/tb_fifo"
wvGetSignalSetScope -win $_nWave1 "/tb_fifo/fifo1"
wvGetSignalSetScope -win $_nWave1 "/tb_fifo/fifo1"
wvGetSignalSetScope -win $_nWave1 "/tb_fifo"
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb_fifo/fifo1/clk} \
{/tb_fifo/fifo1/rst} \
{/tb_fifo/fifo1/write_en} \
{/tb_fifo/fifo1/read_en} \
{/tb_fifo/fifo1/counter\[200\]} \
{/tb_fifo/fifo1/empty} \
{/tb_fifo/fifo1/full} \
{/tb_fifo/fifo1/in\[700\]} \
{/tb_fifo/counter} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb_fifo/fifo1/clk} \
{/tb_fifo/fifo1/rst} \
{/tb_fifo/fifo1/write_en} \
{/tb_fifo/fifo1/read_en} \
{/tb_fifo/fifo1/counter\[200\]} \
{/tb_fifo/fifo1/empty} \
{/tb_fifo/fifo1/full} \
{/tb_fifo/fifo1/in\[700\]} \
{/tb_fifo/counter} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 605.056932 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 642.448091 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 726.068319 -snap {("G1" 9)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 851.158741 -snap {("G1" 9)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvExit
