	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x74
	s_load_b128 s[4:7], s[0:1], 0x0
.Ltmp0:
	.loc	1 124 31 prologue_end           ; attention_backward.py:124:31
	v_and_b32_e32 v186, 15, v0
	v_lshrrev_b32_e32 v34, 4, v0
	v_lshrrev_b32_e32 v2, 5, v0
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s16, s2, 5
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v109, 0x60, v0
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v33, 3, v186
	.loc	1 158 26                        ; attention_backward.py:158:26
	s_lshl_b32 s19, s3, 11
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v3, s16, v2
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_add_i32 s17, s16, s19
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshrrev_b32_e32 v35, 1, v109
	v_dual_mov_b32 v90, 0xff800000 :: v_dual_and_b32 v253, 64, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v3
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v37, s16, v34
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v255, 4, v186
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v187, 32, v0
	v_lshrrev_b32_e32 v36, 2, v253
	s_mov_b32 s31, 0x31027000
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[152:153], null, s35, v34, v[33:34]
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v185, 31, v0
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_mul_i32 s33, s34, s17
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_mov_b32 s28, s4
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s4, 0x800, v37
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_lshlrev_b32_e32 v1, 3, v185
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_and_b32 s29, s5, 0xffff
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v36, v36, v186
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v39, 8, v186
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s3, s35, v33
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_mad_u64_u32 v[4:5], null, s34, v2, v[1:2]
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s2, s34, v1
	s_clause 0x3
	s_load_b256 s[8:15], s[0:1], 0x38
	s_load_b32 s38, s[0:1], 0x7c
	s_load_b64 s[36:37], s[0:1], 0x58
	s_load_b64 s[40:41], s[0:1], 0x10
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v86, 4, v0
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_lshl_add_u32 v111, s34, 3, v4
	v_mov_b32_e32 v3, v4
	v_lshl_add_u32 v2, s34, 4, v4
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v35, v86, v35
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_mad_u64_u32 v[154:155], null, s34, 12, v[4:5]
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_lshl_u32 v10, v111, s33, 1
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_mad_u64_u32 v[155:156], null, s34, 20, v[4:5]
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_lshl_u32 v1, v4, s33, 1
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_lshl_add_u32 v6, s34, 2, v4
	v_mad_u64_u32 v[158:159], null, s34, 24, v[4:5]
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v17, 0x80000000, v10 :: v_dual_add_nc_u32 v44, 0, v35
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_clause 0x4                            ; 24-byte Folded Spill
	scratch_store_b64 off, v[3:4], off offset:44
	scratch_store_b32 off, v2, off offset:56
	scratch_store_b32 off, v6, off offset:60
	scratch_store_b32 off, v36, off offset:1532
	scratch_store_b32 off, v44, off offset:52
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_lshl_u32 v2, v2, s33, 1
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_mad_u64_u32 v[159:160], null, s34, 28, v[4:5]
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_lshlrev_b32 v254, 9, v186
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v5, 0x80000000, v2 :: v_dual_lshlrev_b32 v38, 7, v253
	v_add_lshl_u32 v9, v6, s33, 1
	v_add_lshl_u32 v12, v155, s33, 1
	v_add_lshl_u32 v13, v158, s33, 1
	v_add_lshl_u32 v11, v154, s33, 1
	v_add_lshl_u32 v14, v159, s33, 1
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_lshlrev_b32 v40, 7, v187
	v_or3_b32 v73, v254, v38, v255
	v_xor_b32_e32 v37, 0x840, v35
	v_xor_b32_e32 v38, 0x1080, v35
	v_xor_b32_e32 v35, 0x18c0, v35
	v_cndmask_b32_e32 v15, 0x80000000, v12, vcc_lo
	v_cndmask_b32_e32 v21, 0x80000000, v13, vcc_lo
	v_cndmask_b32_e32 v25, 0x80000000, v11, vcc_lo
	v_cndmask_b32_e32 v29, 0x80000000, v14, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[1:4], v1, s[28:31], 0 offen
	buffer_load_b128 v[5:8], v5, s[28:31], 0 offen
	v_add_nc_u32_e32 v202, 0, v37
	v_add_nc_u32_e32 v200, 0, v35
	s_clause 0x5
	buffer_load_b128 v[9:12], v9, s[28:31], 0 offen
	buffer_load_b128 v[13:16], v15, s[28:31], 0 offen
	buffer_load_b128 v[17:20], v17, s[28:31], 0 offen
	buffer_load_b128 v[21:24], v21, s[28:31], 0 offen
	buffer_load_b128 v[25:28], v25, s[28:31], 0 offen
	buffer_load_b128 v[29:32], v29, s[28:31], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_or3_b32 v77, v39, v40, v255
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v36, s16, v36
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v39, 0, v73
	v_xad_u32 v40, v73, 16, 0
	v_add_nc_u32_e32 v201, 0, v38
	v_xad_u32 v41, v73, 32, 0
	v_xad_u32 v42, v73, 48, 0
	v_xad_u32 v43, v73, 64, 0
	v_xad_u32 v45, 0x50, v73, 0
	v_xad_u32 v61, 0x70, v73, 0
	v_xad_u32 v53, 0x60, v73, 0
	v_xad_u32 v74, 0x90, v73, 0
	v_xad_u32 v69, 0x80, v73, 0
	v_xad_u32 v75, 0xb0, v73, 0
	v_xad_u32 v76, 0xa0, v73, 0
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v36
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s1, s35, s17
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s0, s4, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt lgkmcnt(0)
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v110, 0x70, v0
	.loc	1 235 27                        ; attention_backward.py:235:27
	s_mul_f32 s39, s38, 0x3fb8aa3b
	s_mov_b64 s[4:5], s[14:15]
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt vmcnt(6)
	ds_store_b128 v44, v[5:8] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v202, v[9:12]
	s_waitcnt vmcnt(4)
	ds_store_b128 v202, v[13:16] offset:8192
	s_waitcnt vmcnt(3)
	ds_store_b128 v201, v[17:20]
	s_waitcnt vmcnt(2)
	ds_store_b128 v201, v[21:24] offset:8192
	s_waitcnt vmcnt(1)
	ds_store_b128 v200, v[25:28]
	s_waitcnt vmcnt(0)
	ds_store_b128 v200, v[29:32] offset:8192
	ds_store_b128 v44, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v39
	ds_load_b128 v[9:12], v39 offset:256
	ds_load_b128 v[5:8], v40
	ds_load_b128 v[13:16], v40 offset:256
	ds_load_b128 v[17:20], v41
	ds_load_b128 v[25:28], v41 offset:256
	ds_load_b128 v[21:24], v42
	ds_load_b128 v[29:32], v42 offset:256
	ds_load_b128 v[33:36], v43
	ds_load_b128 v[41:44], v43 offset:256
	ds_load_b128 v[37:40], v45
	ds_load_b128 v[45:48], v45 offset:256
	ds_load_b128 v[49:52], v53
	ds_load_b128 v[57:60], v53 offset:256
	ds_load_b128 v[53:56], v61
	ds_load_b128 v[61:64], v61 offset:256
	ds_load_b128 v[65:68], v69
	ds_load_b128 v[96:99], v69 offset:256
	ds_load_b128 v[69:72], v74
	ds_load_b128 v[100:103], v74 offset:256
	ds_load_b128 v[236:239], v75
	ds_load_b128 v[232:235], v76
	ds_load_b128 v[112:115], v76 offset:256
	ds_load_b128 v[116:119], v75 offset:256
	v_xad_u32 v74, 0xd0, v73, 0
	v_xad_u32 v75, 0xc0, v73, 0
	ds_load_b128 v[124:127], v74
	ds_load_b128 v[120:123], v75
	ds_load_b128 v[128:131], v75 offset:256
	ds_load_b128 v[132:135], v74 offset:256
	v_xad_u32 v74, 0xf0, v73, 0
	v_xad_u32 v73, 0xe0, v73, 0
	ds_load_b128 v[140:143], v74
	ds_load_b128 v[136:139], v73
	ds_load_b128 v[144:147], v73 offset:256
	ds_load_b128 v[148:151], v74 offset:256
	v_lshlrev_b32_e32 v73, 8, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or3_b32 v73, v254, v73, v255
	v_add_nc_u32_e32 v91, 0, v73
	v_xor_b32_e32 v74, 16, v73
	v_xor_b32_e32 v75, 32, v73
	v_xor_b32_e32 v76, 48, v73
	v_xor_b32_e32 v78, 64, v73
	v_xor_b32_e32 v79, 0x50, v73
	v_xor_b32_e32 v80, 0x60, v73
	v_xor_b32_e32 v81, 0x70, v73
	v_xor_b32_e32 v82, 0x80, v73
	v_xor_b32_e32 v83, 0x90, v73
	v_xor_b32_e32 v84, 0xa0, v73
	v_xor_b32_e32 v85, 0xb0, v73
	v_xor_b32_e32 v87, 0xc0, v73
	v_xor_b32_e32 v88, 0xd0, v73
	v_xor_b32_e32 v89, 0xe0, v73
	v_xor_b32_e32 v73, 0xf0, v73
	v_add_nc_u32_e32 v190, 0, v81
	v_add_nc_u32_e32 v191, 0, v82
	v_add_nc_u32_e32 v192, 0, v83
	v_add_nc_u32_e32 v193, 0, v84
	v_add_nc_u32_e32 v198, 0, v73
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v73, v152, s1, 1
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v92, 0, v74
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_lshl_add_u32 v74, s35, 3, v152
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v95, 0, v78
	v_add_nc_u32_e32 v188, 0, v79
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v73, 0x80000000, v73, s0
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v93, 0, v75
	v_add_nc_u32_e32 v94, 0, v76
	v_add_nc_u32_e32 v189, 0, v80
	ds_load_b128 v[164:167], v92
	ds_load_b128 v[160:163], v91
	.loc	1 166 23                        ; attention_backward.py:166:23
	buffer_load_b128 v[81:84], v73, s[28:31], 0 offen
	scratch_store_b32 off, v74, off offset:656 ; 4-byte Folded Spill
	v_add_lshl_u32 v74, v74, s1, 1
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[160:163], off offset:672
	scratch_store_b128 off, v[164:167], off offset:688
	v_cndmask_b32_e64 v78, 0x80000000, v74, s0
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_lshl_add_u32 v74, s35, 4, v152
	.loc	1 159 29                        ; attention_backward.py:159:29
	ds_load_b128 v[160:163], v91 offset:256
	ds_load_b128 v[164:167], v92 offset:256
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[160:163], off offset:704 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[164:167], off offset:720 ; 16-byte Folded Spill
	ds_load_b128 v[164:167], v94
	ds_load_b128 v[160:163], v93
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[160:163], off offset:736
	scratch_store_b128 off, v[164:167], off offset:752
	ds_load_b128 v[160:163], v93 offset:256
	ds_load_b128 v[164:167], v94 offset:256
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[160:163], off offset:768 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[164:167], off offset:784 ; 16-byte Folded Spill
	ds_load_b128 v[164:167], v188
	ds_load_b128 v[160:163], v95
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[160:163], off offset:800
	scratch_store_b128 off, v[164:167], off offset:816
	ds_load_b128 v[160:163], v95 offset:256
	ds_load_b128 v[164:167], v188 offset:256
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[160:163], off offset:832 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[164:167], off offset:848 ; 16-byte Folded Spill
	ds_load_b128 v[164:167], v190
	ds_load_b128 v[160:163], v189
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[160:163], off offset:864
	scratch_store_b128 off, v[164:167], off offset:880
	ds_load_b128 v[160:163], v189 offset:256
	ds_load_b128 v[164:167], v190 offset:256
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[160:163], off offset:896 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[164:167], off offset:912 ; 16-byte Folded Spill
	ds_load_b128 v[164:167], v192
	ds_load_b128 v[160:163], v191
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[160:163], off offset:928
	scratch_store_b128 off, v[164:167], off offset:944
	ds_load_b128 v[160:163], v191 offset:256
	ds_load_b128 v[164:167], v192 offset:256
	v_add_nc_u32_e32 v194, 0, v85
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[160:163], off offset:960 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[164:167], off offset:976 ; 16-byte Folded Spill
	ds_load_b128 v[164:167], v194
	ds_load_b128 v[160:163], v193
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[160:163], off offset:992
	scratch_store_b128 off, v[164:167], off offset:1008
	ds_load_b128 v[160:163], v193 offset:256
	ds_load_b128 v[164:167], v194 offset:256
	v_add_nc_u32_e32 v196, 0, v88
	v_add_nc_u32_e32 v195, 0, v87
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[160:163], off offset:1024 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[164:167], off offset:1040 ; 16-byte Folded Spill
	ds_load_b128 v[164:167], v196
	ds_load_b128 v[160:163], v195
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[160:163], off offset:1056
	scratch_store_b128 off, v[164:167], off offset:1072
	ds_load_b128 v[160:163], v195 offset:256
	ds_load_b128 v[164:167], v196 offset:256
	v_add_nc_u32_e32 v197, 0, v89
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[160:163], off offset:1088 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[164:167], off offset:1104 ; 16-byte Folded Spill
	ds_load_b128 v[164:167], v198
	ds_load_b128 v[160:163], v197
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[160:163], off offset:1120
	scratch_store_b128 off, v[164:167], off offset:1136
	ds_load_b128 v[160:163], v197 offset:256
	ds_load_b128 v[164:167], v198 offset:256
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[160:163], off offset:1152 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[164:167], off offset:1168 ; 16-byte Folded Spill
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(0)
	scratch_store_b128 off, v[81:84], off offset:192 ; 16-byte Folded Spill
	buffer_load_b128 v[81:84], v78, s[28:31], 0 offen
	scratch_store_b32 off, v74, off offset:660 ; 4-byte Folded Spill
	v_add_lshl_u32 v74, v74, s1, 1
	v_mov_b32_e32 v89, 0
	v_lshl_add_u32 v87, v186, 2, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v79, 0x80000000, v74, s0
	v_mov_b32_e32 v74, v152
	v_lshl_add_u32 v88, v185, 2, 0
	s_waitcnt vmcnt(0)
	scratch_store_b128 off, v[81:84], off offset:160 ; 16-byte Folded Spill
	buffer_load_b128 v[81:84], v79, s[28:31], 0 offen
	.loc	1 167 13                        ; attention_backward.py:167:13
	scratch_store_b64 off, v[74:75], off offset:648 ; 8-byte Folded Spill
	v_mad_u64_u32 v[75:76], null, s35, 24, v[152:153]
	v_mov_b32_e32 v152, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v74, v75
	.loc	1 166 23                        ; attention_backward.py:166:23
	scratch_store_b64 off, v[74:75], off offset:664 ; 8-byte Folded Spill
	v_add_lshl_u32 v74, v75, s1, 1
	s_mov_b32 s1, 0
	v_cndmask_b32_e64 v80, 0x80000000, v74, s0
	s_waitcnt vmcnt(0)
	scratch_store_b128 off, v[81:84], off offset:128 ; 16-byte Folded Spill
	buffer_load_b128 v[81:84], v80, s[28:31], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s29, s11, 0xffff
	s_mov_b32 s28, s10
	s_waitcnt vmcnt(0)
	scratch_store_b128 off, v[81:84], off offset:96 ; 16-byte Folded Spill
	s_clause 0x3
	buffer_load_b128 v[73:76], v73, s[28:31], 0 offen
	buffer_load_b128 v[104:107], v79, s[28:31], 0 offen
	buffer_load_b128 v[249:252], v78, s[28:31], 0 offen
	buffer_load_b128 v[80:83], v80, s[28:31], 0 offen
	v_xor_b32_e32 v78, v86, v110
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_b32 s29, s7, 0xffff
	s_mov_b32 s28, s6
	v_add_nc_u32_e32 v79, 0, v78
	v_xad_u32 v78, 0x880, v78, 0
	s_mov_b32 s6, 0x76543210
	s_waitcnt vmcnt(3)
	ds_store_b128 v79, v[73:76]
	s_waitcnt vmcnt(2)
	ds_store_b128 v79, v[104:107] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v78, v[249:252]
	s_waitcnt vmcnt(0)
	ds_store_b128 v78, v[80:83] offset:4096
	scratch_store_b128 off, v[80:83], off offset:64 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v108, off, off offset:52 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v78, 0, v77
	v_xad_u32 v79, v77, 16, 0
	ds_load_b128 v[160:163], v78
	ds_load_b128 v[164:167], v79
	v_xad_u32 v78, v77, 32, 0
	v_xad_u32 v79, v77, 48, 0
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[160:163], off offset:1184 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[164:167], off offset:1200 ; 16-byte Folded Spill
	ds_load_b128 v[160:163], v78
	ds_load_b128 v[164:167], v79
	v_xad_u32 v78, v77, 64, 0
	v_xad_u32 v79, 0x50, v77, 0
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[160:163], off offset:1216 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[164:167], off offset:1232 ; 16-byte Folded Spill
	ds_load_b128 v[160:163], v78
	ds_load_b128 v[164:167], v79
	v_xad_u32 v78, 0x60, v77, 0
	v_xad_u32 v79, 0x70, v77, 0
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[160:163], off offset:1248 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[164:167], off offset:1264 ; 16-byte Folded Spill
	ds_load_b128 v[160:163], v78
	ds_load_b128 v[164:167], v79
	v_xad_u32 v78, 0x80, v77, 0
	v_xad_u32 v79, 0x90, v77, 0
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[160:163], off offset:1280 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[164:167], off offset:1296 ; 16-byte Folded Spill
	ds_load_b128 v[160:163], v78
	ds_load_b128 v[164:167], v79
	v_xad_u32 v78, 0xa0, v77, 0
	v_xad_u32 v79, 0xb0, v77, 0
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[160:163], off offset:1312 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[164:167], off offset:1328 ; 16-byte Folded Spill
	ds_load_b128 v[160:163], v78
	ds_load_b128 v[164:167], v79
	v_xad_u32 v78, 0xc0, v77, 0
	v_xad_u32 v79, 0xd0, v77, 0
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[160:163], off offset:1344 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[164:167], off offset:1360 ; 16-byte Folded Spill
	ds_load_b128 v[160:163], v78
	ds_load_b128 v[164:167], v79
	v_xad_u32 v78, 0xe0, v77, 0
	v_xad_u32 v77, 0xf0, v77, 0
	ds_load_b128 v[78:81], v78
	ds_load_b128 v[82:85], v77
	v_lshlrev_b32_e32 v77, 1, v109
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[78:81], off offset:1408 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[82:85], off offset:1424 ; 16-byte Folded Spill
	v_add_nc_u32_e32 v199, v87, v77
	v_lshlrev_b32_e32 v85, 1, v253
	s_clause 0x4                            ; 44-byte Folded Spill
	scratch_store_b128 off, v[160:163], off offset:1376
	scratch_store_b128 off, v[164:167], off offset:1392
	scratch_store_b32 off, v202, off offset:32
	scratch_store_b32 off, v201, off offset:36
	scratch_store_b32 off, v200, off offset:40
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[77:78], off, off offset:44
	scratch_load_b32 v78, off, off offset:60
	.loc	1 230 21                        ; attention_backward.py:230:21
	s_or_b32 s0, s1, s19
	s_waitcnt vmcnt(4)
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[159:160], off offset:24
	scratch_store_b64 off, v[158:159], off offset:16
	s_waitcnt vmcnt(2)
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[155:156], off offset:8
	scratch_store_b64 off, v[154:155], off
	s_mul_i32 s0, s0, s34
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v77, s0, v77, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v78, s0, v78, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	v_cndmask_b32_e64 v153, 0x80000000, v78, s2
	v_add_lshl_u32 v78, s0, v111, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v161, 0x80000000, v78, s2
	v_add_lshl_u32 v78, s0, v154, 1
	v_cndmask_b32_e64 v169, 0x80000000, v78, s2
	scratch_load_b32 v78, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v78, s0, v78, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v81, 0x80000000, v78, s2
	v_add_lshl_u32 v78, s0, v155, 1
	v_cndmask_b32_e64 v157, 0x80000000, v78, s2
	v_add_lshl_u32 v78, s0, v158, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v165, 0x80000000, v78, s2
	v_add_lshl_u32 v78, s0, v159, 1
	v_cndmask_b32_e64 v173, 0x80000000, v78, s2
	s_clause 0x7
	buffer_load_b128 v[77:80], v77, s[28:31], 0 offen
	buffer_load_b128 v[81:84], v81, s[28:31], 0 offen
	buffer_load_b128 v[153:156], v153, s[28:31], 0 offen
	buffer_load_b128 v[157:160], v157, s[28:31], 0 offen
	buffer_load_b128 v[161:164], v161, s[28:31], 0 offen
	buffer_load_b128 v[165:168], v165, s[28:31], 0 offen
	buffer_load_b128 v[169:172], v169, s[28:31], 0 offen
	buffer_load_b128 v[173:176], v173, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b128 v108, v[77:80]
	s_waitcnt vmcnt(6)
	ds_store_b128 v108, v[81:84] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v202, v[153:156]
	s_waitcnt vmcnt(4)
	ds_store_b128 v202, v[157:160] offset:8192
	s_waitcnt vmcnt(3)
	ds_store_b128 v201, v[161:164]
	s_waitcnt vmcnt(2)
	ds_store_b128 v201, v[165:168] offset:8192
	s_waitcnt vmcnt(1)
	ds_store_b128 v200, v[169:172]
	s_waitcnt vmcnt(0)
	ds_store_b128 v200, v[173:176] offset:8192
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[204:207], v92
	ds_load_b128 v[200:203], v91
	ds_load_b128 v[208:211], v91 offset:256
	ds_load_b128 v[212:215], v92 offset:256
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v159, v152
	v_mov_b32_e32 v153, v152
	v_mov_b32_e32 v154, v152
	v_mov_b32_e32 v155, v152
	v_mov_b32_e32 v156, v152
	v_mov_b32_e32 v157, v152
	v_mov_b32_e32 v158, v152
	v_mov_b32_e32 v223, v159
	v_dual_mov_b32 v219, v155 :: v_dual_mov_b32 v218, v154
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v221, v157 :: v_dual_mov_b32 v220, v156
	v_dual_mov_b32 v222, v158 :: v_dual_mov_b32 v217, v153
	v_mov_b32_e32 v216, v152
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[200:207], v[1:8], v[216:223]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[204:207], v94
	ds_load_b128 v[200:203], v93
	ds_load_b128 v[224:227], v93 offset:256
	ds_load_b128 v[228:231], v94 offset:256
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[200:207], v[17:24], v[216:223]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[204:207], v188
	ds_load_b128 v[200:203], v95
	ds_load_b128 v[241:244], v95 offset:256
	ds_load_b128 v[245:248], v188 offset:256
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[200:207], v[33:40], v[216:223]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[204:207], v190
	ds_load_b128 v[200:203], v189
	ds_load_b128 v[77:80], v189 offset:256
	ds_load_b128 v[81:84], v190 offset:256
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[200:207], v[49:56], v[216:223]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[204:207], v192
	ds_load_b128 v[200:203], v191
	ds_load_b128 v[153:156], v191 offset:256
	ds_load_b128 v[157:160], v192 offset:256
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[200:207], v[65:72], v[216:223]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[204:207], v194
	ds_load_b128 v[200:203], v193
	ds_load_b128 v[161:164], v193 offset:256
	ds_load_b128 v[165:168], v194 offset:256
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[200:207], v[232:239], v[216:223]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[204:207], v196
	ds_load_b128 v[200:203], v195
	ds_load_b128 v[169:172], v195 offset:256
	ds_load_b128 v[173:176], v196 offset:256
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[200:207], v[120:127], v[216:223]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[204:207], v198
	ds_load_b128 v[200:203], v197
	ds_load_b128 v[177:180], v197 offset:256
	ds_load_b128 v[181:184], v198 offset:256
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[200:207], v[136:143], v[216:223]
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v200, off, off offset:40
	scratch_load_b32 v201, off, off offset:36
	scratch_load_b32 v202, off, off offset:32
	v_wmma_f32_16x16x16_bf16 v[216:223], v[208:215], v[9:16], v[216:223]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[224:231], v[25:32], v[216:223]
	v_wmma_f32_16x16x16_bf16 v[216:223], v[241:248], v[41:48], v[216:223]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[77:84], v[57:64], v[216:223]
	v_wmma_f32_16x16x16_bf16 v[216:223], v[153:160], v[96:103], v[216:223]
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[158:159], off, off offset:16
	scratch_load_b64 v[159:160], off, off offset:24
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp2:
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_wmma_f32_16x16x16_bf16 v[216:223], v[161:168], v[112:119], v[216:223]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[169:176], v[128:135], v[216:223]
	v_wmma_f32_16x16x16_bf16 v[216:223], v[177:184], v[144:151], v[216:223]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 235 17                        ; attention_backward.py:235:17
	v_dual_mul_f32 v77, s39, v216 :: v_dual_mul_f32 v78, s39, v217
	v_dual_mul_f32 v79, s39, v218 :: v_dual_mul_f32 v80, s39, v219
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v81, s39, v220 :: v_dual_mul_f32 v82, s39, v221
	v_dual_mul_f32 v83, s39, v222 :: v_dual_mul_f32 v84, s39, v223
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_dual_cndmask_b32 v77, 0xff800000, v77 :: v_dual_cndmask_b32 v78, 0xff800000, v78
	v_dual_cndmask_b32 v79, 0xff800000, v79 :: v_dual_cndmask_b32 v80, 0xff800000, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v81, 0xff800000, v81 :: v_dual_cndmask_b32 v82, 0xff800000, v82
	v_dual_cndmask_b32 v83, 0xff800000, v83 :: v_dual_cndmask_b32 v84, 0xff800000, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v153, v77, v78, v79
	v_max3_f32 v154, v80, v81, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v155, v83, v84
	v_max3_f32 v153, v153, v154, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v154, v153, s6, 0xfedcba98 op_sel:[1,0]
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v154, v154, v154
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_max_f32 v153, v153, v154 :: v_dual_add_nc_u32 v154, v88, v85
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	ds_store_b32 v199, v153
	v_mov_b32_e32 v153, v90
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v90, v154
.Ltmp7:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v155, v90, s6, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v90, v153, v90, v155
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v77, v77, v90
	v_sub_f32_e32 v78, v78, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v77, v77
	v_exp_f32_e32 v78, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp10:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v77, v77, v78
.Ltmp11:
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v78, v79, v90
	v_sub_f32_e32 v79, v80, v90
	v_sub_f32_e32 v80, v82, v90
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s0, 0xff800000, v153
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v78, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v79, v79
	v_exp_f32_e32 v80, v80
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v78, v78, v79 :: v_dual_sub_f32 v79, v81, v90
.Ltmp13:
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v81, v84, v90
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v77, v77, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp15:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v79, v79
	v_exp_f32_e32 v81, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v79, v79, v80
.Ltmp17:
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v80, v83, v90
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v80, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 70 is_stmt 1              ; attention_backward.py:260:70
	v_dual_sub_f32 v155, v153, v90 :: v_dual_add_f32 v80, v80, v81
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v155, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v78, v79, v80
	v_add_f32_e32 v77, v77, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v77, 0, v77, vcc_lo
.Ltmp19:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v78, v77, s6, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v77, v77, v78
	v_mov_b32_e32 v78, v89
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	ds_store_b32 v199, v77
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v77, v154
	s_waitcnt lgkmcnt(0)
	v_permlanex16_b32 v79, v77, s6, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v89, v77, v79
.Ltmp23:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v77, 0, v155, s0
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[154:155], off, off
	scratch_load_b64 v[155:156], off, off offset:8
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s0, s1, 32
	s_cmpk_lt_u32 s1, 0x7e0
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v89, v78, v77
	s_mov_b32 s1, s0
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	s_clause 0x4                            ; 80-byte Folded Reload
	scratch_load_b128 v[5:8], off, off offset:192
	scratch_load_b128 v[21:24], off, off offset:160
	scratch_load_b128 v[37:40], off, off offset:128
	scratch_load_b128 v[53:56], off, off offset:96
	scratch_load_b128 v[61:64], off, off offset:64
	v_mov_b16_e32 v1.l, 0
	.loc	1 171 28 is_stmt 1              ; attention_backward.py:171:28
	v_mov_b16_e32 v11.h, v74.l
	v_mov_b16_e32 v16.h, v73.l
	v_mov_b16_e32 v9.h, v76.l
	v_mov_b16_e64 v27.h, v250.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v4.l, v1.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v16.l, v1.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v3.l, v1.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v11.l, v1.l
	v_mov_b16_e64 v32.h, v249.l
	v_mov_b16_e32 v9.l, v1.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v19.l, v1.l
	v_mov_b16_e32 v20.l, v1.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v27.l, v1.l
	v_mov_b16_e32 v32.l, v1.l
	v_mov_b16_e32 v10.h, v75.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v2.l, v1.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v10.l, v1.l
	v_mov_b16_e64 v26.h, v251.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v18.l, v1.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v26.l, v1.l
	v_mov_b16_e32 v41.h, v107.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v33.l, v1.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v41.l, v1.l
	v_mov_b16_e32 v43.h, v105.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v35.l, v1.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v43.l, v1.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v51.l, v1.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v59.l, v1.l
	v_mov_b16_e64 v25.h, v252.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v17.l, v1.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v25.l, v1.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v34.l, v1.l
	v_mov_b16_e32 v36.l, v1.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v42.l, v1.l
	v_mov_b16_e32 v48.l, v1.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v49.l, v1.l
	v_mov_b16_e32 v50.l, v1.l
	v_mov_b16_e32 v52.l, v1.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v57.l, v1.l
	v_mov_b16_e32 v58.l, v1.l
	v_mov_b16_e32 v60.l, v1.l
	v_mov_b16_e32 v48.h, v104.l
	v_mov_b16_e32 v42.h, v106.l
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s0, 0x800000, v89
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cmp_eq_u32_e64 s1, 0, v109
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s6, s14
	s_mov_b32 s7, s15
	s_mov_b32 s20, 0
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s21, s20
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	s_mov_b32 s42, s14
	s_mov_b32 s43, s15
	s_mov_b32 s44, s20
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v3.h, v6.l
	v_mov_b16_e32 v4.h, v5.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v14, 0xffff0000, v74
	v_and_b32_e32 v15, 0xffff0000, v73
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v6, 0xffff0000, v6
	v_and_b32_e32 v5, 0xffff0000, v5
	v_mov_b16_e32 v1.h, v8.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v18.h, v23.l
	v_mov_b16_e32 v19.h, v22.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v6, v6, v14
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v20.h, v21.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v29, 0xffff0000, v251
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v34.h, v39.l
	v_and_b32_e32 v39, 0xffff0000, v39
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v45, 0xffff0000, v106
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v23, 0xffff0000, v23
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v6, v3, v11
.Ltmp25:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v5, v5, v15
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v2.h, v7.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v12, 0xffff0000, v76
	v_and_b32_e32 v13, 0xffff0000, v75
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v33.h, v40.l
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v5, v4, v16 :: v_dual_mul_f32 v4, v23, v29
.Ltmp27:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v8, 0xffff0000, v8
	v_and_b32_e32 v7, 0xffff0000, v7
	v_mov_b16_e32 v35.h, v38.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v4, v18, v26 :: v_dual_and_b32 v47, 0xffff0000, v104
.Ltmp29:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v7, v7, v13 :: v_dual_and_b32 v38, 0xffff0000, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v51.h, v54.l
	v_and_b32_e32 v54, 0xffff0000, v54
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v59.h, v62.l
	v_and_b32_e32 v62, 0xffff0000, v62
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v7, v2, v10 :: v_dual_mul_f32 v2, v8, v12
.Ltmp31:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v46, 0xffff0000, v105
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v17.h, v24.l
	v_mov_b16_e32 v49.h, v56.l
	v_mov_b16_e32 v52.h, v53.l
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v2, v1, v9
.Ltmp33:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v53, 0xffff0000, v53
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v28, 0xffff0000, v252
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v5, v5, v6 :: v_dual_and_b32 v44, 0xffff0000, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_f32_e32 v2, v7, v2
.Ltmp35:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v7, v54, v62 :: v_dual_and_b32 v24, 0xffff0000, v24
	v_dual_mul_f32 v15, v38, v46 :: v_dual_and_b32 v56, 0xffff0000, v56
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v7, v51, v59 :: v_dual_and_b32 v14, 0xffff0000, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp37:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v3, v24, v28 :: v_dual_and_b32 v22, 0xffff0000, v22
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v15, v35, v43 :: v_dual_and_b32 v40, 0xffff0000, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp39:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v1, v56, v14
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v30, 0xffff0000, v250
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v36.h, v37.l
	v_mov_b16_e32 v50.h, v55.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v11, v40, v44
	v_dual_mul_f32 v8, v22, v30 :: v_dual_and_b32 v21, 0xffff0000, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v37, 0xffff0000, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v31, 0xffff0000, v249
	v_mov_b16_e32 v60.h, v61.l
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v2, v5, v2 :: v_dual_and_b32 v61, 0xffff0000, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp41:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v16, v37, v47
	v_mul_f32_e32 v10, v21, v31
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v13, 0xffff0000, v63
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v8, v19, v27 :: v_dual_fmac_f32 v3, v17, v25
.Ltmp43:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v57.h, v64.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v10, v20, v32 :: v_dual_and_b32 v55, 0xffff0000, v55
.Ltmp45:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v58.h, v63.l
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v3, v4, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v16, v36, v48 :: v_dual_fmac_f32 v1, v49, v57
	v_add_f32_e32 v6, v10, v8
.Ltmp47:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v8, v53, v61
	v_dual_mul_f32 v4, v55, v13 :: v_dual_mov_b32 v5, v2
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v11, v33, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v3, v6, v3 :: v_dual_mul_f32 v12, v39, v45
	v_fmac_f32_e32 v4, v50, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v28, 0
	v_lshlrev_b32_e32 v22, 6, v0
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v1, v4, v1 :: v_dual_and_b32 v24, 16, v0
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v4, v3
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v8, v52, v60
	v_dual_fmac_f32 v12, v34, v42 :: v_dual_mov_b32 v95, v28
	v_or_b32_e32 v25, v254, v255
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v7, v8, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v9, v12, v11
.Ltmp55:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_nc_u32_e32 v11, v87, v253
	v_xor_b32_e32 v14, 0x50, v25
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v3, v3, v4
	v_dual_add_f32 v1, v7, v1 :: v_dual_add_f32 v6, v16, v15
	v_xor_b32_e32 v15, 0x60, v25
	v_xor_b32_e32 v16, 0x70, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v4, v3 :: v_dual_mov_b32 v7, v1
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v6, v6, v9
	v_xor_b32_e32 v17, 0x80, v25
	v_xor_b32_e32 v18, 0x90, v25
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v2, v2, v5
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v5, v6
	v_xor_b32_e32 v19, 0xa0, v25
	v_xor_b32_e32 v20, 0xb0, v25
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v1, v1, v7
	v_xor_b32_e32 v21, 0xc0, v25
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_xor_b32_e32 v23, 0xd0, v25
	v_mov_b32_e32 v29, v28
	v_dual_mov_b32 v96, v28 :: v_dual_lshlrev_b32 v27, 1, v186
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v5, v6, v5
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v8, v2
.Ltmp66:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v6, 0, 32, s0
	v_mov_b32_e32 v53, v28
	v_mov_b32_e32 v55, v28
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v7, v5
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v6, v89, v6
	v_mov_b32_e32 v57, v28
	v_mov_b32_e32 v59, v28
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v2, v2, v8
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v45, v28
	v_mov_b32_e32 v47, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v5, v5, v7
	v_mov_b32_e32 v49, v28
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v51, v28
	v_mov_b32_e32 v37, v28
	v_mov_b32_e32 v38, v28
	v_mov_b32_e32 v39, v28
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v1, v1, v8
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v9, v2
.Ltmp76:
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v8, s16, v185
	v_mov_b32_e32 v40, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v41, v28 :: v_dual_mov_b32 v10, v1
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp79:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v4, v6
	v_cndmask_b32_e64 v6, 0, 0x42000000, s0
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v2, v2, v9 :: v_dual_mov_b32 v7, v3
.Ltmp82:
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v89
	v_mov_b32_e32 v42, v28
	v_mov_b32_e32 v43, v28
	v_mov_b32_e32 v30, v28
	v_mov_b32_e32 v32, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 264 43 is_stmt 0              ; attention_backward.py:264:43
	v_dual_sub_f32 v4, v4, v6 :: v_dual_mov_b32 v9, v5
.Ltmp83:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v6, v2
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v31, v28 :: v_dual_add_f32 v4, v90, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v33, v28
	v_mov_b32_e32 v69, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v34, v28 :: v_dual_add_f32 v5, v5, v9
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v3, v3, v7
	v_add_f32_e32 v7, v1, v10
.Ltmp85:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v10, 0, v4, s0
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s0, 0x800, v8
	v_dual_mov_b32 v35, v28 :: v_dual_add_nc_u32 v8, 0, v110
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v12, v7
	v_mov_b32_e32 v4, v5
.Ltmp87:
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_store_b32 v11, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v13, v88
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v1, v2, v6
.Ltmp90:
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshrrev_b32_e32 v6, 1, v0
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v9, v3
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp92:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s0, s1, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v97, v28 :: v_dual_and_b32 v6, 12, v6
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v94, v28
	v_mov_b32_e32 v99, v28
	v_mov_b32_e32 v93, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v71, v28 :: v_dual_add_f32 v2, v3, v9
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v3, v5, v4
	v_add_f32_e32 v4, v7, v12
.Ltmp95:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_lshl_u32 v5, s17, v185, 2
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_and_b32_e32 v7, 0x70, v86
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v9, 1, v187
	v_xor_b32_e32 v12, 48, v25
	v_mov_b32_e32 v73, v28
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_add3_u32 v6, 0, v7, v6
	v_mov_b32_e32 v98, v28
	v_mov_b32_e32 v61, v28
	v_mov_b32_e32 v100, v28
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v13, v5, s[12:15], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v6, v6
	scratch_store_b32 off, v9, off offset:1536 ; 4-byte Folded Spill
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or3_b32 v9, s16, v186, v9
	v_xor_b32_e32 v13, 64, v25
	v_mov_b32_e32 v65, v28
	v_mov_b32_e32 v63, v28
	v_mov_b32_e32 v67, v28
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s0, 0x800, v9
	v_mov_b32_e32 v68, v28
	v_mov_b32_e32 v36, v28
	v_mov_b32_e32 v70, v28
	v_mov_b32_e32 v75, v28
	v_mov_b32_e32 v72, v28
	v_mov_b32_e32 v74, v28
	v_mov_b32_e32 v60, v28
	v_mov_b32_e32 v62, v28
	v_mov_b32_e32 v64, v28
	v_mov_b32_e32 v66, v28
	v_mov_b32_e32 v52, v28
	v_mov_b32_e32 v54, v28
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v6, v5, s[4:7], 0 offen
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_and_b32_e32 v5, 8, v0
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_lshl_add_u32 v6, v187, 1, v87
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v11, v10
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_lshrrev_b32_e32 v9, 1, v5
	.loc	1 345 58                        ; attention_backward.py:345:58
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v245, v6
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_lshrrev_b32_e32 v6, 2, v187
	v_add_nc_u32_e32 v9, 0, v9
	v_lshlrev_b32_e32 v10, 5, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[1:4]
	v_add3_u32 v1, v9, v6, v7
	v_and_or_b32 v9, 0xf00, v10, v7
	v_and_b32_e32 v2, 3, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v247, v1
	v_xor_b32_e32 v1, 0x1010, v9
	v_lshlrev_b32_e32 v3, 12, v2
	v_lshlrev_b32_e32 v4, 4, v2
	v_lshl_or_b32 v5, v5, 1, v187
	v_and_b32_e32 v6, 0x80, v10
	v_lshlrev_b32_e32 v2, 10, v2
	v_and_b32_e32 v10, 0x180, v10
	v_and_b32_e32 v0, 48, v0
	v_and_or_b32 v7, 0xe00, v22, v7
	v_xor_b32_e32 v8, 0x2020, v9
	v_xor_b32_e32 v5, v5, v4
	v_or3_b32 v26, v10, v2, v4
	v_add_nc_u32_e32 v4, 0, v85
	v_xor_b32_e32 v0, v7, v0
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v9, off offset:1440
	scratch_store_b32 off, v25, off offset:1444
	scratch_store_b32 off, v26, off offset:1448
	v_xor_b32_e32 v9, 0x3030, v9
	v_add3_u32 v3, 0, v3, v6
	v_xor_b32_e32 v6, 16, v25
	v_xor_b32_e32 v11, 32, v25
	v_xor_b32_e32 v22, 0xe0, v25
	v_xor_b32_e32 v2, 0xf0, v25
	v_xor_b32_e32 v25, 32, v26
	v_add_nc_u32_e32 v0, v4, v0
	scratch_store_b32 off, v1, off offset:1452 ; 4-byte Folded Spill
	v_dual_mov_b32 v56, v28 :: v_dual_add_nc_u32 v1, 0, v8
	v_mov_b32_e32 v58, v28
	scratch_store_b32 off, v0, off offset:1520 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v25
	scratch_store_b32 off, v1, off offset:1456 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v9
	scratch_store_b32 off, v24, off offset:1540 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v10, 2, v24
	v_lshrrev_b32_e32 v24, 1, v253
	v_mov_b32_e32 v44, v28
	scratch_store_b32 off, v1, off offset:1460 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v6
	v_xor_b32_e32 v7, 16, v26
	v_xor_b32_e32 v26, 48, v26
	v_add3_u32 v10, 0, v10, v187
	v_add_nc_u32_e32 v24, 0, v24
	scratch_store_b32 off, v1, off offset:1464 ; 4-byte Folded Spill
	v_dual_mov_b32 v46, v28 :: v_dual_add_nc_u32 v1, 0, v11
	v_add_nc_u32_e32 v244, v3, v5
	v_add_nc_u32_e32 v246, 0, v7
	v_add_nc_u32_e32 v90, 0, v26
	scratch_store_b32 off, v1, off offset:1468 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v12
	v_add_nc_u32_e32 v91, v10, v27
	v_add_nc_u32_e32 v92, v24, v27
	v_mov_b32_e32 v48, v28
	v_mov_b32_e32 v50, v28
	scratch_store_b32 off, v1, off offset:1472 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v13
	v_mov_b32_e32 v13, v28
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1524
	scratch_store_b32 off, v1, off offset:1476
	v_add_nc_u32_e32 v1, 0, v14
	v_mov_b32_e32 v14, v28
	scratch_store_b32 off, v1, off offset:1480 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v15
	v_mov_b32_e32 v15, v28
	scratch_store_b32 off, v1, off offset:1484 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v16
	v_mov_b32_e32 v16, v28
	scratch_store_b32 off, v1, off offset:1488 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v17
	v_mov_b32_e32 v17, v28
	scratch_store_b32 off, v1, off offset:1492 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v18
	v_mov_b32_e32 v18, v28
	scratch_store_b32 off, v1, off offset:1496 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v19
	v_mov_b32_e32 v19, v28
	scratch_store_b32 off, v1, off offset:1500 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v20
	v_mov_b32_e32 v20, v28
	scratch_store_b32 off, v1, off offset:1528 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v21
	scratch_store_b32 off, v1, off offset:1504 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v23
	scratch_store_b32 off, v1, off offset:1508 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v22
	scratch_store_b32 off, v1, off offset:1512 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v2
	scratch_store_b32 off, v1, off offset:1516 ; 4-byte Folded Spill
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[0:1], off, off offset:44
	scratch_load_b32 v1, off, off offset:60
	.loc	1 317 21 is_stmt 1              ; attention_backward.py:317:21
	s_or_b32 s1, s44, s19
	s_clause 0xf                            ; 256-byte Folded Spill
	scratch_store_b128 off, v[93:96], off offset:288
	scratch_store_b128 off, v[97:100], off offset:304
	scratch_store_b128 off, v[68:71], off offset:256
	scratch_store_b128 off, v[72:75], off offset:272
	scratch_store_b128 off, v[60:63], off offset:224
	scratch_store_b128 off, v[64:67], off offset:240
	scratch_store_b128 off, v[52:55], off offset:192
	scratch_store_b128 off, v[56:59], off offset:208
	scratch_store_b128 off, v[44:47], off offset:160
	scratch_store_b128 off, v[48:51], off offset:176
	scratch_store_b128 off, v[36:39], off offset:128
	scratch_store_b128 off, v[40:43], off offset:144
	scratch_store_b128 off, v[13:16], off offset:96
	scratch_store_b128 off, v[17:20], off offset:112
	scratch_store_b128 off, v[28:31], off offset:64
	scratch_store_b128 off, v[32:35], off offset:80
	s_mul_i32 s4, s1, s34
	.loc	1 386 21                        ; attention_backward.py:386:21
	s_mul_i32 s1, s1, s35
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_dual_mov_b32 v229, s27 :: v_dual_mov_b32 v228, s26
	v_dual_mov_b32 v225, s23 :: v_dual_mov_b32 v226, s24
	v_dual_mov_b32 v223, s21 :: v_dual_mov_b32 v224, s22
	v_dual_mov_b32 v222, s20 :: v_dual_mov_b32 v227, s25
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v0, s4, v0, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s4, v1, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	v_cndmask_b32_e64 v4, 0x80000000, v1, s2
	v_add_lshl_u32 v1, s4, v111, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v8, 0x80000000, v1, s2
	v_add_lshl_u32 v1, s4, v154, 1
	v_cndmask_b32_e64 v12, 0x80000000, v1, s2
	scratch_load_b32 v1, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s4, v1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v16, 0x80000000, v1, s2
	v_add_lshl_u32 v1, s4, v155, 1
	v_cndmask_b32_e64 v20, 0x80000000, v1, s2
	v_add_lshl_u32 v1, s4, v158, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v24, 0x80000000, v1, s2
	v_add_lshl_u32 v1, s4, v159, 1
	v_cndmask_b32_e64 v28, 0x80000000, v1, s2
	s_clause 0x7
	buffer_load_b128 v[0:3], v0, s[28:31], 0 offen
	buffer_load_b128 v[4:7], v4, s[28:31], 0 offen
	buffer_load_b128 v[8:11], v8, s[28:31], 0 offen
	buffer_load_b128 v[12:15], v12, s[28:31], 0 offen
	buffer_load_b128 v[16:19], v16, s[28:31], 0 offen
	buffer_load_b128 v[20:23], v20, s[28:31], 0 offen
	buffer_load_b128 v[24:27], v24, s[28:31], 0 offen
	buffer_load_b128 v[28:31], v28, s[28:31], 0 offen
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v40, off, off offset:1440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v32.l, v0.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v32.h, v4.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v33.l, v8.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v33.h, v12.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v34.l, v16.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v34.h, v20.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v35.l, v24.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v35.h, v28.l
	v_mov_b16_e32 v36.l, v2.l
	v_mov_b16_e32 v36.h, v6.l
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v40, 0, v40
	v_mov_b16_e32 v37.l, v10.l
	v_mov_b16_e32 v37.h, v14.l
	v_mov_b16_e32 v38.l, v18.l
	v_mov_b16_e32 v38.h, v22.l
	v_mov_b16_e32 v39.l, v26.l
	v_mov_b16_e32 v39.h, v30.l
	ds_store_b128 v40, v[32:35]
	ds_store_b128 v40, v[36:39] offset:128
	scratch_load_b32 v40, off, off offset:1452 ; 4-byte Folded Reload
	v_mov_b16_e32 v32.l, v0.h
	v_mov_b16_e32 v32.h, v4.h
	v_mov_b16_e32 v33.l, v8.h
	v_mov_b16_e32 v33.h, v12.h
	v_mov_b16_e32 v34.l, v16.h
	v_mov_b16_e32 v34.h, v20.h
	v_mov_b16_e32 v35.l, v24.h
	v_mov_b16_e32 v35.h, v28.h
	v_mov_b16_e32 v36.l, v2.h
	v_mov_b16_e32 v36.h, v6.h
	v_mov_b16_e32 v37.l, v10.h
	v_mov_b16_e32 v37.h, v14.h
	v_mov_b16_e32 v38.l, v18.h
	v_mov_b16_e32 v38.h, v22.h
	v_mov_b16_e32 v39.l, v26.h
	v_mov_b16_e32 v39.h, v30.h
	s_waitcnt vmcnt(0)
	ds_store_b128 v40, v[32:35]
	ds_store_b128 v40, v[36:39] offset:128
	scratch_load_b32 v40, off, off offset:1456 ; 4-byte Folded Reload
	v_mov_b16_e32 v32.l, v1.l
	v_mov_b16_e32 v32.h, v5.l
	v_mov_b16_e32 v33.l, v9.l
	v_mov_b16_e32 v33.h, v13.l
	v_mov_b16_e32 v34.l, v17.l
	v_mov_b16_e32 v34.h, v21.l
	v_mov_b16_e32 v35.l, v25.l
	v_mov_b16_e32 v35.h, v29.l
	v_mov_b16_e32 v36.l, v3.l
	v_mov_b16_e32 v36.h, v7.l
	v_mov_b16_e32 v37.l, v11.l
	v_mov_b16_e32 v37.h, v15.l
	v_mov_b16_e32 v38.l, v19.l
	v_mov_b16_e32 v38.h, v23.l
	v_mov_b16_e32 v39.l, v27.l
	v_mov_b16_e32 v39.h, v31.l
	s_waitcnt vmcnt(0)
	ds_store_b128 v40, v[32:35]
	ds_store_b128 v40, v[36:39] offset:128
	scratch_load_b32 v40, off, off offset:1460 ; 4-byte Folded Reload
	v_mov_b16_e32 v32.l, v1.h
	v_mov_b16_e32 v32.h, v5.h
	v_mov_b16_e32 v33.l, v9.h
	v_mov_b16_e32 v33.h, v13.h
	v_mov_b16_e32 v34.l, v17.h
	v_mov_b16_e32 v34.h, v21.h
	v_mov_b16_e32 v35.l, v25.h
	v_mov_b16_e32 v35.h, v29.h
	v_mov_b16_e32 v36.l, v3.h
	v_mov_b16_e32 v36.h, v7.h
	v_mov_b16_e32 v37.l, v11.h
	v_mov_b16_e32 v37.h, v15.h
	v_mov_b16_e32 v38.l, v19.h
	v_mov_b16_e32 v38.h, v23.h
	v_mov_b16_e32 v39.l, v27.h
	v_mov_b16_e32 v39.h, v31.h
	s_waitcnt vmcnt(0)
	ds_store_b128 v40, v[32:35]
	ds_store_b128 v40, v[36:39] offset:128
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[101:104], v244
	ds_load_b128 v[80:83], v244 offset:64
	ds_load_b128 v[130:133], v244 offset:1024
	ds_load_b128 v[176:179], v244 offset:1088
	ds_load_b128 v[32:35], v244 offset:2048
	ds_load_b128 v[86:89], v244 offset:3328
	ds_load_b128 v[107:110], v244 offset:3392
	ds_load_b128 v[126:129], v244 offset:3584
	ds_load_b128 v[232:235], v244 offset:3648
	ds_load_b128 v[182:185], v244 offset:3840
	ds_load_b128 v[218:221], v244 offset:3904
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(5)
	v_mov_b16_e32 v85.h, v87.l
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e32 v106.h, v108.l
	s_waitcnt lgkmcnt(3)
	v_mov_b16_e32 v125.h, v127.l
	s_waitcnt lgkmcnt(2)
	v_mov_b16_e64 v231.h, v233.l
	.loc	1 323 31                        ; attention_backward.py:323:31
	scratch_store_b128 off, v[32:35], off offset:632 ; 16-byte Folded Spill
	ds_load_b128 v[32:35], v244 offset:2112
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(2)
	v_mov_b16_e64 v181.h, v183.l
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e64 v217.h, v219.l
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[32:35], off offset:576 ; 16-byte Folded Spill
	ds_load_b128 v[32:35], v244 offset:256
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[32:35], off offset:544 ; 16-byte Folded Spill
	ds_load_b128 v[32:35], v244 offset:320
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[32:35], off offset:512 ; 16-byte Folded Spill
	ds_load_b128 v[120:123], v244 offset:1280
	ds_load_b128 v[212:215], v244 offset:1344
	ds_load_b128 v[32:35], v244 offset:2304
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(2)
	v_mov_b16_e32 v84.h, v121.l
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e64 v105.h, v213.l
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[32:35], off offset:560 ; 16-byte Folded Spill
	ds_load_b128 v[32:35], v244 offset:2368
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[32:35], off offset:528 ; 16-byte Folded Spill
	ds_load_b128 v[32:35], v244 offset:512
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[32:35], off offset:464 ; 16-byte Folded Spill
	ds_load_b128 v[32:35], v244 offset:576
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[32:35], off offset:416 ; 16-byte Folded Spill
	ds_load_b128 v[32:35], v244 offset:1536
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[32:35], off offset:480 ; 16-byte Folded Spill
	ds_load_b128 v[32:35], v244 offset:1600
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[32:35], off offset:432 ; 16-byte Folded Spill
	ds_load_b128 v[32:35], v244 offset:2560
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[32:35], off offset:496 ; 16-byte Folded Spill
	ds_load_b128 v[32:35], v244 offset:2624
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[32:35], off offset:448 ; 16-byte Folded Spill
	ds_load_b128 v[32:35], v244 offset:768
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[32:35], off offset:368 ; 16-byte Folded Spill
	ds_load_b128 v[32:35], v244 offset:832
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[32:35], off offset:320 ; 16-byte Folded Spill
	ds_load_b128 v[32:35], v244 offset:1792
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[32:35], off offset:384 ; 16-byte Folded Spill
	ds_load_b128 v[32:35], v244 offset:1856
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[32:35], off offset:336 ; 16-byte Folded Spill
	ds_load_b128 v[32:35], v244 offset:2816
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[32:35], off offset:400 ; 16-byte Folded Spill
	ds_load_b128 v[32:35], v244 offset:2880
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[32:35], off offset:352 ; 16-byte Folded Spill
	ds_load_b128 v[76:79], v244 offset:3072
	ds_load_b128 v[32:35], v244 offset:3136
	scratch_store_b128 off, v[26:29], off offset:592 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 24-byte Folded Spill
	scratch_store_b128 off, v[30:33], off offset:608
	scratch_store_b64 off, v[34:35], off offset:624
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v32, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v32, v[0:3]
	ds_store_b128 v32, v[16:19] offset:8192
	ds_store_b128 v202, v[4:7]
	ds_store_b128 v202, v[20:23] offset:8192
	ds_store_b128 v201, v[8:11]
	ds_store_b128 v201, v[24:27] offset:8192
	ds_store_b128 v200, v[12:15]
	ds_store_b128 v200, v[28:31] offset:8192
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x7                            ; 80-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1444
	scratch_load_b32 v1, off, off offset:1464
	scratch_load_b32 v2, off, off offset:1468
	scratch_load_b32 v3, off, off offset:1472
	scratch_load_b128 v[4:7], off, off offset:672
	scratch_load_b128 v[8:11], off, off offset:688
	scratch_load_b128 v[12:15], off, off offset:736
	scratch_load_b128 v[16:19], off, off offset:752
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v75.h, v77.l
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v0, 0, v0
	s_waitcnt vmcnt(6)
	ds_load_b128 v[240:243], v1
	s_waitcnt vmcnt(5)
	ds_load_b128 v[248:251], v2
	s_waitcnt vmcnt(4)
	ds_load_b128 v[252:255], v3
	ds_load_b128 v[168:171], v0 offset:256
	ds_load_b128 v[172:175], v1 offset:256
	ds_load_b128 v[160:163], v2 offset:256
	ds_load_b128 v[164:167], v3 offset:256
	ds_load_b128 v[236:239], v0
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt vmcnt(2) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[236:243], v[4:11], v[222:229]
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[248:255], v[12:19], v[112:119]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[236:239], v0 offset:8192
	ds_load_b128 v[240:243], v1 offset:8192
	ds_load_b128 v[248:251], v2 offset:8192
	ds_load_b128 v[252:255], v3 offset:8192
	ds_load_b128 v[204:207], v0 offset:8448
	ds_load_b128 v[208:211], v1 offset:8448
	ds_load_b128 v[48:51], v2 offset:8448
	ds_load_b128 v[52:55], v3 offset:8448
	scratch_load_b32 v1, off, off offset:1480 ; 4-byte Folded Reload
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[188:195], v[236:243], v[4:11], v[222:229]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[2:5], off, off offset:800
	scratch_load_b128 v[6:9], off, off offset:816
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[188:195], v[248:255], v[12:19], v[188:195]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v12, off, off offset:1516
	scratch_load_b32 v0, off, off offset:1476
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt vmcnt(0)
	ds_load_b128 v[236:239], v0
	ds_load_b128 v[248:251], v0 offset:256
	ds_load_b128 v[252:255], v1 offset:256
	ds_load_b128 v[240:243], v1
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[236:243], v[2:9], v[112:119]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[240:243], v1 offset:8192
	ds_load_b128 v[236:239], v0 offset:8192
	ds_load_b128 v[136:139], v0 offset:8448
	ds_load_b128 v[140:143], v1 offset:8448
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1488
	scratch_load_b32 v0, off, off offset:1484
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[188:195], v[236:243], v[2:9], v[188:195]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[2:5], off, off offset:864
	scratch_load_b128 v[6:9], off, off offset:880
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt vmcnt(2)
	ds_load_b128 v[236:239], v0
	ds_load_b128 v[144:147], v0 offset:256
	ds_load_b128 v[148:151], v1 offset:256
	ds_load_b128 v[240:243], v1
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[236:243], v[2:9], v[112:119]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[240:243], v1 offset:8192
	ds_load_b128 v[236:239], v0 offset:8192
	ds_load_b128 v[152:155], v0 offset:8448
	ds_load_b128 v[156:159], v1 offset:8448
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1496
	scratch_load_b32 v0, off, off offset:1492
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[188:195], v[236:243], v[2:9], v[188:195]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[2:5], off, off offset:928
	scratch_load_b128 v[6:9], off, off offset:944
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt vmcnt(2)
	ds_load_b128 v[236:239], v0
	ds_load_b128 v[93:96], v0 offset:256
	ds_load_b128 v[97:100], v1 offset:256
	ds_load_b128 v[240:243], v1
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[236:243], v[2:9], v[112:119]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[240:243], v1 offset:8192
	ds_load_b128 v[236:239], v0 offset:8192
	ds_load_b128 v[196:199], v0 offset:8448
	ds_load_b128 v[200:203], v1 offset:8448
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1528
	scratch_load_b32 v0, off, off offset:1500
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[188:195], v[236:243], v[2:9], v[188:195]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[2:5], off, off offset:992
	scratch_load_b128 v[6:9], off, off offset:1008
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt vmcnt(2)
	ds_load_b128 v[236:239], v0
	ds_load_b128 v[56:59], v0 offset:256
	ds_load_b128 v[60:63], v1 offset:256
	ds_load_b128 v[240:243], v1
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[236:243], v[2:9], v[112:119]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[240:243], v1 offset:8192
	ds_load_b128 v[236:239], v0 offset:8192
	ds_load_b128 v[32:35], v0 offset:8448
	ds_load_b128 v[36:39], v1 offset:8448
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1508
	scratch_load_b32 v0, off, off offset:1504
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[188:195], v[236:243], v[2:9], v[188:195]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[2:5], off, off offset:1056
	scratch_load_b128 v[6:9], off, off offset:1072
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt vmcnt(2)
	ds_load_b128 v[236:239], v0
	ds_load_b128 v[40:43], v0 offset:256
	ds_load_b128 v[44:47], v1 offset:256
	ds_load_b128 v[240:243], v1
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[236:243], v[2:9], v[112:119]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[240:243], v1 offset:8192
	ds_load_b128 v[236:239], v0 offset:8192
	ds_load_b128 v[21:24], v0 offset:8448
	ds_load_b128 v[25:28], v1 offset:8448
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[188:195], v[236:243], v[2:9], v[188:195]
	s_clause 0x2                            ; 36-byte Folded Reload
	scratch_load_b32 v8, off, off offset:1512
	scratch_load_b128 v[0:3], off, off offset:1120
	scratch_load_b128 v[4:7], off, off offset:1136
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[240:243], v12
	s_waitcnt vmcnt(2)
	ds_load_b128 v[236:239], v8
	ds_load_b128 v[13:16], v8 offset:256
	ds_load_b128 v[17:20], v12 offset:256
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[236:243], v[0:7], v[112:119]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[240:243], v12 offset:8192
	ds_load_b128 v[236:239], v8 offset:8192
	ds_load_b128 v[64:67], v8 offset:8448
	ds_load_b128 v[68:71], v12 offset:8448
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[188:195], v[236:243], v[0:7], v[188:195]
	s_clause 0x3                            ; 64-byte Folded Reload
	scratch_load_b128 v[236:239], off, off offset:704
	scratch_load_b128 v[240:243], off, off offset:720
	scratch_load_b128 v[0:3], off, off offset:1152
	scratch_load_b128 v[4:7], off, off offset:1168
	s_waitcnt vmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[168:175], v[236:243], v[112:119]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[168:171], off, off offset:768
	scratch_load_b128 v[172:175], off, off offset:784
	v_wmma_f32_16x16x16_bf16 v[188:195], v[204:211], v[236:243], v[188:195]
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[188:195], v[48:55], v[168:175], v[188:195]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[48:51], off, off offset:832
	scratch_load_b128 v[52:55], off, off offset:848
	v_wmma_f32_16x16x16_bf16 v[112:119], v[160:167], v[168:175], v[112:119]
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[248:255], v[48:55], v[112:119]
	v_wmma_f32_16x16x16_bf16 v[188:195], v[136:143], v[48:55], v[188:195]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[48:51], off, off offset:896
	scratch_load_b128 v[52:55], off, off offset:912
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[144:151], v[48:55], v[112:119]
	v_wmma_f32_16x16x16_bf16 v[188:195], v[152:159], v[48:55], v[188:195]
	s_clause 0x2                            ; 40-byte Folded Reload
	scratch_load_b64 v[158:159], off, off offset:16
	scratch_load_b128 v[48:51], off, off offset:960
	scratch_load_b128 v[52:55], off, off offset:976
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[93:100], v[48:55], v[112:119]
	v_wmma_f32_16x16x16_bf16 v[188:195], v[196:203], v[48:55], v[188:195]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[48:51], off, off offset:1024
	scratch_load_b128 v[52:55], off, off offset:1040
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[188:195], v[32:39], v[48:55], v[188:195]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[32:35], off, off offset:1088
	scratch_load_b128 v[36:39], off, off offset:1104
	v_wmma_f32_16x16x16_bf16 v[112:119], v[56:63], v[48:55], v[112:119]
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[40:47], v[32:39], v[112:119]
	v_wmma_f32_16x16x16_bf16 v[188:195], v[21:28], v[32:39], v[188:195]
	v_wmma_f32_16x16x16_bf16 v[112:119], v[13:20], v[0:7], v[112:119]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[188:195], v[64:71], v[0:7], v[188:195]
	.loc	1 385 30                        ; attention_backward.py:385:30
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[0:1], off, off offset:648
	scratch_load_b32 v1, off, off offset:656
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v0, s1, v0, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s1, v1, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	v_cndmask_b32_e64 v4, 0x80000000, v1, s3
	scratch_load_b32 v1, off, off offset:660 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s1, v1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v8, 0x80000000, v1, s3
	scratch_load_b64 v[1:2], off, off offset:664 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s1, v1, 1
	v_cndmask_b32_e64 v9, 0x80000000, v1, s3
	s_clause 0x3
	buffer_load_b128 v[0:3], v0, s[40:43], 0 offen
	buffer_load_b128 v[4:7], v4, s[40:43], 0 offen
	buffer_load_b128 v[70:73], v8, s[40:43], 0 offen
	buffer_load_b128 v[134:137], v9, s[40:43], 0 offen
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v65, off, off offset:1520 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v65, v[0:3]
	ds_store_b128 v65, v[4:7] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1448
	scratch_load_b32 v74, off, off offset:1524
	s_waitcnt vmcnt(0)
	ds_load_b128 v[32:35], v74
	ds_load_b128 v[40:43], v74 offset:64
	ds_load_b128 v[44:47], v90 offset:64
	ds_load_b128 v[52:55], v90 offset:512
	ds_load_b128 v[48:51], v74 offset:512
	ds_load_b128 v[93:96], v74 offset:576
	ds_load_b128 v[97:100], v90 offset:576
	v_add_nc_u32_e32 v64, 0, v0
	ds_load_b128 v[4:7], v246
	ds_load_b128 v[0:3], v64
	ds_load_b128 v[8:11], v64 offset:64
	ds_load_b128 v[12:15], v246 offset:64
	ds_load_b128 v[20:23], v246 offset:512
	ds_load_b128 v[16:19], v64 offset:512
	ds_load_b128 v[24:27], v64 offset:576
	ds_load_b128 v[28:31], v246 offset:576
	ds_load_b128 v[36:39], v90
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[70:73]
	ds_store_b128 v65, v[134:137] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[56:59], off, off offset:1184
	scratch_load_b128 v[60:63], off, off offset:1200
	ds_load_b128 v[138:141], v246
	ds_load_b128 v[134:137], v64
	ds_load_b128 v[142:145], v64 offset:64
	ds_load_b128 v[146:149], v246 offset:64
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v70.h, v130.l
	v_mov_b16_e32 v71.h, v76.l
	v_mov_b16_e64 v130.l, v101.h
	v_mov_b16_e32 v70.l, v101.l
	v_mov_b16_e64 v101.h, v212.l
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v72, v130
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[150:157], v[0:7], v[56:63], v[222:229]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[134:141], v[56:63], v[222:229]
	s_clause 0x4                            ; 44-byte Folded Reload
	scratch_load_b32 v200, off, off offset:40
	scratch_load_b32 v201, off, off offset:36
	scratch_load_b32 v202, off, off offset:32
	scratch_load_b128 v[56:59], off, off offset:1216
	scratch_load_b128 v[60:63], off, off offset:1232
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v227.h, v232.l
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[150:157], v[32:39], v[56:63], v[150:157]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[36:39], v90
	ds_load_b128 v[32:35], v74
	ds_load_b128 v[134:137], v74 offset:64
	ds_load_b128 v[138:141], v90 offset:64
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[32:39], v[56:63], v[0:7]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[32:35], off, off offset:1248
	scratch_load_b128 v[36:39], off, off offset:1264
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[150:157], v[8:15], v[32:39], v[150:157]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[8:11], off, off offset:1280
	scratch_load_b128 v[12:15], off, off offset:1296
	v_wmma_f32_16x16x16_bf16 v[0:7], v[142:149], v[32:39], v[0:7]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[32:35], off, off offset:1312
	scratch_load_b128 v[36:39], off, off offset:1328
	s_waitcnt vmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[150:157], v[40:47], v[8:15], v[150:157]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[40:43], off, off offset:1344
	scratch_load_b128 v[44:47], off, off offset:1360
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[134:141], v[8:15], v[0:7]
	s_waitcnt vmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[150:157], v[16:23], v[32:39], v[150:157]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[12:15], v246 offset:512
	ds_load_b128 v[8:11], v64 offset:512
	ds_load_b128 v[16:19], v64 offset:576
	ds_load_b128 v[20:23], v246 offset:576
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[8:15], v[32:39], v[0:7]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[12:15], v90 offset:512
	ds_load_b128 v[8:11], v74 offset:512
	ds_load_b128 v[32:35], v74 offset:576
	ds_load_b128 v[36:39], v90 offset:576
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v74.h, v131.l
	v_mov_b16_e64 v131.l, v102.h
	v_mov_b16_e32 v74.l, v102.l
	v_mov_b16_e32 v102.h, v107.l
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[8:15], v[40:47], v[0:7]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[8:11], off, off offset:1376
	scratch_load_b128 v[12:15], off, off offset:1392
	v_wmma_f32_16x16x16_bf16 v[150:157], v[48:55], v[40:47], v[150:157]
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[150:157], v[24:31], v[8:15], v[150:157]
	v_wmma_f32_16x16x16_bf16 v[0:7], v[16:23], v[8:15], v[0:7]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[8:11], off, off offset:1408
	scratch_load_b128 v[12:15], off, off offset:1424
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v16, s39, v188, -v245
	v_fma_f32 v17, s39, v189, -v245
	v_fma_f32 v18, s39, v190, -v245
	v_fma_f32 v19, s39, v191, -v245
	v_fma_f32 v20, s39, v192, -v245
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v16, v16
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v21, s39, v193, -v245
	v_fma_f32 v22, s39, v194, -v245
	v_fma_f32 v23, s39, v195, -v245
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[150:157], v[93:100], v[8:15], v[150:157]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[32:39], v[8:15], v[0:7]
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v13, s39, v117, -v245
	v_fma_f32 v10, s39, v114, -v245
	v_fma_f32 v9, s39, v113, -v245
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v29, v155, v247
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v14, s39, v118, -v245
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v13, v13
	v_exp_f32_e32 v10, v10
	v_exp_f32_e32 v9, v9
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v11, s39, v115, -v245
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v14, v14
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_sub_f32_e32 v25, v151, v247
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v8, s39, v112, -v245
	v_fma_f32 v12, s39, v116, -v245
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v11, v11
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_sub_f32_e32 v27, v153, v247
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v26, v152, v247
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v10, 0, v10, s0
	v_cndmask_b32_e64 v9, 0, v9, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v24, v150, v247 :: v_dual_mul_f32 v13, v13, v29
	v_sub_f32_e32 v0, v0, v247
	v_dual_sub_f32 v1, v1, v247 :: v_dual_mul_f32 v10, v10, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 396 26 is_stmt 0              ; attention_backward.py:396:26
	v_mul_f32_e32 v9, v9, v25
	.loc	1 397 34 is_stmt 1              ; attention_backward.py:397:34
	v_mul_f32_e32 v13, s38, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v7, v7, v247 :: v_dual_mul_f32 v0, v16, v0
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v16, v17
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v30, v156, v247 :: v_dual_mul_f32 v9, s38, v9
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v5, v5, v247
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v8, v8
	v_exp_f32_e32 v12, v12
	.loc	1 396 26 is_stmt 1              ; attention_backward.py:396:26
	v_mul_f32_e32 v14, v14, v30
	.loc	1 396 43 is_stmt 0              ; attention_backward.py:396:43
	v_sub_f32_e32 v2, v2, v247
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 345 29 is_stmt 1              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v28, v154, v247
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v15, s39, v119, -v245
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v4, v4, v247
	v_dual_sub_f32 v6, v6, v247 :: v_dual_mul_f32 v1, v16, v1
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v16, v18
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v8, 0, v8, s0
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_sub_f32_e32 v3, v3, v247
	v_sub_f32_e32 v31, v157, v247
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v15, v15
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v8, v8, v24
	v_mul_f32_e32 v12, v12, v28
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v10, s38, v10
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s4, v9, v9
	.loc	1 345 29 is_stmt 1              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v11, v11, v27 :: v_dual_mul_f32 v8, s38, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s5, v10, v10
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v14, s38, v14
	.loc	1 396 26 is_stmt 1              ; attention_backward.py:396:26
	v_mul_f32_e32 v2, v16, v2
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v16, v19
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v15, 0, v15, s0
	.loc	1 397 33 is_stmt 1              ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s1, v8, v8
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v11, s38, v11
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s8, v13, v13
	v_cmp_o_f32_e64 s9, v14, v14
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v0, s38, v0
	scratch_load_b64 v[154:155], off, off   ; 8-byte Folded Reload
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s6, v11, v11
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[93:96], off, off offset:288
	scratch_load_b128 v[97:100], off, off offset:304
	.loc	1 345 29 is_stmt 1              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s11, v0, v0
	s_clause 0x2                            ; 40-byte Folded Reload
	scratch_load_b128 v[36:39], off, off offset:128
	scratch_load_b128 v[40:43], off, off offset:144
	scratch_load_b64 v[155:156], off, off offset:8
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v3, v16, v3
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v16, v20
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 396 26 is_stmt 1              ; attention_backward.py:396:26
	v_mul_f32_e32 v15, v15, v31
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[28:31], off, off offset:64
	scratch_load_b128 v[32:35], off, off offset:80
	.loc	1 397 33                        ; attention_backward.py:397:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v4, v16, v4
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v16, v21
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v12, s38, v12 :: v_dual_mul_f32 v15, s38, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s7, v12, v12
	v_cmp_o_f32_e64 s10, v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29 is_stmt 1              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v5, v16, v5
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v16, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 396 26 is_stmt 1              ; attention_backward.py:396:26
	v_mul_f32_e32 v6, v16, v6
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v16, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 396 26 is_stmt 1              ; attention_backward.py:396:26
	v_mul_f32_e32 v7, v16, v7
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v16, v8, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v8, v8, v16, 0x7fff
	v_bfe_u32 v16, v9, 16, 1
	v_add3_u32 v9, v9, v16, 0x7fff
	v_bfe_u32 v16, v10, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v10, v10, v16, 0x7fff
	v_bfe_u32 v16, v11, 16, 1
	v_add3_u32 v11, v11, v16, 0x7fff
	v_bfe_u32 v16, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v12, v12, v16, 0x7fff
	v_bfe_u32 v16, v13, 16, 1
	v_add3_u32 v13, v13, v16, 0x7fff
	v_bfe_u32 v16, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v14, v14, v16, 0x7fff
	v_bfe_u32 v16, v15, 16, 1
	v_add3_u32 v15, v15, v16, 0x7fff
	v_bfe_u32 v16, v0, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v16, v0, v16, 0x7fff
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v0, s38, v1
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v1, v0, 16, 1
	v_cmp_o_f32_e64 s12, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v1, v0, v1, 0x7fff
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v0, s38, v2
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v2, v0, 16, 1
	v_cmp_o_f32_e64 s13, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v0, s38, v3
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v3, v0, 16, 1
	v_cmp_o_f32_e64 s14, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v3, v0, v3, 0x7fff
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v0, s38, v4
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v4, v0, 16, 1
	v_cmp_o_f32_e64 s15, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v4, v0, v4, 0x7fff
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v0, s38, v5
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v5, v0, 16, 1
	v_cmp_o_f32_e64 s16, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v5, v0, v5, 0x7fff
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v0, s38, v6
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v6, v0, 16, 1
	v_cmp_o_f32_e64 s17, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v6, v0, v6, 0x7fff
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v0, s38, v7
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v7, v0, 16, 1
	v_cmp_o_f32_e64 s18, v0, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v7, v0, v7, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v8.h, s1
	v_cndmask_b16 v0.h, 0x7fff, v9.h, s4
	.loc	1 270 9 is_stmt 1               ; attention_backward.py:270:9
	s_add_i32 s1, s44, 32
	s_cmpk_lt_u32 s44, 0x7e0
	s_mov_b32 s44, s1
	.loc	1 397 33                        ; attention_backward.py:397:33
	ds_store_b16 v91, v0
	v_cndmask_b16 v0.l, 0x7fff, v10.h, s5
	ds_store_b16_d16_hi v91, v0 offset:128
	v_cndmask_b16 v0.h, 0x7fff, v11.h, s6
	ds_store_b16 v91, v0 offset:256
	v_cndmask_b16 v0.l, 0x7fff, v12.h, s7
	ds_store_b16_d16_hi v91, v0 offset:384
	v_cndmask_b16 v0.h, 0x7fff, v13.h, s8
	ds_store_b16 v91, v0 offset:512
	v_cndmask_b16 v0.l, 0x7fff, v14.h, s9
	ds_store_b16_d16_hi v91, v0 offset:640
	v_cndmask_b16 v0.h, 0x7fff, v15.h, s10
	ds_store_b16 v91, v0 offset:768
	ds_store_b16_d16_hi v91, v0 offset:896
	v_cndmask_b16 v0.l, 0x7fff, v16.h, s11
	v_cndmask_b16 v0.h, 0x7fff, v1.h, s12
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[13:16], off, off offset:96
	scratch_load_b128 v[17:20], off, off offset:112
	ds_store_b16 v91, v0 offset:1024
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s13
	ds_store_b16_d16_hi v91, v0 offset:1152
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s14
	ds_store_b16 v91, v0 offset:1280
	v_cndmask_b16 v0.l, 0x7fff, v4.h, s15
	ds_store_b16_d16_hi v91, v0 offset:1408
	v_cndmask_b16 v0.h, 0x7fff, v5.h, s16
	ds_store_b16 v91, v0 offset:1536
	v_cndmask_b16 v0.l, 0x7fff, v6.h, s17
	ds_store_b16_d16_hi v91, v0 offset:1664
	v_cndmask_b16 v0.h, 0x7fff, v7.h, s18
	ds_store_b16 v91, v0 offset:1792
	ds_store_b16_d16_hi v91, v0 offset:1920
	scratch_load_b128 v[0:3], off, off offset:632 ; 16-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v160, v92
	ds_load_u16_d16 v161, v92 offset:128
	ds_load_u16_d16 v162, v92 offset:256
	ds_load_u16_d16 v163, v92 offset:384
	ds_load_u16_d16 v164, v92 offset:512
	ds_load_u16_d16 v165, v92 offset:640
	ds_load_u16_d16 v166, v92 offset:768
	ds_load_u16_d16 v167, v92 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v160, v92 offset:64
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v161, v92 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v162, v92 offset:320
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v163, v92 offset:448
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v164, v92 offset:576
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v165, v92 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v166, v92 offset:832
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v167, v92 offset:960
	s_clause 0x2                            ; 40-byte Folded Reload
	scratch_load_b128 v[44:47], off, off offset:592
	scratch_load_b128 v[48:51], off, off offset:608
	scratch_load_b64 v[52:53], off, off offset:624
	ds_load_u16_d16 v168, v92 offset:1024
	ds_load_u16_d16 v169, v92 offset:1152
	ds_load_u16_d16 v170, v92 offset:1280
	ds_load_u16_d16 v171, v92 offset:1408
	ds_load_u16_d16 v172, v92 offset:1536
	ds_load_u16_d16 v173, v92 offset:1664
	ds_load_u16_d16 v174, v92 offset:1792
	ds_load_u16_d16 v175, v92 offset:1920
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v168, v92 offset:1088
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v169, v92 offset:1216
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v170, v92 offset:1344
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v171, v92 offset:1472
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v172, v92 offset:1600
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v173, v92 offset:1728
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v174, v92 offset:1856
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v175, v92 offset:1984
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v44.h, v176.l
	v_mov_b16_e64 v176.l, v80.h
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v48.h, v177.l
	v_mov_b16_e64 v177.l, v81.h
	v_mov_b16_e32 v44.l, v80.l
	v_mov_b16_e32 v48.l, v81.l
	v_mov_b32_e32 v46, v176
	v_mov_b16_e32 v80.h, v120.l
	v_mov_b16_e32 v81.h, v86.l
	scratch_load_b128 v[8:11], off, off offset:464 ; 16-byte Folded Reload
	v_mov_b16_e32 v76.l, v0.h
	v_mov_b16_e32 v71.l, v0.l
	v_mov_b16_e32 v75.l, v1.l
	v_mov_b16_e32 v77.l, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v73, v76 :: v_dual_mov_b32 v76, v131
	v_wmma_f32_16x16x16_bf16 v[28:35], v[70:77], v[160:167], v[28:35]
	v_mov_b16_e32 v73.l, v2.l
	v_mov_b16_e32 v73.h, v78.l
	v_mov_b16_e32 v78.l, v2.h
	v_mov_b16_e32 v77.l, v3.l
	v_mov_b16_e32 v77.h, v79.l
	v_mov_b16_e32 v79.l, v3.h
	scratch_load_b128 v[0:3], off, off offset:576 ; 16-byte Folded Reload
	v_mov_b16_e64 v72.h, v132.l
	v_mov_b16_e64 v132.l, v103.h
	v_mov_b16_e64 v76.h, v133.l
	v_mov_b16_e64 v133.l, v104.h
	v_mov_b16_e32 v45.h, v50.l
	v_mov_b16_e32 v72.l, v103.l
	v_mov_b16_e32 v76.l, v104.l
	v_dual_mov_b32 v74, v132 :: v_dual_mov_b32 v75, v78
	v_mov_b32_e32 v78, v133
	v_mov_b16_e32 v49.h, v51.l
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[28:35], v[72:79], v[168:175], v[28:35]
	s_clause 0x4                            ; 80-byte Folded Reload
	scratch_load_b128 v[68:71], off, off offset:256
	scratch_load_b128 v[72:75], off, off offset:272
	scratch_load_b128 v[60:63], off, off offset:224
	scratch_load_b128 v[64:67], off, off offset:240
	scratch_load_b128 v[4:7], off, off offset:544
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v50.l, v0.h
	v_mov_b16_e32 v45.l, v0.l
	v_mov_b16_e32 v49.l, v1.l
	v_mov_b16_e32 v51.l, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v47, v50 :: v_dual_mov_b32 v50, v177
	v_mov_b16_e64 v177.h, v182.l
	v_wmma_f32_16x16x16_bf16 v[93:100], v[44:51], v[160:167], v[93:100]
	v_mov_b16_e32 v47.l, v2.l
	v_mov_b16_e32 v47.h, v52.l
	v_mov_b16_e32 v52.l, v2.h
	v_mov_b16_e32 v51.l, v3.l
	v_mov_b16_e32 v51.h, v53.l
	v_mov_b16_e32 v53.l, v3.h
	scratch_load_b128 v[0:3], off, off offset:560 ; 16-byte Folded Reload
	v_mov_b16_e64 v46.h, v178.l
	v_mov_b16_e64 v178.l, v82.h
	v_mov_b16_e64 v50.h, v179.l
	v_mov_b16_e64 v179.l, v83.h
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v120.l, v4.h
	v_mov_b16_e32 v121.l, v5.h
	v_mov_b16_e32 v46.l, v82.l
	v_mov_b16_e32 v50.l, v83.l
	v_dual_mov_b32 v48, v178 :: v_dual_mov_b32 v49, v52
	v_mov_b32_e32 v52, v179
	v_mov_b16_e32 v80.l, v4.l
	v_mov_b16_e32 v84.l, v5.l
	v_mov_b32_e32 v82, v120
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_f32_16x16x16_bf16 v[93:100], v[46:53], v[168:175], v[93:100]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[44:47], off, off offset:160
	scratch_load_b128 v[48:51], off, off offset:176
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v86.l, v0.h
	v_mov_b16_e32 v81.l, v0.l
	v_mov_b16_e32 v85.l, v1.l
	v_mov_b16_e32 v87.l, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v83, v86 :: v_dual_mov_b32 v86, v121
	v_mov_b16_e32 v121.h, v126.l
	v_wmma_f32_16x16x16_bf16 v[68:75], v[80:87], v[160:167], v[68:75]
	v_mov_b16_e32 v82.l, v6.l
	v_mov_b16_e32 v82.h, v122.l
	v_mov_b16_e32 v122.l, v6.h
	v_mov_b16_e32 v86.l, v7.l
	v_mov_b16_e32 v86.h, v123.l
	v_mov_b16_e32 v123.l, v7.h
	v_mov_b16_e32 v83.l, v2.l
	v_mov_b16_e32 v83.h, v88.l
	v_mov_b16_e32 v88.l, v2.h
	v_mov_b16_e32 v87.l, v3.l
	v_mov_b16_e32 v87.h, v89.l
	v_mov_b16_e32 v89.l, v3.h
	s_clause 0x3                            ; 64-byte Folded Reload
	scratch_load_b128 v[52:55], off, off offset:192
	scratch_load_b128 v[56:59], off, off offset:208
	scratch_load_b128 v[4:7], off, off offset:512
	scratch_load_b128 v[0:3], off, off offset:528
	v_dual_mov_b32 v84, v122 :: v_dual_mov_b32 v85, v88
	v_mov_b32_e32 v88, v123
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[68:75], v[82:89], v[168:175], v[68:75]
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v212.l, v4.h
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v107.l, v0.h
	v_mov_b16_e64 v213.l, v5.h
	v_mov_b16_e32 v101.l, v4.l
	v_mov_b16_e32 v102.l, v0.l
	v_mov_b16_e32 v105.l, v5.l
	v_mov_b16_e32 v106.l, v1.l
	v_mov_b16_e32 v108.l, v1.h
	v_dual_mov_b32 v103, v212 :: v_dual_mov_b32 v104, v107
	v_mov_b32_e32 v107, v213
	v_mov_b16_e64 v213.h, v218.l
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[60:67], v[101:108], v[160:167], v[60:67]
	v_mov_b16_e32 v103.l, v6.l
	v_mov_b16_e64 v103.h, v214.l
	v_mov_b16_e64 v214.l, v6.h
	v_mov_b16_e32 v107.l, v7.l
	v_mov_b16_e64 v107.h, v215.l
	v_mov_b16_e64 v215.l, v7.h
	v_mov_b16_e32 v104.l, v2.l
	v_mov_b16_e32 v104.h, v109.l
	v_mov_b16_e32 v109.l, v2.h
	v_mov_b16_e32 v108.l, v3.l
	v_mov_b16_e32 v108.h, v110.l
	v_mov_b16_e32 v110.l, v3.h
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:480
	scratch_load_b128 v[4:7], off, off offset:496
	v_mov_b16_e32 v120.l, v8.l
	v_mov_b16_e32 v124.l, v9.l
	v_dual_mov_b32 v105, v214 :: v_dual_mov_b32 v106, v109
	v_mov_b32_e32 v109, v215
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[60:67], v[103:110], v[168:175], v[60:67]
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v120.h, v0.l
	v_mov_b16_e32 v0.l, v8.h
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v126.l, v4.h
	v_mov_b16_e32 v124.h, v1.l
	v_mov_b16_e32 v1.l, v9.h
	v_mov_b16_e32 v121.l, v4.l
	v_mov_b16_e32 v125.l, v5.l
	v_mov_b16_e32 v127.l, v5.h
	v_dual_mov_b32 v122, v0 :: v_dual_mov_b32 v123, v126
	v_mov_b32_e32 v126, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[52:59], v[120:127], v[160:167], v[52:59]
	v_mov_b16_e32 v122.h, v2.l
	v_mov_b16_e32 v2.l, v10.h
	v_mov_b16_e32 v126.h, v3.l
	v_mov_b16_e32 v3.l, v11.h
	v_mov_b16_e64 v123.h, v128.l
	v_mov_b16_e64 v128.l, v6.h
	v_mov_b16_e32 v122.l, v10.l
	v_mov_b16_e32 v126.l, v11.l
	v_mov_b16_e32 v123.l, v6.l
	v_mov_b16_e32 v127.l, v7.l
	v_mov_b16_e64 v127.h, v129.l
	v_mov_b16_e64 v129.l, v7.h
	v_dual_mov_b32 v124, v2 :: v_dual_mov_b32 v125, v128
	v_mov_b32_e32 v128, v3
	s_clause 0x2                            ; 48-byte Folded Reload
	scratch_load_b128 v[8:11], off, off offset:416
	scratch_load_b128 v[0:3], off, off offset:432
	scratch_load_b128 v[4:7], off, off offset:448
	v_wmma_f32_16x16x16_bf16 v[52:59], v[122:129], v[168:175], v[52:59]
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v226.l, v8.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v226.h, v0.l
	v_mov_b16_e32 v0.l, v8.h
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v232.l, v4.h
	v_mov_b16_e64 v230.h, v1.l
	v_mov_b16_e32 v1.l, v9.h
	v_mov_b16_e64 v227.l, v4.l
	v_mov_b16_e64 v230.l, v9.l
	v_mov_b16_e64 v231.l, v5.l
	v_mov_b16_e64 v233.l, v5.h
	v_mov_b32_e32 v228, v0
	v_dual_mov_b32 v229, v232 :: v_dual_mov_b32 v232, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[44:51], v[226:233], v[160:167], v[44:51]
	v_mov_b16_e64 v228.h, v2.l
	v_mov_b16_e32 v2.l, v10.h
	v_mov_b16_e64 v232.h, v3.l
	v_mov_b16_e32 v3.l, v11.h
	v_mov_b16_e64 v229.h, v234.l
	v_mov_b16_e64 v234.l, v6.h
	v_mov_b16_e64 v228.l, v10.l
	v_mov_b16_e64 v232.l, v11.l
	v_mov_b16_e64 v229.l, v6.l
	v_mov_b16_e64 v233.l, v7.l
	v_mov_b16_e64 v233.h, v235.l
	v_mov_b16_e64 v235.l, v7.h
	v_mov_b32_e32 v230, v2
	v_dual_mov_b32 v231, v234 :: v_dual_mov_b32 v234, v3
	s_clause 0x2                            ; 48-byte Folded Reload
	scratch_load_b128 v[8:11], off, off offset:368
	scratch_load_b128 v[0:3], off, off offset:384
	scratch_load_b128 v[4:7], off, off offset:400
	v_wmma_f32_16x16x16_bf16 v[44:51], v[228:235], v[168:175], v[44:51]
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v176.l, v8.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v176.h, v0.l
	v_mov_b16_e32 v0.l, v8.h
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v182.l, v4.h
	v_mov_b16_e64 v180.h, v1.l
	v_mov_b16_e32 v1.l, v9.h
	v_mov_b16_e64 v177.l, v4.l
	v_mov_b16_e64 v180.l, v9.l
	v_mov_b16_e64 v181.l, v5.l
	v_mov_b16_e64 v183.l, v5.h
	v_dual_mov_b32 v178, v0 :: v_dual_mov_b32 v179, v182
	v_mov_b32_e32 v182, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[36:43], v[176:183], v[160:167], v[36:43]
	v_mov_b16_e64 v178.h, v2.l
	v_mov_b16_e32 v2.l, v10.h
	v_mov_b16_e64 v182.h, v3.l
	v_mov_b16_e32 v3.l, v11.h
	v_mov_b16_e64 v179.h, v184.l
	v_mov_b16_e64 v184.l, v6.h
	v_mov_b16_e64 v178.l, v10.l
	v_mov_b16_e64 v182.l, v11.l
	v_mov_b16_e64 v179.l, v6.l
	v_mov_b16_e64 v183.l, v7.l
	v_mov_b16_e64 v183.h, v185.l
	v_mov_b16_e64 v185.l, v7.h
	v_dual_mov_b32 v180, v2 :: v_dual_mov_b32 v181, v184
	v_mov_b32_e32 v184, v3
	s_clause 0x2                            ; 48-byte Folded Reload
	scratch_load_b128 v[4:7], off, off offset:320
	scratch_load_b128 v[0:3], off, off offset:336
	scratch_load_b128 v[8:11], off, off offset:352
	v_wmma_f32_16x16x16_bf16 v[36:43], v[178:185], v[168:175], v[36:43]
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v212.l, v4.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v212.h, v0.l
	v_mov_b16_e32 v0.l, v4.h
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v218.l, v8.h
	v_mov_b16_e64 v216.h, v1.l
	v_mov_b16_e32 v1.l, v5.h
	v_mov_b16_e64 v213.l, v8.l
	v_mov_b16_e64 v216.l, v5.l
	v_mov_b16_e64 v217.l, v9.l
	v_mov_b16_e64 v219.l, v9.h
	v_dual_mov_b32 v214, v0 :: v_dual_mov_b32 v215, v218
	v_mov_b32_e32 v218, v1
	v_dual_mov_b32 v4, v10 :: v_dual_mov_b32 v5, v11
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[13:20], v[212:219], v[160:167], v[13:20]
	scratch_load_b64 v[159:160], off, off offset:24 ; 8-byte Folded Reload
	v_mov_b16_e64 v214.h, v2.l
	v_mov_b16_e32 v2.l, v6.h
	v_mov_b16_e64 v218.h, v3.l
	v_mov_b16_e32 v3.l, v7.h
	v_mov_b16_e64 v215.h, v220.l
	v_mov_b16_e64 v220.l, v4.h
	v_mov_b16_e64 v214.l, v6.l
	v_mov_b16_e64 v218.l, v7.l
	v_mov_b16_e64 v215.l, v4.l
	v_mov_b16_e64 v219.l, v5.l
	v_mov_b16_e64 v219.h, v221.l
	v_mov_b16_e64 v221.l, v5.h
	v_dual_mov_b32 v216, v2 :: v_dual_mov_b32 v217, v220
	v_mov_b32_e32 v220, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[13:20], v[214:221], v[168:175], v[13:20]
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cbranch_scc1 .LBB0_3
; %bb.4:
	.loc	1 124 31                        ; attention_backward.py:124:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1540
	scratch_load_b32 v1, off, off offset:1536
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 124 31                        ; attention_backward.py:124:31
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v0, 4, v0
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v0, v0, v1
	.loc	1 401 13                        ; attention_backward.py:401:13
	scratch_load_b32 v1, off, off offset:1532 ; 4-byte Folded Reload
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_or_b32_e32 v2, 0xe0, v0
	v_or_b32_e32 v3, 0xc0, v0
	v_or_b32_e32 v4, 0xa0, v0
	v_or_b32_e32 v5, 0x80, v0
	v_or_b32_e32 v6, 0x60, v0
	v_or_b32_e32 v7, 64, v0
	v_or_b32_e32 v8, 32, v0
	v_cmp_gt_i32_e64 s0, s34, v2
	v_cmp_gt_i32_e64 s1, s34, v3
	v_cmp_gt_i32_e64 s2, s34, v4
	v_cmp_gt_i32_e64 s3, s34, v5
	v_cmp_gt_i32_e64 s4, s34, v6
	v_cmp_gt_i32_e64 s5, s34, v7
	v_cmp_gt_i32_e64 s6, s34, v8
	v_cmp_gt_i32_e64 s7, s34, v0
	.loc	1 161 22 is_stmt 0              ; attention_backward.py:161:22
	s_and_b32 s3, vcc_lo, s3
	s_and_b32 s4, vcc_lo, s4
	s_and_b32 s5, vcc_lo, s5
	s_and_b32 s6, vcc_lo, s6
	s_and_b32 s7, vcc_lo, s7
	s_and_b32 s2, vcc_lo, s2
	s_and_b32 s1, vcc_lo, s1
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v1, s34, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, v1, v0
	v_add_nc_u32_e32 v8, v1, v8
	v_add_nc_u32_e32 v7, v1, v7
	v_add_nc_u32_e32 v6, v1, v6
	v_add_nc_u32_e32 v5, v1, v5
	v_add_nc_u32_e32 v4, v1, v4
	v_add_nc_u32_e32 v3, v1, v3
	v_add_nc_u32_e32 v1, v1, v2
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v8, v8, s33, 2
	v_add_lshl_u32 v5, v5, s33, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v1, v1, s33, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_lshl_u32 v0, v0, s33, 2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v9, 0x80000000, v0, s7
	v_add_nc_u32_e32 v10, 8, v0
	v_add_nc_u32_e32 v2, 16, v0
	v_add_nc_u32_e32 v11, 32, v0
	v_add_nc_u32_e32 v12, 40, v0
	buffer_store_b32 v28, v9, s[36:39], 0 offen
	v_cndmask_b32_e64 v9, 0x80000000, v10, s7
	v_add_nc_u32_e32 v10, 24, v0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s7
	buffer_store_b32 v29, v9, s[36:39], 0 offen
	v_cndmask_b32_e64 v9, 0x80000000, v10, s7
	v_cndmask_b32_e64 v10, 0x80000000, v11, s7
	v_cndmask_b32_e64 v11, 0x80000000, v12, s7
	buffer_store_b32 v30, v2, s[36:39], 0 offen
	v_add_nc_u32_e32 v2, 48, v0
	s_clause 0x2
	buffer_store_b32 v31, v9, s[36:39], 0 offen
	buffer_store_b32 v32, v10, s[36:39], 0 offen
	buffer_store_b32 v33, v11, s[36:39], 0 offen
	v_add_nc_u32_e32 v9, 56, v0
	v_add_nc_u32_e32 v10, 0x88, v0
	v_add_nc_u32_e32 v11, 0x90, v0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v9, 0x80000000, v9, s7
	v_cndmask_b32_e64 v10, 0x80000000, v10, s6
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v11, 0x80000000, v11, s6
	s_clause 0x4
	buffer_store_b32 v34, v2, s[36:39], 0 offen
	buffer_store_b32 v35, v9, s[36:39], 0 offen
	buffer_store_b32 v93, v8, s[36:39], 0 offen
	buffer_store_b32 v94, v10, s[36:39], 0 offen
	buffer_store_b32 v95, v11, s[36:39], 0 offen
	v_add_nc_u32_e32 v2, 0x98, v0
	v_add_nc_u32_e32 v8, 0xa0, v0
	v_add_nc_u32_e32 v9, 0xa8, v0
	v_add_nc_u32_e32 v10, 0xb0, v0
	v_add_nc_u32_e32 v11, 0xb8, v0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s6
	v_cndmask_b32_e64 v8, 0x80000000, v8, s6
	v_cndmask_b32_e64 v9, 0x80000000, v9, s6
	v_cndmask_b32_e64 v10, 0x80000000, v10, s6
	v_cndmask_b32_e64 v11, 0x80000000, v11, s6
	s_clause 0x4
	buffer_store_b32 v96, v2, s[36:39], 0 offen
	buffer_store_b32 v97, v8, s[36:39], 0 offen
	buffer_store_b32 v98, v9, s[36:39], 0 offen
	buffer_store_b32 v99, v10, s[36:39], 0 offen
	buffer_store_b32 v100, v11, s[36:39], 0 offen
	v_add_lshl_u32 v2, v7, s33, 2
	v_add_nc_u32_e32 v7, 0x108, v0
	v_add_nc_u32_e32 v8, 0x110, v0
	v_add_nc_u32_e32 v9, 0x118, v0
	v_add_nc_u32_e32 v10, 0x120, v0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	v_cndmask_b32_e64 v7, 0x80000000, v7, s5
	v_cndmask_b32_e64 v8, 0x80000000, v8, s5
	v_cndmask_b32_e64 v9, 0x80000000, v9, s5
	s_clause 0x2
	buffer_store_b32 v68, v2, s[36:39], 0 offen
	buffer_store_b32 v69, v7, s[36:39], 0 offen
	buffer_store_b32 v70, v8, s[36:39], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v10, s5
	v_add_nc_u32_e32 v7, 0x128, v0
	v_add_nc_u32_e32 v8, 0x130, v0
	buffer_store_b32 v71, v9, s[36:39], 0 offen
	v_add_nc_u32_e32 v9, 0x138, v0
	buffer_store_b32 v72, v2, s[36:39], 0 offen
	v_add_lshl_u32 v2, v6, s33, 2
	v_cndmask_b32_e64 v6, 0x80000000, v7, s5
	v_cndmask_b32_e64 v7, 0x80000000, v8, s5
	v_cndmask_b32_e64 v8, 0x80000000, v9, s5
	v_add_nc_u32_e32 v9, 0x1a8, v0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	buffer_store_b32 v73, v6, s[36:39], 0 offen
	v_add_nc_u32_e32 v6, 0x188, v0
	s_clause 0x2
	buffer_store_b32 v74, v7, s[36:39], 0 offen
	buffer_store_b32 v75, v8, s[36:39], 0 offen
	buffer_store_b32 v60, v2, s[36:39], 0 offen
	v_add_nc_u32_e32 v2, 0x190, v0
	v_add_nc_u32_e32 v7, 0x198, v0
	v_add_nc_u32_e32 v8, 0x1a0, v0
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	buffer_store_b32 v61, v6, s[36:39], 0 offen
	v_cndmask_b32_e64 v6, 0x80000000, v7, s4
	v_cndmask_b32_e64 v7, 0x80000000, v8, s4
	v_cndmask_b32_e64 v8, 0x80000000, v9, s4
	buffer_store_b32 v62, v2, s[36:39], 0 offen
	v_add_nc_u32_e32 v2, 0x1b0, v0
	s_clause 0x2
	buffer_store_b32 v63, v6, s[36:39], 0 offen
	buffer_store_b32 v64, v7, s[36:39], 0 offen
	buffer_store_b32 v65, v8, s[36:39], 0 offen
	v_add_nc_u32_e32 v6, 0x1b8, v0
	v_add_nc_u32_e32 v7, 0x208, v0
	v_add_nc_u32_e32 v8, 0x210, v0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	s_clause 0x4
	buffer_store_b32 v66, v2, s[36:39], 0 offen
	buffer_store_b32 v67, v6, s[36:39], 0 offen
	buffer_store_b32 v52, v5, s[36:39], 0 offen
	buffer_store_b32 v53, v7, s[36:39], 0 offen
	buffer_store_b32 v54, v8, s[36:39], 0 offen
	v_add_nc_u32_e32 v2, 0x218, v0
	v_add_nc_u32_e32 v5, 0x220, v0
	v_add_nc_u32_e32 v6, 0x228, v0
	v_add_nc_u32_e32 v7, 0x230, v0
	v_add_nc_u32_e32 v8, 0x238, v0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	s_clause 0x4
	buffer_store_b32 v55, v2, s[36:39], 0 offen
	buffer_store_b32 v56, v5, s[36:39], 0 offen
	buffer_store_b32 v57, v6, s[36:39], 0 offen
	buffer_store_b32 v58, v7, s[36:39], 0 offen
	buffer_store_b32 v59, v8, s[36:39], 0 offen
	v_add_lshl_u32 v2, v4, s33, 2
	v_add_nc_u32_e32 v4, 0x288, v0
	v_add_nc_u32_e32 v5, 0x290, v0
	v_add_nc_u32_e32 v6, 0x298, v0
	v_add_nc_u32_e32 v7, 0x2a0, v0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	s_clause 0x2
	buffer_store_b32 v44, v2, s[36:39], 0 offen
	buffer_store_b32 v45, v4, s[36:39], 0 offen
	buffer_store_b32 v46, v5, s[36:39], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v7, s2
	v_add_nc_u32_e32 v4, 0x2a8, v0
	v_add_nc_u32_e32 v5, 0x2b0, v0
	buffer_store_b32 v47, v6, s[36:39], 0 offen
	v_add_nc_u32_e32 v6, 0x2b8, v0
	buffer_store_b32 v48, v2, s[36:39], 0 offen
	v_add_lshl_u32 v2, v3, s33, 2
	v_cndmask_b32_e64 v3, 0x80000000, v4, s2
	v_cndmask_b32_e64 v4, 0x80000000, v5, s2
	v_cndmask_b32_e64 v5, 0x80000000, v6, s2
	v_add_nc_u32_e32 v6, 0x328, v0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	buffer_store_b32 v49, v3, s[36:39], 0 offen
	v_add_nc_u32_e32 v3, 0x308, v0
	s_clause 0x2
	buffer_store_b32 v50, v4, s[36:39], 0 offen
	buffer_store_b32 v51, v5, s[36:39], 0 offen
	buffer_store_b32 v36, v2, s[36:39], 0 offen
	v_add_nc_u32_e32 v2, 0x310, v0
	v_add_nc_u32_e32 v4, 0x318, v0
	v_add_nc_u32_e32 v5, 0x320, v0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	buffer_store_b32 v37, v3, s[36:39], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v4, s1
	v_cndmask_b32_e64 v4, 0x80000000, v5, s1
	v_cndmask_b32_e64 v5, 0x80000000, v6, s1
	buffer_store_b32 v38, v2, s[36:39], 0 offen
	v_add_nc_u32_e32 v2, 0x330, v0
	s_clause 0x2
	buffer_store_b32 v39, v3, s[36:39], 0 offen
	buffer_store_b32 v40, v4, s[36:39], 0 offen
	buffer_store_b32 v41, v5, s[36:39], 0 offen
	v_add_nc_u32_e32 v3, 0x338, v0
	v_add_nc_u32_e32 v4, 0x388, v0
	v_add_nc_u32_e32 v5, 0x390, v0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	s_clause 0x4
	buffer_store_b32 v42, v2, s[36:39], 0 offen
	buffer_store_b32 v43, v3, s[36:39], 0 offen
	buffer_store_b32 v13, v1, s[36:39], 0 offen
	buffer_store_b32 v14, v4, s[36:39], 0 offen
	buffer_store_b32 v15, v5, s[36:39], 0 offen
	v_add_nc_u32_e32 v1, 0x398, v0
	v_add_nc_u32_e32 v2, 0x3a0, v0
	v_add_nc_u32_e32 v3, 0x3a8, v0
	v_add_nc_u32_e32 v4, 0x3b0, v0
	v_add_nc_u32_e32 v0, 0x3b8, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b32 v16, v1, s[36:39], 0 offen
	buffer_store_b32 v17, v2, s[36:39], 0 offen
	buffer_store_b32 v18, v3, s[36:39], 0 offen
	buffer_store_b32 v19, v4, s[36:39], 0 offen
	buffer_store_b32 v20, v0, s[36:39], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_endpgm
.Ltmp96:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1548
		.amdhsa_kernarg_size 176
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 45
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 63
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 1548
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16444
; TotalNumSgprs: 47
; NumVgprs: 256
; ScratchSize: 1548
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 47
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x87 DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x61 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	258                             ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	262                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x76:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	176                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x82:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention_backward.py"         ; string offset=7 ; attention_backward.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=29 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         80
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         88
        .size:           8
        .value_kind:     global_buffer
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .offset:         140
        .size:           4
        .value_kind:     by_value
      - .offset:         144
        .size:           1
        .value_kind:     by_value
      - .offset:         145
        .size:           1
        .value_kind:     by_value
      - .offset:         148
        .size:           4
        .value_kind:     by_value
      - .offset:         152
        .size:           4
        .value_kind:     by_value
      - .offset:         156
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         160
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         168
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 176
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 1548
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 406
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
