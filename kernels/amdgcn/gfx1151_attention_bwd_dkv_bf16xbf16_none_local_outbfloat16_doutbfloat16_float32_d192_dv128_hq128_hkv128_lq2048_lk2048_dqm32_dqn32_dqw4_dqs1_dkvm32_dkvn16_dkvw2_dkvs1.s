	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x74
	s_load_b64 s[8:9], s[0:1], 0x94
.Ltmp0:
	.loc	1 514 33 prologue_end           ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v1, 5, v0
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_and_b32_e32 v35, 31, v0
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s35, s2, 4
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x8
	s_load_b128 s[28:31], s[0:1], 0x50
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v2, s35, v1
	.loc	1 533 24                        ; attention_backward.py:533:24
	s_lshl_b32 s52, s3, 11
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_lshlrev_b32_e32 v33, 3, v35
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_add_i32 s10, s52, s35
	s_mov_b32 s39, 0x31027000
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, 0x800, v2
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_i32 v34, v0, 5, 1
	v_lshrrev_b32_e32 v36, 4, v0
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v37, 4, v35
	s_mov_b32 s20, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v34, 0x210, v34
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s18, v1
	s_mul_i32 s34, s18, s10
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_cmp_gt_i32_e32 vcc_lo, s18, v33
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_lshl_b32 s3, s18, 2
	s_lshl_b32 s53, s18, 1
	s_mul_i32 s11, s18, 6
	s_lshl_b32 s54, s18, 3
	s_mul_i32 s55, s18, 10
	v_add3_u32 v1, s34, v33, v1
	s_mul_i32 s12, s18, 12
	s_mul_i32 s13, s18, 14
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_and_b32 s37, s5, 0xffff
	v_lshlrev_b32_e32 v2, 1, v1
	v_add_lshl_u32 v4, v1, s3, 1
	v_add_lshl_u32 v3, v1, s53, 1
	v_add_lshl_u32 v5, v1, s11, 1
	v_add_lshl_u32 v6, v1, s54, 1
	v_add_lshl_u32 v9, v1, s55, 1
	v_add_lshl_u32 v10, v1, s12, 1
	v_add_lshl_u32 v11, v1, s13, 1
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_cndmask_b32_e64 v12, 0x80000000, v4, s2
	v_cndmask_b32_e64 v7, 0x80000000, v3, s2
	v_cndmask_b32_e64 v13, 0x80000000, v5, s2
	v_cndmask_b32_e64 v17, 0x80000000, v6, s2
	s_mov_b32 s36, s4
	v_cndmask_b32_e64 v21, 0x80000000, v9, s2
	v_cndmask_b32_e64 v25, 0x80000000, v10, s2
	v_cndmask_b32_e64 v29, 0x80000000, v11, s2
	s_clause 0x7
	buffer_load_b128 v[1:4], v1, s[36:39], 0 offen
	buffer_load_b128 v[5:8], v7, s[36:39], 0 offen
	buffer_load_b128 v[9:12], v12, s[36:39], 0 offen
	buffer_load_b128 v[13:16], v13, s[36:39], 0 offen
	buffer_load_b128 v[17:20], v17, s[36:39], 0 offen
	buffer_load_b128 v[21:24], v21, s[36:39], 0 offen
	buffer_load_b128 v[25:28], v25, s[36:39], 0 offen
	buffer_load_b128 v[29:32], v29, s[36:39], 0 offen
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v38, s35, v36
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v39, v34, v37
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_mul_lo_u32 v36, s19, v36
	s_mul_i32 s33, s19, s10
	s_lshl_b32 s4, s19, 2
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s3, 0x800, v38
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v38, 0, v39
	v_xad_u32 v40, 0x420, v39, 0
	v_xad_u32 v41, 0x840, v39, 0
	v_xad_u32 v42, 0xc60, v39, 0
	v_xad_u32 v43, 0x1080, v39, 0
	v_xad_u32 v45, 0x14a0, v39, 0
	v_xad_u32 v46, 0x18c0, v39, 0
	v_xad_u32 v39, 0x1ce0, v39, 0
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s37, s7, 0xffff
	s_mov_b32 s36, s6
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_mul_i32 s5, s19, 12
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(7)
	ds_store_b128 v38, v[1:4]
	s_waitcnt vmcnt(6)
	ds_store_b128 v40, v[5:8]
	s_waitcnt vmcnt(5)
	ds_store_b128 v41, v[9:12]
	s_waitcnt vmcnt(4)
	ds_store_b128 v42, v[13:16]
	s_waitcnt vmcnt(3)
	ds_store_b128 v43, v[17:20]
	s_waitcnt vmcnt(2)
	ds_store_b128 v45, v[21:24]
	s_waitcnt vmcnt(1)
	ds_store_b128 v46, v[25:28]
	s_waitcnt vmcnt(0)
	ds_store_b128 v39, v[29:32]
	v_mov_b32_e32 v8, 0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v102, 15, v0
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshlrev_b32_e32 v41, 4, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v3, v8 :: v_dual_lshlrev_b32 v34, 3, v102
	v_mov_b32_e32 v13, v8
	v_dual_mov_b32 v24, v8 :: v_dual_lshlrev_b32 v39, 9, v102
	v_dual_mov_b32 v25, v8 :: v_dual_lshlrev_b32 v38, 4, v102
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add3_u32 v36, s33, v34, v36
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s2, s19, v34
	v_mov_b32_e32 v65, v8
	v_mov_b32_e32 v64, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v63, v8 :: v_dual_lshlrev_b32 v44, 1, v36
	.loc	1 580 22 is_stmt 0              ; attention_backward.py:580:22
	s_and_b32 s3, s3, s2
	.loc	1 578 26 is_stmt 1              ; attention_backward.py:578:26
	v_add_lshl_u32 v1, v36, s4, 1
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_lshl_b32 s4, s19, 3
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_lshl_u32 v2, v36, s5, 1
	v_cndmask_b32_e64 v44, 0x80000000, v44, s3
	v_mov_b32_e32 v62, v8
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	v_mov_b32_e32 v61, v8
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	buffer_load_b128 v[42:45], v44, s[36:39], 0 offen
	v_mov_b32_e32 v60, v8
	buffer_load_b128 v[46:49], v1, s[36:39], 0 offen
	v_add_lshl_u32 v1, v36, s4, 1
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v58, v8
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_or_b32_e32 v40, v39, v38
	v_dual_mov_b32 v9, v8 :: v_dual_mov_b32 v240, v65
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	s_clause 0x1
	buffer_load_b128 v[50:53], v1, s[36:39], 0 offen
	buffer_load_b128 v[54:57], v2, s[36:39], 0 offen
	v_dual_mov_b32 v17, v8 :: v_dual_mov_b32 v248, v65
	v_dual_mov_b32 v16, v8 :: v_dual_mov_b32 v237, v62
	v_dual_mov_b32 v14, v8 :: v_dual_mov_b32 v233, v58
	v_dual_mov_b32 v12, v8 :: v_dual_mov_b32 v245, v62
	v_dual_mov_b32 v10, v8 :: v_dual_mov_b32 v241, v58
	v_dual_mov_b32 v23, v8 :: v_dual_mov_b32 v238, v63
	v_dual_mov_b32 v21, v8 :: v_dual_mov_b32 v236, v61
	v_mov_b32_e32 v20, v8
	v_dual_mov_b32 v19, v8 :: v_dual_mov_b32 v234, v59
	v_dual_mov_b32 v31, v8 :: v_dual_mov_b32 v246, v63
	v_dual_mov_b32 v29, v8 :: v_dual_mov_b32 v244, v61
	v_dual_mov_b32 v27, v8 :: v_dual_mov_b32 v242, v59
	v_mov_b32_e32 v239, v64
	v_mov_b32_e32 v235, v60
	v_mov_b32_e32 v247, v64
	v_mov_b32_e32 v243, v60
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v61, 0, v40
	v_xad_u32 v62, v40, 16, 0
	v_xad_u32 v63, v40, 32, 0
	v_xad_u32 v64, v40, 48, 0
	ds_load_b128 v[120:123], v61
	ds_load_b128 v[221:224], v61 offset:256
	ds_load_b128 v[124:127], v62
	ds_load_b128 v[225:228], v62 offset:256
	ds_load_b128 v[128:131], v63
	ds_load_b128 v[76:79], v63 offset:256
	ds_load_b128 v[132:135], v64
	ds_load_b128 v[80:83], v64 offset:256
	v_xad_u32 v65, v40, 64, 0
	v_xad_u32 v66, 0x50, v40, 0
	s_waitcnt lgkmcnt(2)
	scratch_store_b128 off, v[76:79], off offset:240 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[80:83], off offset:256 ; 16-byte Folded Spill
	ds_load_b128 v[136:139], v65
	ds_load_b128 v[76:79], v65 offset:256
	ds_load_b128 v[140:143], v66
	ds_load_b128 v[80:83], v66 offset:256
	v_xad_u32 v67, 0x60, v40, 0
	s_load_b32 s4, s[0:1], 0x9c
	v_xad_u32 v68, 0x70, v40, 0
	v_xad_u32 v69, 0x80, v40, 0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[76:79], off offset:272
	scratch_store_b128 off, v[80:83], off offset:288
	v_xad_u32 v70, 0x90, v40, 0
	v_xad_u32 v71, 0xb0, v40, 0
	v_xad_u32 v72, 0xa0, v40, 0
	v_xad_u32 v73, 0xd0, v40, 0
	v_xad_u32 v74, 0xc0, v40, 0
	v_xad_u32 v75, 0xf0, v40, 0
	v_xad_u32 v40, 0xe0, v40, 0
	ds_load_b128 v[144:147], v67
	ds_load_b128 v[61:64], v67 offset:256
	ds_load_b128 v[148:151], v68
	ds_load_b128 v[65:68], v68 offset:256
	ds_load_b128 v[209:212], v69
	ds_load_b128 v[92:95], v69 offset:256
	ds_load_b128 v[213:216], v70
	ds_load_b128 v[96:99], v70 offset:256
	ds_load_b128 v[76:79], v72
	ds_load_b128 v[84:87], v72 offset:256
	ds_load_b128 v[80:83], v71
	ds_load_b128 v[88:91], v71 offset:256
	ds_load_b128 v[152:155], v74
	ds_load_b128 v[193:196], v74 offset:256
	ds_load_b128 v[156:159], v73
	ds_load_b128 v[197:200], v73 offset:256
	ds_load_b128 v[201:204], v40
	ds_load_b128 v[185:188], v40 offset:256
	ds_load_b128 v[205:208], v75
	ds_load_b128 v[189:192], v75 offset:256
	v_dual_mov_b32 v11, v8 :: v_dual_and_b32 v36, 48, v0
	v_mov_b32_e32 v2, v8
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s3, s35, s8
	s_waitcnt lgkmcnt(2)
	scratch_store_b128 off, v[185:188], off offset:208 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[189:192], off offset:224 ; 16-byte Folded Spill
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xor_b32_e32 v58, v41, v36
	v_mov_b32_e32 v22, v8
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s3, s3, s4
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s3, s3, 16
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_add_nc_u32_e32 v59, 0, v58
	v_xad_u32 v60, 0x440, v58, 0
	s_barrier
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v40, 32, v0
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_add_i32 s56, s9, s4
	v_mov_b32_e32 v7, v8
	s_sub_i32 s5, s35, s56
	v_mov_b32_e32 v6, v8
	.loc	1 589 24 is_stmt 0              ; attention_backward.py:589:24
	s_max_i32 s5, s5, 0
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v110, v8
	v_mov_b32_e32 v109, v8
	v_mov_b32_e32 v108, v8
	v_mov_b32_e32 v107, v8
	v_mov_b32_e32 v106, v8
	v_mov_b32_e32 v105, v8
	v_mov_b32_e32 v104, v8
	v_mov_b32_e32 v103, v8
	v_mov_b32_e32 v118, v8
	v_mov_b32_e32 v117, v8
	v_mov_b32_e32 v116, v8
	v_mov_b32_e32 v115, v8
	v_mov_b32_e32 v114, v8
	v_mov_b32_e32 v113, v8
	v_mov_b32_e32 v112, v8
	v_mov_b32_e32 v111, v8
	v_mov_b32_e32 v167, v8
	v_mov_b32_e32 v166, v8
	v_mov_b32_e32 v165, v8
	v_mov_b32_e32 v164, v8
	v_mov_b32_e32 v163, v8
	v_mov_b32_e32 v162, v8
	v_mov_b32_e32 v161, v8
	v_mov_b32_e32 v160, v8
	v_mov_b32_e32 v176, v8
	v_mov_b32_e32 v175, v8
	v_mov_b32_e32 v174, v8
	v_mov_b32_e32 v173, v8
	v_mov_b32_e32 v172, v8
	v_mov_b32_e32 v171, v8
	v_mov_b32_e32 v170, v8
	v_mov_b32_e32 v169, v8
	v_mov_b32_e32 v184, v8
	v_mov_b32_e32 v183, v8
	v_mov_b32_e32 v182, v8
	v_mov_b32_e32 v181, v8
	v_mov_b32_e32 v180, v8
	v_mov_b32_e32 v179, v8
	v_mov_b32_e32 v178, v8
	v_mov_b32_e32 v177, v8
	v_mov_b32_e32 v192, v8
	v_mov_b32_e32 v191, v8
	v_mov_b32_e32 v190, v8
	v_mov_b32_e32 v189, v8
	v_mov_b32_e32 v188, v8
	v_mov_b32_e32 v187, v8
	v_mov_b32_e32 v186, v8
	v_mov_b32_e32 v185, v8
	.loc	1 597 45 is_stmt 1              ; attention_backward.py:597:45
	s_and_b32 s57, s5, 0x7fffffe0
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt vmcnt(3)
	ds_store_b128 v59, v[42:45]
	.loc	1 590 24                        ; attention_backward.py:590:24
	v_med3_i32 v42, s3, 0, 0x800
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v44, v0, 4, 1
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshrrev_b32_e32 v45, 1, v40
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v43, 0xcc0, v58, 0
	s_waitcnt vmcnt(2)
	ds_store_b128 v60, v[46:49]
	.loc	1 600 19                        ; attention_backward.py:600:19
	v_readfirstlane_b32 s3, v42
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v42, 0x880, v58, 0
	s_waitcnt vmcnt(1)
	ds_store_b128 v42, v[50:53]
	s_waitcnt vmcnt(0)
	ds_store_b128 v43, v[54:57]
	.loc	1 600 19                        ; attention_backward.py:600:19
	s_add_i32 s3, s3, 31
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	.loc	1 600 17                        ; attention_backward.py:600:17
	s_and_b32 s3, s3, 0x1fe0
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_barrier
	.loc	1 598 24                        ; attention_backward.py:598:24
	s_min_u32 s58, s3, 0x800
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_ge_u32 s57, s58
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_mul_u32_u24_e32 v1, 0x110, v102
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_cmp_eq_u32_e64 s3, 0, v40
	s_clause 0x3
	s_load_b32 s59, s[0:1], 0x7c
	s_load_b64 s[36:37], s[0:1], 0x48
	s_load_b64 s[40:41], s[0:1], 0x0
	s_load_b128 s[44:47], s[0:1], 0x38
	s_mul_i32 s61, s18, 3
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v2, 0xf0, v1, 0
	v_xad_u32 v3, 0xe0, v1, 0
	v_xad_u32 v4, 0xd0, v1, 0
	v_xad_u32 v5, 0xc0, v1, 0
	v_xad_u32 v6, 0xb0, v1, 0
	ds_load_b128 v[13:16], v2
	ds_load_b128 v[9:12], v3
	v_xad_u32 v7, 0xa0, v1, 0
	v_xad_u32 v8, 0x90, v1, 0
	v_xad_u32 v2, 0x80, v1, 0
	v_xad_u32 v3, 0x70, v1, 0
	s_mul_i32 s62, s18, 9
	s_mul_i32 s63, s18, 11
	s_lshl_b32 s64, s18, 4
	s_mul_i32 s65, s18, 17
	s_mul_i32 s66, s18, 18
	s_mul_i32 s67, s18, 19
	s_mul_i32 s68, s18, 24
	.loc	1 672 31 is_stmt 1              ; attention_backward.py:672:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s60, s59, 0x3fb8aa3b
	s_and_b32 s47, s47, 0xffff
	s_mul_i32 s69, s18, 25
	s_mul_i32 s70, s18, 26
	s_mul_i32 s71, s18, 27
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s37, s37, 0xffff
	s_lshl_b32 s72, s19, 1
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[9:12], off offset:496
	scratch_store_b128 off, v[13:16], off offset:512
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[13:16], v4
	ds_load_b128 v[9:12], v5
	v_xad_u32 v4, 0x60, v1, 0
	v_xad_u32 v5, 0x50, v1, 0
	s_mul_i32 s73, s19, 3
	s_lshl_b32 s74, s19, 4
	s_mul_i32 s75, s19, 17
	s_mul_i32 s76, s19, 18
	s_mul_i32 s77, s19, 19
	s_and_b32 s45, s45, 0xffff
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_sub_i32 s78, s4, s8
	s_mov_b32 s21, s20
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s48, s46
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[9:12], off offset:528
	scratch_store_b128 off, v[13:16], off offset:544
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[13:16], v6
	ds_load_b128 v[9:12], v7
	v_xad_u32 v6, v1, 64, 0
	s_mov_b32 s49, s47
	s_mov_b32 s50, s38
	s_mov_b32 s51, s39
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[9:12], off offset:560
	scratch_store_b128 off, v[13:16], off offset:576
	ds_load_b128 v[11:14], v8
	ds_load_b128 v[7:10], v2
	v_xad_u32 v2, v1, 48, 0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[7:10], off offset:592
	scratch_store_b128 off, v[11:14], off offset:608
	ds_load_b128 v[12:15], v3
	ds_load_b128 v[8:11], v4
	v_xad_u32 v7, v1, 32, 0
	v_mad_u32_u24 v3, 0x110, v102, 0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[8:11], off offset:624
	scratch_store_b128 off, v[12:15], off offset:640
	ds_load_b128 v[12:15], v5
	ds_load_b128 v[8:11], v6
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[8:11], off offset:656
	scratch_store_b128 off, v[12:15], off offset:672
	ds_load_b128 v[8:11], v2
	ds_load_b128 v[4:7], v7
	v_xad_u32 v2, v1, 16, 0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[4:7], off offset:688
	scratch_store_b128 off, v[8:11], off offset:704
	ds_load_b128 v[13:16], v2
	ds_load_b128 v[9:12], v3
	v_cndmask_b32_e64 v4, 0x840, 0, s3
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v6, 9, v35
	v_and_b32_e32 v5, 48, v41
	v_lshrrev_b32_e32 v7, 2, v40
	v_lshrrev_b32_e32 v8, 1, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v27, v25 :: v_dual_lshlrev_b32 v2, 3, v0
	v_mov_b32_e32 v26, v25
	v_mov_b32_e32 v29, v25
	v_xor_b32_e32 v3, v5, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v2, 48, v2
	v_lshl_or_b32 v8, v40, 7, v1
	v_mov_b32_e32 v32, v25
	v_mov_b32_e32 v18, v25
	v_mov_b32_e32 v20, v25
	v_mov_b32_e32 v22, v25
	v_mov_b32_e32 v24, v25
	v_mov_b32_e32 v186, v25
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[9:12], off offset:720
	scratch_store_b128 off, v[13:16], off offset:736
	v_xor_b32_e32 v9, v4, v37
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_lshrrev_b32_e32 v4, 3, v40
	v_or3_b32 v10, v6, v7, v5
	v_bfe_i32 v5, v0, 3, 1
	v_cndmask_b32_e64 v6, 0x420, 0, s3
	v_dual_mov_b32 v28, v25 :: v_dual_lshlrev_b32 v7, 6, v0
	.loc	1 607 13                        ; attention_backward.py:607:13
	v_mad_u64_u32 v[11:12], null, s18, v4, v[33:34]
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_lshrrev_b32_e32 v4, 2, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_or_b32 v5, 0x210, v5, v6
	v_and_or_b32 v6, 0x1c0, v7, v2
	v_or_b32_e32 v7, v3, v39
	v_dual_mov_b32 v31, v25 :: v_dual_and_b32 v0, 16, v0
	.loc	1 607 13                        ; attention_backward.py:607:13
	v_mad_u64_u32 v[3:4], null, s19, v4, v[34:35]
	.loc	1 608 39                        ; attention_backward.py:608:39
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[11:12], off offset:760
	scratch_store_b32 off, v9, off offset:752
	scratch_store_b32 off, v7, off offset:768
	v_dual_mov_b32 v17, v25 :: v_dual_lshlrev_b32 v0, 2, v0
	v_xor_b32_e32 v1, 0x210, v9
	scratch_store_b64 off, v[3:4], off offset:772 ; 8-byte Folded Spill
	v_dual_mov_b32 v19, v25 :: v_dual_lshlrev_b32 v4, 1, v102
	.loc	1 607 13                        ; attention_backward.py:607:13
	v_mul_u32_u24_e32 v3, 0x210, v102
	v_xor_b32_e32 v5, v5, v6
	v_mov_b32_e32 v21, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v11, v4, v0, v40
	v_add3_u32 v254, 0, v40, v4
	v_lshl_or_b32 v4, v36, 6, v38
	v_lshlrev_b32_e32 v0, 2, v36
	v_lshl_or_b32 v6, v40, 8, v3
	v_xor_b32_e32 v3, 0x420, v9
	v_mov_b32_e32 v23, v25
	v_lshl_or_b32 v13, v102, 6, v2
	v_xor_b32_e32 v12, v4, v0
	v_add_nc_u32_e32 v0, 0, v1
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v4, off offset:800
	scratch_store_b32 off, v44, off offset:1332
	scratch_store_b32 off, v6, off offset:788
	scratch_store_b32 off, v5, off offset:780
	scratch_store_b32 off, v0, off offset:812
	v_add_nc_u32_e32 v0, 0, v3
	v_xor_b32_e32 v1, 0x1080, v9
	v_xor_b32_e32 v2, 0x1290, v9
	v_xor_b32_e32 v3, 0x14a0, v9
	v_xor_b32_e32 v4, 0x16b0, v9
	scratch_store_b32 off, v0, off offset:816 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x630, v9
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v33, s35, v44
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v14, v25
	v_add_nc_u32_e32 v0, 0, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s0, 0x800, v33
	v_mov_b32_e32 v16, v25
	v_mov_b32_e32 v188, v25
	v_mov_b32_e32 v190, v25
	scratch_store_b32 off, v0, off offset:820 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 32, v6
	v_mov_b32_e32 v192, v25
	v_mov_b32_e32 v178, v25
	v_mov_b32_e32 v180, v25
	scratch_store_b32 off, v0, off offset:824 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	v_xor_b32_e32 v2, 48, v6
	v_mov_b32_e32 v182, v25
	v_mov_b32_e32 v184, v25
	v_mov_b32_e32 v170, v25
	scratch_store_b32 off, v0, off offset:828 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v3
	v_xor_b32_e32 v3, 64, v6
	v_mov_b32_e32 v172, v25
	v_mov_b32_e32 v174, v25
	v_mov_b32_e32 v176, v25
	scratch_store_b32 off, v0, off offset:832 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	v_xor_b32_e32 v4, 0x50, v6
	v_mov_b32_e32 v160, v25
	v_mov_b32_e32 v162, v25
	v_mov_b32_e32 v185, v25
	scratch_store_b32 off, v0, off offset:836 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v6
	v_mov_b32_e32 v164, v25
	v_mov_b32_e32 v166, v25
	v_mov_b32_e32 v187, v25
	v_mov_b32_e32 v244, v25
	v_add_nc_u32_e32 v0, 0, v0
	v_mov_b32_e32 v246, v25
	v_mov_b32_e32 v248, v25
	v_mov_b32_e32 v189, v25
	v_mov_b32_e32 v250, v25
	scratch_store_b32 off, v0, off offset:840 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 0x70, v6
	v_mov_b32_e32 v34, v25
	v_mov_b32_e32 v36, v25
	v_mov_b32_e32 v38, v25
	scratch_store_b32 off, v0, off offset:844 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	v_xor_b32_e32 v2, 0x80, v6
	v_mov_b32_e32 v191, v25
	v_mov_b32_e32 v40, v25
	v_mov_b32_e32 v177, v25
	scratch_store_b32 off, v0, off offset:848 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v3
	v_xor_b32_e32 v3, 0x90, v6
	v_mov_b32_e32 v179, v25
	v_mov_b32_e32 v181, v25
	v_mov_b32_e32 v183, v25
	scratch_store_b32 off, v0, off offset:852 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	v_xor_b32_e32 v4, 0xa0, v6
	v_mov_b32_e32 v169, v25
	v_mov_b32_e32 v171, v25
	v_mov_b32_e32 v173, v25
	scratch_store_b32 off, v0, off offset:856 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v6
	v_mov_b32_e32 v175, v25
	v_mov_b32_e32 v161, v25
	v_mov_b32_e32 v163, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v165, v25 :: v_dual_add_nc_u32 v0, 0, v0
	v_mov_b32_e32 v167, v25
	v_mov_b32_e32 v245, v25
	v_mov_b32_e32 v247, v25
	v_mov_b32_e32 v37, v25
	scratch_store_b32 off, v0, off offset:860 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 0xc0, v6
	v_mov_b32_e32 v249, v25
	v_mov_b32_e32 v251, v25
	v_mov_b32_e32 v35, v25
	scratch_store_b32 off, v0, off offset:864 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	v_xor_b32_e32 v2, 0xd0, v6
	v_mov_b32_e32 v39, v25
	v_mov_b32_e32 v41, v25
	s_clause 0x6                            ; 100-byte Folded Spill
	scratch_store_b128 off, v[34:37], off
	scratch_store_b128 off, v[38:41], off offset:16
	scratch_store_b128 off, v[34:37], off offset:32
	scratch_store_b128 off, v[38:41], off offset:48
	scratch_store_b128 off, v[34:37], off offset:64
	scratch_store_b128 off, v[38:41], off offset:80
	scratch_store_b32 off, v0, off offset:868
	v_add_nc_u32_e32 v0, 0, v3
	v_xor_b32_e32 v3, 0xe0, v6
	v_mov_b32_e32 v30, v25
	scratch_store_b32 off, v0, off offset:872 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	v_xor_b32_e32 v4, 0xf0, v6
	scratch_store_b32 off, v0, off offset:876 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xb0, v6
	v_mov_b32_e32 v6, v25
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:880 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 0x1b0, v7
	scratch_store_b32 off, v0, off offset:884 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	v_xor_b32_e32 v2, 32, v7
	scratch_store_b32 off, v0, off offset:888 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v3
	v_xor_b32_e32 v3, 0xb0, v7
	scratch_store_b32 off, v0, off offset:892 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	v_xor_b32_e32 v4, 0x190, v7
	scratch_store_b32 off, v0, off offset:896 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x90, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:900 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x120, v7
	v_dual_mov_b32 v7, v25 :: v_dual_add_nc_u32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:904 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 32, v5
	scratch_store_b32 off, v0, off offset:908 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	v_xor_b32_e32 v2, 48, v5
	scratch_store_b32 off, v0, off offset:912 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v3
	v_xor_b32_e32 v3, 0x110, v12
	v_add_nc_u32_e32 v234, 0, v2
	v_mov_b32_e32 v2, v25
	scratch_store_b32 off, v0, off offset:916 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	v_xor_b32_e32 v4, 0x220, v12
	scratch_store_b32 off, v0, off offset:920 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v5
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v5, v25 :: v_dual_add_nc_u32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:924 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_mov_b32_e32 v1, v25
	scratch_store_b32 off, v0, off offset:928 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v3
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v255, off, off offset:924
	scratch_load_b32 v233, off, off offset:928
	v_mov_b32_e32 v3, v25
	scratch_store_b32 off, v0, off offset:1320 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1324
	scratch_store_b32 off, v12, off offset:804
	v_xor_b32_e32 v0, 0x330, v12
	v_mov_b32_e32 v12, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v4, v25 :: v_dual_add_nc_u32 v237, 0, v0
	v_xor_b32_e32 v0, 16, v8
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:980 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:984 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v8
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:988 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:932 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x50, v8
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:936 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:940 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x70, v8
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:944 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x80, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:948 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x90, v8
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:952 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xa0, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:956 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xb0, v8
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:960 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xc0, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:964 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xd0, v8
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:968 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xe0, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:972
	scratch_store_b32 off, v8, off offset:792
	v_xor_b32_e32 v0, 0xf0, v8
	v_mov_b32_e32 v8, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:976 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x90, v11
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:992 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x120, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:996
	scratch_store_b32 off, v11, off offset:796
	v_xor_b32_e32 v0, 0x1b0, v11
	v_dual_mov_b32 v11, v25 :: v_dual_add_nc_u32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:1000 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:1052 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v13
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1056
	scratch_store_b32 off, v13, off offset:808
	v_xor_b32_e32 v0, 48, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v13, v25 :: v_dual_add_nc_u32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:1060 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x90, v10
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:1004 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x120, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:1008 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1b0, v10
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:1012 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:1016 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x130, v10
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:1020 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1a0, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:1024 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v10
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:1028 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xb0, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:1032 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x190, v10
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:1036 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:1040 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xa0, v10
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1044
	scratch_store_b32 off, v10, off offset:756
	v_xor_b32_e32 v0, 0x110, v10
	v_mov_b32_e32 v10, v25
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:1048 ; 4-byte Folded Spill
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, 2, v33
	scratch_store_b32 off, v0, off offset:1064 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 4, v33
	scratch_store_b32 off, v0, off offset:1068 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 6, v33
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1072
	scratch_store_b32 off, v102, off offset:1328
	scratch_store_b32 off, v45, off offset:1336
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v0, v45, v102
	.loc	1 514 23                        ; attention_backward.py:514:23
	scratch_store_b32 off, v0, off offset:1076 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 8, v33
	scratch_store_b32 off, v0, off offset:1080 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 10, v33
	scratch_store_b32 off, v0, off offset:1084 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 12, v33
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1312
	scratch_store_b32 off, v33, off offset:784
	v_or_b32_e32 v0, 14, v33
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_clause 0x1a                           ; 420-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1316
	scratch_store_b128 off, v[61:64], off offset:1184
	scratch_store_b128 off, v[65:68], off offset:1200
	scratch_store_b128 off, v[92:95], off offset:1280
	scratch_store_b128 off, v[96:99], off offset:1296
	scratch_store_b128 off, v[76:79], off offset:1088
	scratch_store_b128 off, v[80:83], off offset:1104
	scratch_store_b128 off, v[84:87], off offset:1216
	scratch_store_b128 off, v[88:91], off offset:1232
	scratch_store_b128 off, v[152:155], off offset:1120
	scratch_store_b128 off, v[156:159], off offset:1136
	scratch_store_b128 off, v[193:196], off offset:1248
	scratch_store_b128 off, v[197:200], off offset:1264
	scratch_store_b128 off, v[201:204], off offset:1152
	scratch_store_b128 off, v[205:208], off offset:1168
	scratch_store_b128 off, v[120:123], off offset:304
	scratch_store_b128 off, v[124:127], off offset:320
	scratch_store_b128 off, v[221:224], off offset:336
	scratch_store_b128 off, v[225:228], off offset:352
	scratch_store_b128 off, v[128:131], off offset:368
	scratch_store_b128 off, v[132:135], off offset:384
	scratch_store_b128 off, v[136:139], off offset:400
	scratch_store_b128 off, v[140:143], off offset:416
	scratch_store_b128 off, v[144:147], off offset:432
	scratch_store_b128 off, v[148:151], off offset:448
	scratch_store_b128 off, v[209:212], off offset:464
	scratch_store_b128 off, v[213:216], off offset:480
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	scratch_load_b64 v[33:34], off, off offset:760 ; 8-byte Folded Reload
	.loc	1 664 25 is_stmt 1              ; attention_backward.py:664:25
	s_add_i32 s1, s57, s52
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[244:247], off offset:96
	scratch_store_b128 off, v[248:251], off offset:112
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v208, s27 :: v_dual_mov_b32 v203, s22
	v_dual_mov_b32 v206, s25 :: v_dual_mov_b32 v201, s20
	v_mov_b32_e32 v204, s23
	v_mov_b32_e32 v202, s21
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s46, s38
	s_mov_b32 s47, s39
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v207, s26
	v_mov_b32_e32 v205, s24
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[33:34], null, s1, s18, v[33:34]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v35, v33, s53, 1
	v_lshlrev_b32_e32 v0, 1, v33
	v_add_lshl_u32 v37, v33, s54, 1
	v_add_lshl_u32 v38, v33, s62, 1
	v_add_lshl_u32 v39, v33, s55, 1
	v_add_lshl_u32 v34, v33, s18, 1
	v_add_lshl_u32 v36, v33, s61, 1
	v_add_lshl_u32 v40, v33, s63, 1
	v_add_lshl_u32 v41, v33, s64, 1
	v_add_lshl_u32 v42, v33, s65, 1
	v_add_lshl_u32 v43, v33, s66, 1
	v_add_lshl_u32 v44, v33, s67, 1
	v_add_lshl_u32 v45, v33, s68, 1
	v_add_lshl_u32 v46, v33, s69, 1
	v_add_lshl_u32 v47, v33, s70, 1
	v_add_lshl_u32 v33, v33, s71, 1
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v48, 0x80000000, v38
	v_dual_cndmask_b32 v38, 0x80000000, v39 :: v_dual_cndmask_b32 v51, 0x80000000, v46
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_cndmask_b32 v39, 0x80000000, v41
	v_dual_cndmask_b32 v36, 0x80000000, v36 :: v_dual_cndmask_b32 v41, 0x80000000, v43
	v_dual_cndmask_b32 v50, 0x80000000, v40 :: v_dual_cndmask_b32 v59, 0x80000000, v33
	v_cndmask_b32_e32 v40, 0x80000000, v42, vcc_lo
	v_dual_cndmask_b32 v42, 0x80000000, v44 :: v_dual_cndmask_b32 v43, 0x80000000, v45
	v_cndmask_b32_e32 v44, 0x80000000, v47, vcc_lo
	s_clause 0xf
	buffer_load_b128 v[72:75], v0, s[40:43], 0 offen
	buffer_load_b128 v[76:79], v35, s[40:43], 0 offen
	buffer_load_b128 v[64:67], v37, s[40:43], 0 offen
	buffer_load_b128 v[68:71], v38, s[40:43], 0 offen
	buffer_load_b128 v[217:220], v39, s[40:43], 0 offen
	buffer_load_b128 v[193:196], v41, s[40:43], 0 offen
	buffer_load_b128 v[152:155], v43, s[40:43], 0 offen
	buffer_load_b128 v[156:159], v44, s[40:43], 0 offen
	buffer_load_b128 v[55:58], v34, s[40:43], 0 offen
	buffer_load_b128 v[37:40], v40, s[40:43], 0 offen
	buffer_load_b128 v[60:63], v36, s[40:43], 0 offen
	buffer_load_b128 v[42:45], v42, s[40:43], 0 offen
	buffer_load_b128 v[46:49], v48, s[40:43], 0 offen
	buffer_load_b128 v[33:36], v51, s[40:43], 0 offen
	buffer_load_b128 v[51:54], v50, s[40:43], 0 offen
	buffer_load_b128 v[250:253], v59, s[40:43], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:752 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, 0, v0
	ds_store_b128 v0, v[72:75]
	ds_store_b128 v0, v[217:220] offset:8192
	scratch_load_b32 v0, off, off offset:812 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[55:58]
	ds_store_b128 v0, v[37:40] offset:8192
	scratch_load_b32 v0, off, off offset:816 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[76:79]
	ds_store_b128 v0, v[193:196] offset:8192
	scratch_load_b32 v0, off, off offset:820 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[60:63]
	ds_store_b128 v0, v[42:45] offset:8192
	scratch_load_b32 v0, off, off offset:824 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[64:67]
	ds_store_b128 v0, v[152:155] offset:8192
	scratch_load_b32 v0, off, off offset:828 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[46:49]
	ds_store_b128 v0, v[33:36] offset:8192
	scratch_load_b32 v0, off, off offset:832 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[68:71]
	ds_store_b128 v0, v[156:159] offset:8192
	scratch_load_b32 v0, off, off offset:836 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[51:54]
	ds_store_b128 v0, v[250:253] offset:8192
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x6                            ; 52-byte Folded Reload
	scratch_load_b32 v0, off, off offset:788
	scratch_load_b32 v41, off, off offset:840
	scratch_load_b32 v50, off, off offset:844
	scratch_load_b32 v59, off, off offset:848
	scratch_load_b128 v[241:244], off, off offset:1152
	scratch_load_b128 v[245:248], off, off offset:1168
	scratch_load_b32 v238, off, off offset:1076
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v0, 0, v0
	s_waitcnt vmcnt(5)
	ds_load_b128 v[84:87], v41
	s_waitcnt vmcnt(3)
	ds_load_b128 v[92:95], v59
	ds_load_b128 v[96:99], v0 offset:256
	ds_load_b128 v[100:103], v41 offset:256
	ds_load_b128 v[104:107], v50 offset:256
	ds_load_b128 v[108:111], v59 offset:256
	ds_load_b128 v[80:83], v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:856
	scratch_load_b32 v0, off, off offset:852
	ds_load_b128 v[88:91], v50
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[120:127], v[80:87], v[201:208]
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(1)
	ds_load_b128 v[84:87], v41
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[128:135], v[88:95], v[112:119]
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	ds_load_b128 v[80:83], v0
	ds_load_b128 v[88:91], v0 offset:256
	ds_load_b128 v[92:95], v41 offset:256
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:864
	scratch_load_b32 v0, off, off offset:860
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[136:143], v[80:87], v[112:119]
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	ds_load_b128 v[80:83], v0
	ds_load_b128 v[120:123], v0 offset:256
	ds_load_b128 v[124:127], v41 offset:256
	ds_load_b128 v[84:87], v41
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:872
	scratch_load_b32 v0, off, off offset:868
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[144:151], v[80:87], v[112:119]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[144:147], off, off offset:1088
	scratch_load_b128 v[148:151], off, off offset:1104
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	ds_load_b128 v[80:83], v0
	ds_load_b128 v[128:131], v0 offset:256
	ds_load_b128 v[132:135], v41 offset:256
	ds_load_b128 v[84:87], v41
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:880
	scratch_load_b32 v0, off, off offset:876
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[209:216], v[80:87], v[112:119]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[209:212], off, off offset:1120
	scratch_load_b128 v[213:216], off, off offset:1136
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	ds_load_b128 v[80:83], v0
	ds_load_b128 v[136:139], v0 offset:256
	ds_load_b128 v[140:143], v41 offset:256
	ds_load_b128 v[84:87], v41
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:888
	scratch_load_b32 v0, off, off offset:884
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[144:151], v[80:87], v[112:119]
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	ds_load_b128 v[80:83], v0
	ds_load_b128 v[144:147], v0 offset:256
	ds_load_b128 v[148:151], v41 offset:256
	ds_load_b128 v[84:87], v41
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:896
	scratch_load_b32 v0, off, off offset:892
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[209:216], v[80:87], v[112:119]
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	ds_load_b128 v[80:83], v0
	ds_load_b128 v[209:212], v0 offset:256
	ds_load_b128 v[213:216], v41 offset:256
	ds_load_b128 v[84:87], v41
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[241:248], v[80:87], v[112:119]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[80:83], off, off offset:240
	scratch_load_b128 v[84:87], off, off offset:256
	v_wmma_f32_16x16x16_bf16 v[112:119], v[221:228], v[96:103], v[112:119]
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[80:87], v[104:111], v[112:119]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[80:83], off, off offset:272
	scratch_load_b128 v[84:87], off, off offset:288
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[80:87], v[88:95], v[112:119]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[80:83], off, off offset:1184
	scratch_load_b128 v[84:87], off, off offset:1200
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[80:87], v[120:127], v[112:119]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[80:83], off, off offset:1280
	scratch_load_b128 v[84:87], off, off offset:1296
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[80:87], v[128:135], v[112:119]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[80:83], off, off offset:1216
	scratch_load_b128 v[84:87], off, off offset:1232
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[80:87], v[136:143], v[112:119]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[80:83], off, off offset:1248
	scratch_load_b128 v[84:87], off, off offset:1264
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[80:87], v[144:151], v[112:119]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[80:83], off, off offset:208
	scratch_load_b128 v[84:87], off, off offset:224
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[80:87], v[209:216], v[112:119]
	scratch_load_b64 v[80:81], off, off offset:772 ; 8-byte Folded Reload
	v_or_b32_e32 v0, s52, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_add_lshl_u32 v0, v0, s57, 2
	buffer_load_b32 v41, v0, s[48:51], 0 offen
	s_waitcnt vmcnt(1)
	v_mad_u64_u32 v[80:81], null, s1, s19, v[80:81]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v83, v80, s72, 1
	v_add_lshl_u32 v84, v80, s73, 1
	v_lshlrev_b32_e32 v81, 1, v80
	v_add_lshl_u32 v82, v80, s19, 1
	v_add_lshl_u32 v85, v80, s74, 1
	v_add_lshl_u32 v86, v80, s75, 1
	v_add_lshl_u32 v87, v80, s76, 1
	v_add_lshl_u32 v80, v80, s77, 1
	v_cndmask_b32_e64 v83, 0x80000000, v83, s2
	v_cndmask_b32_e64 v84, 0x80000000, v84, s2
	v_cndmask_b32_e64 v81, 0x80000000, v81, s2
	v_cndmask_b32_e64 v82, 0x80000000, v82, s2
	v_cndmask_b32_e64 v85, 0x80000000, v85, s2
	v_cndmask_b32_e64 v86, 0x80000000, v86, s2
	v_cndmask_b32_e64 v87, 0x80000000, v87, s2
	v_cndmask_b32_e64 v80, 0x80000000, v80, s2
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v0, v0, s[36:39], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_b128 v[120:123], v83, s[44:47], 0 offen
	buffer_load_b128 v[124:127], v84, s[44:47], 0 offen
	buffer_load_b128 v[136:139], v81, s[44:47], 0 offen
	buffer_load_b128 v[140:143], v82, s[44:47], 0 offen
	buffer_load_b128 v[128:131], v87, s[44:47], 0 offen
	buffer_load_b128 v[132:135], v80, s[44:47], 0 offen
	buffer_load_b128 v[144:147], v85, s[44:47], 0 offen
	buffer_load_b128 v[148:151], v86, s[44:47], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v84, off, off offset:768
	scratch_load_b32 v85, off, off offset:900
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(11)
	v_fma_f32 v50, s60, v112, -v41
	v_fma_f32 v59, s60, v113, -v41
	v_fma_f32 v230, s60, v114, -v41
	v_fma_f32 v231, s60, v115, -v41
	v_fma_f32 v232, s60, v116, -v41
	v_fma_f32 v249, s60, v117, -v41
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(9)
	v_mov_b16_e32 v81.l, v120.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v81.h, v124.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v80.l, v136.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v80.h, v140.l
	v_mov_b16_e32 v83.l, v120.h
	v_mov_b16_e32 v83.h, v124.h
	v_mov_b16_e64 v82.l, v136.h
	v_mov_b16_e64 v82.h, v140.h
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v84, 0, v84
	ds_store_2addr_b64 v84, v[80:81], v[82:83] offset1:8
	v_mov_b16_e32 v81.l, v121.l
	v_mov_b16_e32 v81.h, v125.l
	v_mov_b16_e64 v80.l, v137.l
	v_mov_b16_e64 v80.h, v141.l
	v_mov_b16_e32 v83.l, v121.h
	v_mov_b16_e32 v83.h, v125.h
	v_mov_b16_e64 v82.l, v137.h
	v_mov_b16_e64 v82.h, v141.h
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v85, v[80:81], v[82:83] offset1:8
	scratch_load_b32 v85, off, off offset:904 ; 4-byte Folded Reload
	v_mov_b16_e32 v81.l, v122.l
	v_mov_b16_e32 v81.h, v126.l
	v_mov_b16_e64 v80.l, v138.l
	v_mov_b16_e64 v80.h, v142.l
	v_mov_b16_e32 v83.l, v122.h
	v_mov_b16_e32 v83.h, v126.h
	v_mov_b16_e64 v82.l, v138.h
	v_mov_b16_e64 v82.h, v142.h
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v85, v[80:81], v[82:83] offset1:8
	scratch_load_b32 v85, off, off offset:908 ; 4-byte Folded Reload
	v_mov_b16_e32 v81.l, v123.l
	v_mov_b16_e32 v81.h, v127.l
	v_mov_b16_e64 v80.l, v139.l
	v_mov_b16_e64 v80.h, v143.l
	v_mov_b16_e32 v83.l, v123.h
	v_mov_b16_e32 v83.h, v127.h
	v_mov_b16_e64 v82.l, v139.h
	v_mov_b16_e64 v82.h, v143.h
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v85, v[80:81], v[82:83] offset1:8
	scratch_load_b32 v85, off, off offset:912 ; 4-byte Folded Reload
	v_mov_b16_e64 v81.l, v128.l
	v_mov_b16_e64 v81.h, v132.l
	v_mov_b16_e64 v80.l, v144.l
	v_mov_b16_e64 v80.h, v148.l
	v_mov_b16_e64 v83.l, v128.h
	v_mov_b16_e64 v83.h, v132.h
	v_mov_b16_e64 v82.l, v144.h
	v_mov_b16_e64 v82.h, v148.h
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v85, v[80:81], v[82:83] offset1:8
	scratch_load_b32 v85, off, off offset:916 ; 4-byte Folded Reload
	v_mov_b16_e64 v81.l, v129.l
	v_mov_b16_e64 v81.h, v133.l
	v_mov_b16_e64 v80.l, v145.l
	v_mov_b16_e64 v80.h, v149.l
	v_mov_b16_e64 v83.l, v129.h
	v_mov_b16_e64 v83.h, v133.h
	v_mov_b16_e64 v82.l, v145.h
	v_mov_b16_e64 v82.h, v149.h
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v85, v[80:81], v[82:83] offset1:8
	v_mov_b16_e64 v81.l, v130.l
	v_mov_b16_e64 v81.h, v134.l
	v_mov_b16_e64 v80.l, v146.l
	v_mov_b16_e64 v80.h, v150.l
	v_mov_b16_e64 v83.l, v130.h
	v_mov_b16_e64 v83.h, v134.h
	v_mov_b16_e64 v82.l, v146.h
	v_mov_b16_e64 v82.h, v150.h
	ds_store_2addr_b64 v84, v[80:81], v[82:83] offset0:32 offset1:40
	scratch_load_b32 v84, off, off offset:920 ; 4-byte Folded Reload
	v_mov_b16_e64 v81.l, v131.l
	v_mov_b16_e64 v81.h, v135.l
	v_mov_b16_e64 v80.l, v147.l
	v_mov_b16_e64 v80.h, v151.l
	v_mov_b16_e64 v83.l, v131.h
	v_mov_b16_e64 v83.h, v135.h
	v_mov_b16_e64 v82.l, v147.h
	v_mov_b16_e64 v82.h, v151.h
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v84, v[80:81], v[82:83] offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v80, off, off offset:780 ; 4-byte Folded Reload
	v_dual_mov_b32 v248, v167 :: v_dual_mov_b32 v247, v166
	v_dual_mov_b32 v246, v165 :: v_dual_mov_b32 v245, v164
	v_dual_mov_b32 v244, v163 :: v_dual_mov_b32 v243, v162
	v_dual_mov_b32 v242, v161 :: v_dual_mov_b32 v241, v160
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v160, s60, v118, -v41
	v_fma_f32 v41, s60, v119, -v41
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v41
	.loc	1 732 34 is_stmt 1              ; attention_backward.py:732:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v225, 0, v80
	ds_load_b128 v[116:119], v225
	ds_load_b128 v[108:111], v225 offset:2048
	ds_load_b128 v[100:103], v225 offset:4096
	ds_load_b128 v[92:95], v225 offset:6144
	ds_load_b128 v[112:115], v255
	ds_load_b128 v[104:107], v255 offset:2048
	ds_load_b128 v[96:99], v255 offset:4096
	ds_load_b128 v[88:91], v255 offset:6144
	ds_load_b128 v[197:200], v233
	ds_load_b128 v[221:224], v233 offset:2048
	ds_load_b128 v[80:83], v233 offset:4096
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[80:83], off offset:176 ; 16-byte Folded Spill
	ds_load_b128 v[80:83], v233 offset:6144
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[80:83], off offset:144 ; 16-byte Folded Spill
	ds_load_b128 v[226:229], v234
	ds_load_b128 v[80:83], v234 offset:2048
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[80:83], off offset:192 ; 16-byte Folded Spill
	ds_load_b128 v[80:83], v234 offset:4096
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[80:83], off offset:160 ; 16-byte Folded Spill
	ds_load_b128 v[80:83], v234 offset:6144
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[80:83], off offset:128 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v80, off, off offset:804 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v80, 0, v80
	ds_store_b128 v80, v[136:139]
	ds_store_b128 v80, v[144:147] offset:4096
	scratch_load_b32 v80, off, off offset:1320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v80, v[140:143]
	ds_store_b128 v80, v[148:151] offset:4096
	scratch_load_b32 v80, off, off offset:1324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v80, v[120:123]
	ds_store_b128 v80, v[128:131] offset:4096
	ds_store_b128 v237, v[124:127]
	ds_store_b128 v237, v[132:135] offset:4096
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 36-byte Folded Reload
	scratch_load_b32 v80, off, off offset:792
	scratch_load_b128 v[161:164], off, off offset:720
	scratch_load_b128 v[165:168], off, off offset:736
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v80, 0, v80
	ds_load_b128 v[209:212], v80
	scratch_load_b32 v80, off, off offset:980 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[213:216], v80
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[80:87], v[161:168], v[209:216], v[201:208]
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x9                            ; 64-byte Folded Reload
	scratch_load_b32 v161, off, off offset:984
	scratch_load_b128 v[209:212], off, off offset:688
	scratch_load_b128 v[213:216], off, off offset:704
	scratch_load_b32 v163, off, off offset:1068
	scratch_load_b32 v164, off, off offset:1072
	scratch_load_b32 v165, off, off offset:1080
	scratch_load_b32 v166, off, off offset:1084
	scratch_load_b32 v167, off, off offset:1312
	scratch_load_b32 v168, off, off offset:1316
	scratch_load_b32 v162, off, off offset:1064
	s_waitcnt vmcnt(9)
	ds_load_b128 v[201:204], v161
	scratch_load_b32 v161, off, off offset:988 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[205:208], v161
	scratch_load_b32 v161, off, off offset:932 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[80:87], v[209:216], v[201:208], v[80:87]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[209:212], off, off offset:656
	scratch_load_b128 v[213:216], off, off offset:672
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	ds_load_b128 v[201:204], v161
	scratch_load_b32 v161, off, off offset:936 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[205:208], v161
	scratch_load_b32 v161, off, off offset:940 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[80:87], v[209:216], v[201:208], v[80:87]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[209:212], off, off offset:624
	scratch_load_b128 v[213:216], off, off offset:640
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	ds_load_b128 v[201:204], v161
	scratch_load_b32 v161, off, off offset:944 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[205:208], v161
	scratch_load_b32 v161, off, off offset:948 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[80:87], v[209:216], v[201:208], v[80:87]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[209:212], off, off offset:592
	scratch_load_b128 v[213:216], off, off offset:608
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	ds_load_b128 v[201:204], v161
	scratch_load_b32 v161, off, off offset:952 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[205:208], v161
	scratch_load_b32 v161, off, off offset:956 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[80:87], v[209:216], v[201:208], v[80:87]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[209:212], off, off offset:560
	scratch_load_b128 v[213:216], off, off offset:576
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	ds_load_b128 v[201:204], v161
	scratch_load_b32 v161, off, off offset:960 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[205:208], v161
	scratch_load_b32 v161, off, off offset:964 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[80:87], v[209:216], v[201:208], v[80:87]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[209:212], off, off offset:528
	scratch_load_b128 v[213:216], off, off offset:544
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	ds_load_b128 v[201:204], v161
	scratch_load_b32 v161, off, off offset:968 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[205:208], v161
	scratch_load_b32 v161, off, off offset:972 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[80:87], v[209:216], v[201:208], v[80:87]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[209:212], off, off offset:496
	scratch_load_b128 v[213:216], off, off offset:512
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	ds_load_b128 v[201:204], v161
	scratch_load_b32 v161, off, off offset:976 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[205:208], v161
	scratch_load_b32 v161, off, off offset:784 ; 4-byte Folded Reload
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_wmma_f32_16x16x16_bf16 v[80:87], v[209:216], v[201:208], v[80:87]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v81, v81, v0
	v_sub_f32_e32 v201, v82, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v83, v83, v0
	v_sub_f32_e32 v80, v80, v0
	v_sub_f32_e32 v85, v85, v0
	v_sub_f32_e32 v86, v86, v0
	v_sub_f32_e32 v84, v84, v0
	v_sub_f32_e32 v87, v87, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s57, v238
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s57, s57, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v82, s78, v0
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v0, s56, v0
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s4, v163, v82
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s12, v163, v0
	v_cmp_le_i32_e64 s13, v164, v0
	v_cmp_le_i32_e64 s14, v165, v0
	v_cmp_le_i32_e64 s15, v166, v0
	v_cmp_le_i32_e64 s16, v167, v0
	v_cmp_le_i32_e64 s17, v168, v0
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s5, v164, v82
	v_cmp_ge_i32_e64 s6, v165, v82
	v_cmp_ge_i32_e64 s7, v166, v82
	v_cmp_ge_i32_e64 s8, v167, v82
	v_cmp_ge_i32_e64 s9, v168, v82
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s4, s4, s12
	s_and_b32 s5, s5, s13
	s_and_b32 s4, s0, s4
	s_and_b32 s5, s0, s5
	s_and_b32 s6, s6, s14
	s_and_b32 s7, s7, s15
	s_and_b32 s6, s0, s6
	s_and_b32 s7, s0, s7
	s_and_b32 s8, s8, s16
	s_and_b32 s9, s9, s17
	s_and_b32 s8, s0, s8
	s_and_b32 s9, s0, s9
	.loc	1 679 30 is_stmt 0              ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s11, v162, v0
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s3, v162, v82
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v236, 0, v41, s9
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s3, s3, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s3, s0, s3
	.loc	1 679 30 is_stmt 0              ; attention_backward.py:679:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s10, v161, v0
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v0, v50
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s1, v161, v82
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s1, s1, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	s_and_b32 s1, s0, s1
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_u32 s57, s58
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v82, 0, v0, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v0, v82, v80
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v0, s59, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v50, v0, 16, 1
	v_cmp_o_f32_e64 s1, v0, v0
	v_add3_u32 v50, v0, v50, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v0, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v168, 0, v0, s3
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v0, v168, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v0, s59, v0
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v59, v0, 16, 1
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v59, v0, v59, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v0, v230
	scratch_load_b32 v230, off, off offset:992 ; 4-byte Folded Reload
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v238, 0, v0, s4
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_dual_mul_f32 v0, v238, v201 :: v_dual_mul_f32 v41, v236, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_dual_mul_f32 v0, s59, v0 :: v_dual_mul_f32 v41, s59, v41
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v80, v0, 16, 1
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s9, v41, v41
	v_add3_u32 v80, v0, v80, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v0, v231
	scratch_load_b32 v231, off, off offset:996 ; 4-byte Folded Reload
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e32 v80.l, v72.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v240, 0, v0, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v0, v240, v83
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v0, s59, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v81, v0, 16, 1
	v_cmp_o_f32_e64 s5, v0, v0
	v_add3_u32 v81, v0, v81, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v0, v232
	scratch_load_b32 v232, off, off offset:1000 ; 4-byte Folded Reload
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e32 v81.l, v76.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v0, 0, v0, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v83, v0, v84
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v83, s59, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v84, v83, 16, 1
	v_cmp_o_f32_e64 s6, v83, v83
	v_add3_u32 v83, v83, v84, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v84, v249
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v239, 0, v84, s7
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v84, v239, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v84, s59, v84
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v85, v84, 16, 1
	v_cmp_o_f32_e64 s7, v84, v84
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v84, v84, v85, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v85, v160
	v_dual_mov_b32 v160, v241 :: v_dual_mov_b32 v167, v248
	v_dual_mov_b32 v161, v242 :: v_dual_mov_b32 v162, v243
	v_dual_mov_b32 v163, v244 :: v_dual_mov_b32 v164, v245
	v_dual_mov_b32 v165, v246 :: v_dual_mov_b32 v166, v247
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v235, 0, v85, s8
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v85, v235, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v85, s59, v85
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v86, v85, 16, 1
	v_cmp_o_f32_e64 s8, v85, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v85, v85, v86, 0x7fff
	v_bfe_u32 v86, v41, 16, 1
	v_add3_u32 v86, v41, v86, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v50.h, s1
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	scratch_load_b32 v50, off, off offset:796 ; 4-byte Folded Reload
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v41.h, 0x7fff, v83.h, s6
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s1, v82, v82
	v_cmp_o_f32_e64 s6, v0, v0
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v83, 0, v50
	ds_store_b16 v83, v41
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v41.l, 0x7fff, v59.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v83, v41 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v41.h, 0x7fff, v84.h, s7
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v168, v168
	v_cmp_o_f32_e64 s7, v239, v239
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v230, v41
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v41.l, 0x7fff, v80.h, s4
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v230, v41 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v41.h, 0x7fff, v85.h, s8
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e32 v80.h, v55.l
	v_mov_b16_e32 v55.l, v72.h
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v231, v41
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v41.l, 0x7fff, v81.h, s5
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v231, v41 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v41.h, 0x7fff, v86.h, s9
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v232, v41
	ds_store_b16_d16_hi v232, v41 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v41, off, off offset:808
	scratch_load_b32 v241, off, off offset:1052
	scratch_load_b32 v242, off, off offset:1056
	scratch_load_b32 v243, off, off offset:1060
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b32_e32 v59, v55
	v_mov_b16_e32 v81.h, v60.l
	v_mov_b16_e32 v60.l, v76.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s4, v238, v238
	v_cmp_o_f32_e64 s8, v235, v235
	v_cmp_o_f32_e64 s5, v240, v240
	v_cmp_o_f32_e64 s9, v236, v236
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v55, 0, v41
	s_waitcnt vmcnt(2)
	ds_load_b128 v[213:216], v241
	s_waitcnt vmcnt(1)
	ds_load_b128 v[201:204], v242
	s_waitcnt vmcnt(0)
	ds_load_b128 v[205:208], v243
	ds_load_b128 v[209:212], v55
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v41, off, off offset:756 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v72, 0, v41
	scratch_load_b32 v41, off, off offset:1004 ; 4-byte Folded Reload
	ds_store_2addr_b64 v72, v[80:81], v[59:60] offset1:8
	v_mov_b16_e32 v80.h, v56.l
	v_mov_b16_e32 v56.l, v73.h
	v_mov_b16_e32 v81.l, v77.l
	v_mov_b16_e32 v81.h, v61.l
	v_mov_b16_e32 v80.l, v73.l
	v_mov_b16_e32 v61.l, v77.h
	v_mov_b32_e32 v60, v56
	v_mov_b16_e32 v59.h, v57.l
	v_mov_b16_e32 v57.l, v74.h
	v_mov_b16_e32 v59.l, v74.l
	v_mov_b16_e32 v56.l, v75.l
	v_mov_b16_e32 v56.h, v58.l
	v_mov_b16_e32 v58.l, v75.h
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v41, v[80:81], v[60:61] offset1:8
	scratch_load_b32 v41, off, off offset:1008 ; 4-byte Folded Reload
	v_mov_b16_e32 v60.l, v78.l
	v_mov_b16_e32 v60.h, v62.l
	v_mov_b16_e32 v62.l, v78.h
	v_mov_b32_e32 v61, v57
	v_mov_b16_e32 v57.h, v63.l
	v_mov_b16_e32 v63.l, v79.h
	v_mov_b16_e32 v57.l, v79.l
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v41, v[59:60], v[61:62] offset1:8
	scratch_load_b32 v41, off, off offset:1012 ; 4-byte Folded Reload
	v_mov_b32_e32 v59, v63
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v41, v[56:57], v[58:59] offset1:8
	scratch_load_b32 v41, off, off offset:1016 ; 4-byte Folded Reload
	v_mov_b16_e32 v56.h, v46.l
	v_mov_b16_e32 v46.l, v64.h
	v_mov_b16_e32 v57.l, v68.l
	v_mov_b16_e32 v57.h, v51.l
	v_mov_b16_e32 v56.l, v64.l
	v_mov_b16_e32 v51.l, v68.h
	v_mov_b32_e32 v50, v46
	v_mov_b16_e32 v46.h, v48.l
	v_mov_b16_e32 v48.l, v66.h
	v_mov_b16_e32 v46.l, v66.l
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v41, v[56:57], v[50:51] offset1:8
	scratch_load_b32 v41, off, off offset:1020 ; 4-byte Folded Reload
	v_mov_b16_e32 v56.h, v47.l
	v_mov_b16_e32 v47.l, v65.h
	v_mov_b16_e32 v57.l, v69.l
	v_mov_b16_e32 v57.h, v52.l
	v_mov_b16_e32 v56.l, v65.l
	v_mov_b16_e32 v52.l, v69.h
	v_mov_b32_e32 v51, v47
	v_mov_b16_e32 v47.l, v70.l
	v_mov_b16_e32 v47.h, v53.l
	v_mov_b16_e32 v53.l, v70.h
	ds_store_2addr_b64 v72, v[56:57], v[51:52] offset0:16 offset1:24
	v_mov_b32_e32 v52, v48
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v41, v[46:47], v[52:53] offset1:8
	scratch_load_b32 v41, off, off offset:1024 ; 4-byte Folded Reload
	v_mov_b16_e32 v47.h, v54.l
	v_mov_b16_e32 v54.l, v71.h
	v_mov_b16_e32 v47.l, v71.l
	v_mov_b16_e32 v46.l, v67.l
	v_mov_b16_e32 v46.h, v49.l
	v_mov_b16_e32 v49.l, v67.h
	v_mov_b32_e32 v50, v54
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v41, v[46:47], v[49:50] offset1:8
	v_mov_b16_e32 v46.h, v37.l
	v_mov_b16_e64 v37.l, v217.h
	v_mov_b16_e64 v47.l, v193.l
	v_mov_b16_e32 v47.h, v42.l
	v_mov_b16_e64 v46.l, v217.l
	v_mov_b16_e64 v42.l, v193.h
	v_mov_b32_e32 v41, v37
	scratch_load_b32 v37, off, off offset:1028 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v37, v[46:47], v[41:42] offset1:8
	scratch_load_b32 v37, off, off offset:1032 ; 4-byte Folded Reload
	v_mov_b16_e32 v46.h, v38.l
	v_mov_b16_e64 v38.l, v218.h
	v_mov_b16_e64 v47.l, v194.l
	v_mov_b16_e32 v47.h, v43.l
	v_mov_b16_e64 v46.l, v218.l
	v_mov_b16_e64 v43.l, v194.h
	v_mov_b32_e32 v42, v38
	v_mov_b16_e64 v38.l, v195.l
	v_mov_b16_e32 v38.h, v44.l
	v_mov_b16_e64 v44.l, v195.h
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v37, v[46:47], v[42:43] offset1:8
	v_mov_b16_e32 v37.h, v39.l
	v_mov_b16_e64 v39.l, v219.h
	v_mov_b16_e64 v37.l, v219.l
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v43, v39
	scratch_load_b32 v39, off, off offset:1036 ; 4-byte Folded Reload
	ds_store_2addr_b64 v72, v[37:38], v[43:44] offset0:32 offset1:40
	v_mov_b16_e32 v38.h, v45.l
	v_mov_b16_e64 v45.l, v196.h
	v_mov_b16_e64 v38.l, v196.l
	v_mov_b16_e64 v37.l, v220.l
	v_mov_b16_e32 v37.h, v40.l
	v_mov_b16_e64 v40.l, v220.h
	v_mov_b32_e32 v41, v45
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v39, v[37:38], v[40:41] offset1:8
	v_mov_b16_e32 v37.h, v33.l
	v_mov_b16_e64 v33.l, v152.h
	v_mov_b16_e64 v38.l, v156.l
	v_mov_b16_e64 v38.h, v250.l
	v_mov_b16_e64 v37.l, v152.l
	v_mov_b16_e64 v250.l, v156.h
	v_mov_b32_e32 v249, v33
	scratch_load_b32 v33, off, off offset:1040 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v33, v[37:38], v[249:250] offset1:8
	scratch_load_b32 v33, off, off offset:1044 ; 4-byte Folded Reload
	v_mov_b16_e32 v37.h, v34.l
	v_mov_b16_e64 v34.l, v153.h
	v_mov_b16_e64 v38.l, v157.l
	v_mov_b16_e64 v38.h, v251.l
	v_mov_b16_e64 v37.l, v153.l
	v_mov_b16_e64 v251.l, v157.h
	v_mov_b32_e32 v250, v34
	v_mov_b16_e64 v34.l, v158.l
	v_mov_b16_e64 v34.h, v252.l
	v_mov_b16_e64 v252.l, v158.h
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v33, v[37:38], v[250:251] offset1:8
	v_mov_b16_e32 v33.h, v35.l
	v_mov_b16_e64 v35.l, v154.h
	v_mov_b16_e64 v33.l, v154.l
	v_mov_b32_e32 v154, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v251, v35
	scratch_load_b32 v35, off, off offset:1048 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v35, v[33:34], v[251:252] offset1:8
	v_mov_b16_e64 v34.h, v253.l
	v_mov_b16_e64 v253.l, v159.h
	v_mov_b16_e64 v34.l, v159.l
	v_mov_b16_e64 v33.l, v155.l
	v_mov_b16_e32 v33.h, v36.l
	v_mov_b16_e64 v36.l, v155.h
	v_mov_b32_e32 v37, v253
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[244:247], off, off offset:96
	scratch_load_b128 v[248:251], off, off offset:112
	ds_store_2addr_b64 v72, v[33:34], v[36:37] offset0:48 offset1:56
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x5                            ; 96-byte Folded Reload
	scratch_load_b128 v[56:59], off, off
	scratch_load_b128 v[60:63], off, off offset:16
	scratch_load_b128 v[64:67], off, off offset:32
	scratch_load_b128 v[68:71], off, off offset:48
	scratch_load_b128 v[72:75], off, off offset:64
	scratch_load_b128 v[76:79], off, off offset:80
	ds_load_b128 v[37:40], v255
	ds_load_b128 v[33:36], v225
	ds_load_b128 v[41:44], v225 offset:2048
	ds_load_b128 v[45:48], v255 offset:2048
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[185:192], v[33:40], v[209:216], v[185:192]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[177:184], v[41:48], v[209:216], v[177:184]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[37:40], v255 offset:4096
	ds_load_b128 v[33:36], v225 offset:4096
	ds_load_b128 v[41:44], v225 offset:6144
	ds_load_b128 v[45:48], v255 offset:6144
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[169:176], v[33:40], v[209:216], v[169:176]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[160:167], v[41:48], v[209:216], v[160:167]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[37:40], v255 offset:8192
	ds_load_b128 v[33:36], v225 offset:8192
	ds_load_b128 v[41:44], v225 offset:10240
	ds_load_b128 v[45:48], v255 offset:10240
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(6) lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[244:251], v[33:40], v[209:216], v[244:251]
	s_waitcnt vmcnt(4) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[56:63], v[41:48], v[209:216], v[56:63]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[37:40], v255 offset:12288
	ds_load_b128 v[33:36], v225 offset:12288
	ds_load_b128 v[41:44], v225 offset:14336
	ds_load_b128 v[45:48], v255 offset:14336
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[64:71], v[33:40], v[209:216], v[64:71]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[72:79], v[41:48], v[209:216], v[72:79]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[37:40], v234
	ds_load_b128 v[33:36], v233
	ds_load_b128 v[41:44], v233 offset:2048
	ds_load_b128 v[45:48], v234 offset:2048
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[185:192], v[33:40], v[201:208], v[185:192]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[177:184], v[41:48], v[201:208], v[177:184]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[37:40], v234 offset:4096
	ds_load_b128 v[33:36], v233 offset:4096
	ds_load_b128 v[41:44], v233 offset:6144
	ds_load_b128 v[45:48], v234 offset:6144
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[169:176], v[33:40], v[201:208], v[169:176]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[160:167], v[41:48], v[201:208], v[160:167]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[37:40], v234 offset:8192
	ds_load_b128 v[33:36], v233 offset:8192
	ds_load_b128 v[41:44], v233 offset:10240
	ds_load_b128 v[45:48], v234 offset:10240
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[244:251], v[33:40], v[201:208], v[244:251]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[56:63], v[41:48], v[201:208], v[56:63]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[37:40], v234 offset:12288
	ds_load_b128 v[33:36], v233 offset:12288
	ds_load_b128 v[41:44], v233 offset:14336
	ds_load_b128 v[45:48], v234 offset:14336
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[56:59], off
	scratch_store_b128 off, v[60:63], off offset:16
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[64:71], v[33:40], v[201:208], v[64:71]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v38, v239, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[72:79], v[41:48], v[201:208], v[72:79]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v33, v82, 16, 1
	v_bfe_u32 v34, v168, 16, 1
	v_bfe_u32 v37, v0, 16, 1
	v_add3_u32 v41, v239, v38, 0x7fff
	v_bfe_u32 v38, v235, 16, 1
	v_bfe_u32 v35, v238, 16, 1
	v_bfe_u32 v36, v240, 16, 1
	v_add3_u32 v33, v82, v33, 0x7fff
	v_add3_u32 v34, v168, v34, 0x7fff
	v_add3_u32 v42, v235, v38, 0x7fff
	v_bfe_u32 v38, v236, 16, 1
	v_add3_u32 v37, v0, v37, 0x7fff
	v_add3_u32 v35, v238, v35, 0x7fff
	v_add3_u32 v36, v240, v36, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s1
	v_add3_u32 v43, v236, v38, 0x7fff
	v_cndmask_b16 v39.h, 0x7fff, v34.h, s3
	v_cndmask_b16 v40.h, 0x7fff, v37.h, s6
	v_cndmask_b16 v37.h, 0x7fff, v41.h, s7
	v_cndmask_b16 v38.h, 0x7fff, v35.h, s4
	v_cndmask_b16 v35.h, 0x7fff, v42.h, s8
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s5
	s_clause 0x3                            ; 64-byte Folded Spill
	scratch_store_b128 off, v[64:67], off offset:32
	scratch_store_b128 off, v[68:71], off offset:48
	scratch_store_b128 off, v[72:75], off offset:64
	scratch_store_b128 off, v[76:79], off offset:80
	v_cndmask_b16 v34.h, 0x7fff, v43.h, s9
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16_d16_hi v83, v33
	ds_store_b16_d16_hi v83, v40 offset:512
	ds_store_b16_d16_hi v230, v39
	ds_store_b16_d16_hi v230, v37 offset:512
	ds_store_b16_d16_hi v231, v38
	ds_store_b16_d16_hi v231, v35 offset:512
	ds_store_b16_d16_hi v232, v36
	ds_store_b16_d16_hi v232, v34 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[209:212], v55
	ds_load_b128 v[213:216], v241
	ds_load_b128 v[201:204], v242
	ds_load_b128 v[205:208], v243
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v41, off, off offset:800 ; 4-byte Folded Reload
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e32 v33.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v40.l, v33.l
	v_mov_b16_e32 v39.l, v33.l
	v_mov_b16_e32 v38.l, v33.l
	v_mov_b16_e32 v37.l, v33.l
	v_mov_b16_e32 v36.l, v33.l
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v0, v0, v40
	v_dual_sub_f32 v40, v82, v33 :: v_dual_sub_f32 v39, v168, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_sub_f32 v38, v238, v38 :: v_dual_sub_f32 v37, v239, v37
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s1, v40, v40
	v_cmp_o_f32_e64 s4, v39, v39
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v36, v240, v36
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v35.l, v33.l
	v_mov_b16_e32 v34.l, v33.l
	.loc	1 732 34 is_stmt 1              ; attention_backward.py:732:34
	v_mov_b16_e32 v33.h, v33.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v35, v235, v35 :: v_dual_sub_f32 v34, v236, v34
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s5, v35, v35
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_o_f32_e64 s6, v34, v34
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v41, 0, v41
	ds_store_b128 v41, v[136:139]
	ds_store_b128 v41, v[140:143] offset:256
	ds_store_b128 v41, v[120:123] offset:512
	ds_store_b128 v41, v[124:127] offset:768
	ds_store_b128 v41, v[144:147] offset:4096
	ds_store_b128 v41, v[148:151] offset:4352
	ds_store_b128 v41, v[128:131] offset:4608
	ds_store_b128 v41, v[132:135] offset:4864
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v41, v40, 16, 1
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[144:147], off, off offset:432
	scratch_load_b128 v[148:151], off, off offset:448
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v40, v40, v41, 0x7fff
	v_bfe_u32 v41, v0, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v0, v0, v41, 0x7fff
	v_bfe_u32 v41, v39, 16, 1
	v_cndmask_b16 v0.l, 0x7fff, v40.h, s1
	v_cmp_o_f32_e64 s1, v38, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s3
	v_add3_u32 v136, v39, v41, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_u16_d16 v42, v254 offset:1536
	ds_load_u16_d16 v40, v254 offset:512
	ds_load_u16_d16 v49, v254 offset:1152
	ds_load_u16_d16 v50, v254 offset:1664
	ds_load_u16_d16 v41, v254 offset:1024
	ds_load_u16_d16 v58, v254 offset:1216
	ds_load_u16_d16 v57, v254 offset:704
	ds_load_u16_d16 v65, v254 offset:576
	ds_load_u16_d16 v66, v254 offset:1088
	ds_load_u16_d16 v43, v254 offset:2048
	ds_load_u16_d16 v51, v254 offset:2176
	ds_load_u16_d16 v67, v254 offset:1600
	ds_load_u16_d16 v59, v254 offset:1728
	ds_load_u16_d16 v44, v254 offset:2560
	ds_load_u16_d16 v68, v254 offset:2112
	ds_load_u16_d16 v52, v254 offset:2688
	ds_load_u16_d16 v60, v254 offset:2240
	ds_load_u16_d16 v45, v254 offset:3072
	ds_load_u16_d16 v69, v254 offset:2624
	ds_load_u16_d16 v53, v254 offset:3200
	ds_load_u16_d16 v61, v254 offset:2752
	ds_load_u16_d16 v46, v254 offset:3584
	ds_load_u16_d16 v70, v254 offset:3136
	ds_load_u16_d16 v54, v254 offset:3712
	ds_load_u16_d16 v62, v254 offset:3264
	ds_load_u16_d16 v74, v254 offset:5120
	ds_load_u16_d16 v72, v254 offset:4096
	ds_load_u16_d16 v71, v254 offset:3648
	ds_load_u16_d16 v63, v254 offset:3776
	ds_load_u16_d16 v80, v254 offset:4224
	ds_load_u16_d16 v82, v254 offset:5248
	ds_load_u16_d16 v121, v254 offset:4672
	ds_load_u16_d16 v120, v254 offset:4160
	ds_load_u16_d16 v73, v254 offset:4608
	ds_load_u16_d16 v81, v254 offset:4736
	ds_load_u16_d16 v128, v254 offset:4288
	ds_load_u16_d16 v129, v254 offset:4800
	ds_load_u16_d16 v75, v254 offset:5632
	ds_load_u16_d16 v122, v254 offset:5184
	ds_load_u16_d16 v83, v254 offset:5760
	ds_load_u16_d16 v130, v254 offset:5312
	ds_load_u16_d16 v76, v254 offset:6144
	ds_load_u16_d16 v123, v254 offset:5696
	ds_load_u16_d16 v84, v254 offset:6272
	ds_load_u16_d16 v131, v254 offset:5824
	ds_load_u16_d16 v77, v254 offset:6656
	ds_load_u16_d16 v124, v254 offset:6208
	ds_load_u16_d16 v85, v254 offset:6784
	ds_load_u16_d16 v132, v254 offset:6336
	ds_load_u16_d16 v78, v254 offset:7168
	ds_load_u16_d16 v125, v254 offset:6720
	ds_load_u16_d16 v86, v254 offset:7296
	ds_load_u16_d16 v133, v254 offset:6848
	ds_load_u16_d16 v79, v254 offset:7680
	ds_load_u16_d16 v126, v254 offset:7232
	ds_load_u16_d16 v87, v254 offset:7808
	ds_load_u16_d16 v134, v254 offset:7360
	ds_load_u16_d16 v127, v254 offset:7744
	ds_load_u16_d16 v135, v254 offset:7872
	ds_load_u16_d16 v39, v254
	ds_load_u16_d16 v64, v254 offset:64
	ds_load_u16_d16 v47, v254 offset:128
	ds_load_u16_d16 v48, v254 offset:640
	s_waitcnt lgkmcnt(56)
	ds_load_u16_d16_hi v57, v254 offset:960
	ds_load_u16_d16 v56, v254 offset:192
	ds_load_u16_d16_hi v40, v254 offset:768
	ds_load_u16_d16_hi v41, v254 offset:1280
	ds_load_u16_d16_hi v49, v254 offset:1408
	s_waitcnt lgkmcnt(38)
	ds_load_u16_d16_hi v80, v254 offset:4480
	s_waitcnt lgkmcnt(35)
	ds_load_u16_d16_hi v73, v254 offset:4864
	s_waitcnt lgkmcnt(35)
	ds_load_u16_d16_hi v81, v254 offset:4992
	ds_load_u16_d16_hi v42, v254 offset:1792
	ds_load_u16_d16_hi v50, v254 offset:1920
	ds_load_u16_d16_hi v43, v254 offset:2304
	ds_load_u16_d16_hi v51, v254 offset:2432
	ds_load_u16_d16_hi v44, v254 offset:2816
	ds_load_u16_d16_hi v52, v254 offset:2944
	ds_load_u16_d16_hi v45, v254 offset:3328
	ds_load_u16_d16_hi v53, v254 offset:3456
	ds_load_u16_d16_hi v46, v254 offset:3840
	ds_load_u16_d16_hi v54, v254 offset:3968
	ds_load_u16_d16_hi v72, v254 offset:4352
	ds_load_u16_d16_hi v74, v254 offset:5376
	ds_load_u16_d16_hi v82, v254 offset:5504
	s_waitcnt lgkmcnt(46)
	ds_load_u16_d16_hi v75, v254 offset:5888
	s_waitcnt lgkmcnt(45)
	ds_load_u16_d16_hi v83, v254 offset:6016
	s_waitcnt lgkmcnt(44)
	ds_load_u16_d16_hi v76, v254 offset:6400
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v84, v254 offset:6528
	s_waitcnt lgkmcnt(42)
	ds_load_u16_d16_hi v77, v254 offset:6912
	s_waitcnt lgkmcnt(41)
	ds_load_u16_d16_hi v85, v254 offset:7040
	s_waitcnt lgkmcnt(40)
	ds_load_u16_d16_hi v78, v254 offset:7424
	s_waitcnt lgkmcnt(39)
	ds_load_u16_d16_hi v86, v254 offset:7552
	s_waitcnt lgkmcnt(38)
	ds_load_u16_d16_hi v79, v254 offset:7936
	s_waitcnt lgkmcnt(37)
	ds_load_u16_d16_hi v87, v254 offset:8064
	s_waitcnt lgkmcnt(34)
	ds_load_u16_d16_hi v39, v254 offset:256
	s_waitcnt lgkmcnt(34)
	ds_load_u16_d16_hi v64, v254 offset:320
	s_waitcnt lgkmcnt(34)
	ds_load_u16_d16_hi v47, v254 offset:384
	s_waitcnt lgkmcnt(32)
	ds_load_u16_d16_hi v56, v254 offset:448
	ds_load_u16_d16_hi v65, v254 offset:832
	ds_load_u16_d16_hi v48, v254 offset:896
	ds_load_u16_d16_hi v66, v254 offset:1344
	ds_load_u16_d16_hi v58, v254 offset:1472
	ds_load_u16_d16_hi v67, v254 offset:1856
	ds_load_u16_d16_hi v59, v254 offset:1984
	ds_load_u16_d16_hi v68, v254 offset:2368
	ds_load_u16_d16_hi v60, v254 offset:2496
	ds_load_u16_d16_hi v69, v254 offset:2880
	ds_load_u16_d16_hi v61, v254 offset:3008
	ds_load_u16_d16_hi v70, v254 offset:3392
	ds_load_u16_d16_hi v62, v254 offset:3520
	ds_load_u16_d16_hi v71, v254 offset:3904
	ds_load_u16_d16_hi v63, v254 offset:4032
	ds_load_u16_d16_hi v120, v254 offset:4416
	ds_load_u16_d16_hi v128, v254 offset:4544
	ds_load_u16_d16_hi v121, v254 offset:4928
	ds_load_u16_d16_hi v129, v254 offset:5056
	ds_load_u16_d16_hi v122, v254 offset:5440
	ds_load_u16_d16_hi v130, v254 offset:5568
	ds_load_u16_d16_hi v123, v254 offset:5952
	ds_load_u16_d16_hi v131, v254 offset:6080
	ds_load_u16_d16_hi v124, v254 offset:6464
	ds_load_u16_d16_hi v132, v254 offset:6592
	ds_load_u16_d16_hi v125, v254 offset:6976
	ds_load_u16_d16_hi v133, v254 offset:7104
	ds_load_u16_d16_hi v126, v254 offset:7488
	ds_load_u16_d16_hi v134, v254 offset:7616
	ds_load_u16_d16_hi v127, v254 offset:8000
	ds_load_u16_d16_hi v135, v254 offset:8128
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v154, v0
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.l, 0x7fff, v136.h, s4
	v_bfe_u32 v136, v38, 16, 1
	v_cmp_o_f32_e64 s3, v36, v36
	v_cmp_o_f32_e64 s4, v37, v37
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v154, v0 offset:512
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[56:63], v[209:216], v[1:8]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v38, v38, v136, 0x7fff
	v_bfe_u32 v136, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v36, v36, v136, 0x7fff
	v_bfe_u32 v136, v37, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[25:32], v[39:46], v[209:216], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[64:71], v[209:216], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[47:54], v[209:216], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[128:135], v[201:208], v[1:8]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v37, v37, v136, 0x7fff
	v_bfe_u32 v136, v35, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[25:32], v[72:79], v[201:208], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[120:127], v[201:208], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[80:87], v[201:208], v[9:16]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.h, 0x7fff, v37.h, s4
	v_add3_u32 v35, v35, v136, 0x7fff
	v_bfe_u32 v136, v34, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v230, v0
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.l, 0x7fff, v38.h, s1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v230, v0 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.h, 0x7fff, v35.h, s5
	v_add3_u32 v34, v34, v136, 0x7fff
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v231, v0
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.l, 0x7fff, v36.h, s3
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v231, v0 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.h, 0x7fff, v34.h, s6
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v232, v0
	ds_store_b16_d16_hi v232, v0 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[136:139], v55
	ds_load_b128 v[140:143], v241
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v0, v0
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[39:46], v[136:143], v[25:32]
	ds_load_b128 v[34:37], v242
	ds_load_b128 v[38:41], v243
	v_wmma_f32_16x16x16_bf16 v[17:24], v[64:71], v[136:143], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[47:54], v[136:143], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[56:63], v[136:143], v[1:8]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v49.h, v33.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v42.h, v112.l
	v_mov_b16_e32 v42.l, v33.l
	v_mov_b16_e32 v44.h, v113.l
	v_mov_b16_e32 v44.l, v33.l
	v_and_b32_e32 v43, 0xffff0000, v113
	v_mov_b16_e32 v46.h, v114.l
	v_mov_b16_e32 v46.l, v33.l
	v_and_b32_e32 v45, 0xffff0000, v114
	v_mov_b16_e32 v48.h, v115.l
	v_mov_b16_e32 v48.l, v33.l
	v_and_b32_e32 v47, 0xffff0000, v115
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[136:139], off, off offset:400
	scratch_load_b128 v[140:143], off, off offset:416
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[72:79], v[34:41], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[120:127], v[34:41], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[80:87], v[34:41], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[128:135], v[34:41], v[1:8]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v34.h, v116.l
	v_mov_b16_e32 v34.l, v33.l
	v_mov_b16_e32 v36.h, v117.l
	v_mov_b16_e32 v36.l, v33.l
	v_and_b32_e32 v35, 0xffff0000, v117
	v_mov_b16_e32 v38.h, v118.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v34, v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v38.l, v33.l
	v_and_b32_e32 v37, 0xffff0000, v118
	v_mov_b16_e32 v40.h, v119.l
	v_mov_b16_e32 v40.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v49.l, v34.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v39, 0xffff0000, v119
	v_and_b32_e32 v41, 0xffff0000, v112
	s_clause 0x3                            ; 64-byte Folded Reload
	scratch_load_b128 v[120:123], off, off offset:304
	scratch_load_b128 v[124:127], off, off offset:320
	scratch_load_b128 v[128:131], off, off offset:368
	scratch_load_b128 v[132:135], off, off offset:384
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v49, 1, v49
	v_cmp_o_f32_e64 s1, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v49, v34, v49, 0x7fff
	v_mov_b16_e32 v34.h, v33.l
	v_mov_b16_e32 v34.l, v0.h
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v0, v0, v34, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v36, v36
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v36.h, v33.l
	v_mov_b16_e32 v36.l, v34.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v34, v34
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v36, v34, v36, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v35, v35
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v35.h, v33.l
	v_mov_b16_e32 v35.l, v34.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s5, v34, v34
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v35, v34, v35, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v38, v38
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v38.h, v33.l
	v_cndmask_b16 v35.l, 0x7fff, v36.h, s4
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v38.l, v34.h
	v_cmp_o_f32_e64 s6, v34, v34
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v34, v38, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v37, v37
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v37.h, v33.l
	v_cndmask_b16 v36.l, 0x7fff, v38.h, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v37.l, v34.h
	v_cmp_o_f32_e64 s7, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v37, v34, v37, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v40, v40
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v40.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v36.h, 0x7fff, v37.h, s7
	v_mov_b16_e32 v40.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s8, v34, v34
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v34, v40, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v39, v39
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v39.h, v33.l
	v_cndmask_b16 v37.l, 0x7fff, v40.h, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v39.l, v34.h
	v_cmp_o_f32_e64 s9, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v39, v34, v39, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v42, v42
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v42.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s9
	v_mov_b16_e32 v42.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s10, v34, v34
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v42, v34, v42, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v41, v41
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v41.h, v33.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v42.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v38.l, 0x7fff, v42.h, s10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v41.l, v34.h
	v_cmp_o_f32_e64 s11, v34, v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v42.h, v104.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v41, v34, v41, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v44, v44
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v44.h, v33.l
	v_cndmask_b16 v38.h, 0x7fff, v41.h, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v44.l, v34.h
	v_cmp_o_f32_e64 s12, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v44, 1, v44
	v_add3_u32 v44, v34, v44, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v43, v43
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v43.h, v33.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v44.l, v33.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v39.l, 0x7fff, v44.h, s12
	v_mov_b16_e32 v43.l, v34.h
	v_cmp_o_f32_e64 s13, v34, v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v44.h, v105.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v43, v34, v43, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v46, v46
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v46.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v39.h, 0x7fff, v43.h, s13
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v43, 0xffff0000, v105
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v46.l, v34.h
	v_cmp_o_f32_e64 s14, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v46, 1, v46
	v_add3_u32 v46, v34, v46, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v45, v45
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v45.h, v33.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v46.l, v33.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v40.l, 0x7fff, v46.h, s14
	v_mov_b16_e32 v45.l, v34.h
	v_cmp_o_f32_e64 s15, v34, v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v46.h, v106.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v45, v34, v45, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v48, v48
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v48.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v40.h, 0x7fff, v45.h, s15
	v_mov_b16_e32 v48.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s16, v34, v34
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v45, 0xffff0000, v106
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v48, 1, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v48, v34, v48, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v47, v47
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v47.h, v33.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v48.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v41.l, 0x7fff, v48.h, s16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v47.l, v34.h
	v_cmp_o_f32_e64 s17, v34, v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v48.h, v107.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v47, 1, v47
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v47, v34, v47, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v0.h, s3
	v_cndmask_b16 v34.l, 0x7fff, v49.h, s1
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v49.h, v33.l
	v_cndmask_b16 v41.h, 0x7fff, v47.h, s17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v0, v0, v0 :: v_dual_and_b32 v47, 0xffff0000, v107
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[25:32], v[34:41], v[209:216], v[25:32]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v34.h, v108.l
	v_mov_b16_e32 v34.l, v33.l
	v_mov_b16_e32 v36.h, v109.l
	v_mov_b16_e32 v36.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v34, v34, v34 :: v_dual_and_b32 v35, 0xffff0000, v109
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v38.h, v110.l
	v_mov_b16_e32 v38.l, v33.l
	v_and_b32_e32 v37, 0xffff0000, v110
	v_mov_b16_e32 v40.h, v111.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v49.l, v34.h
	v_cmp_o_f32_e64 s1, v34, v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v40.l, v33.l
	v_and_b32_e32 v39, 0xffff0000, v111
	v_and_b32_e32 v41, 0xffff0000, v104
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v49, v34, v49, 0x7fff
	v_mov_b16_e32 v34.h, v33.l
	v_mov_b16_e32 v34.l, v0.h
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v0, v0, v34, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v36, v36
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v36.h, v33.l
	v_mov_b16_e32 v36.l, v34.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v34, v34
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v36, v34, v36, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v35, v35
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v35.h, v33.l
	v_mov_b16_e32 v35.l, v34.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s5, v34, v34
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v35, v34, v35, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v38, v38
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v38.h, v33.l
	v_cndmask_b16 v35.l, 0x7fff, v36.h, s4
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v38.l, v34.h
	v_cmp_o_f32_e64 s6, v34, v34
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v34, v38, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v37, v37
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v37.h, v33.l
	v_cndmask_b16 v36.l, 0x7fff, v38.h, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v37.l, v34.h
	v_cmp_o_f32_e64 s7, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v37, v34, v37, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v40, v40
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v40.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v36.h, 0x7fff, v37.h, s7
	v_mov_b16_e32 v40.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s8, v34, v34
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v34, v40, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v39, v39
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v39.h, v33.l
	v_cndmask_b16 v37.l, 0x7fff, v40.h, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v39.l, v34.h
	v_cmp_o_f32_e64 s9, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v39, v34, v39, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v42, v42
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v42.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s9
	v_mov_b16_e32 v42.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s10, v34, v34
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v42, v34, v42, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v41, v41
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v41.h, v33.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v42.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v38.l, 0x7fff, v42.h, s10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v41.l, v34.h
	v_cmp_o_f32_e64 s11, v34, v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v42.h, v96.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v41, v34, v41, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v44, v44
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v44.h, v33.l
	v_cndmask_b16 v38.h, 0x7fff, v41.h, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v44.l, v34.h
	v_cmp_o_f32_e64 s12, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v44, 1, v44
	v_add3_u32 v44, v34, v44, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v43, v43
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v43.h, v33.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v44.l, v33.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v39.l, 0x7fff, v44.h, s12
	v_mov_b16_e32 v43.l, v34.h
	v_cmp_o_f32_e64 s13, v34, v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v44.h, v97.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v43, v34, v43, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v46, v46
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v46.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v39.h, 0x7fff, v43.h, s13
	v_mov_b16_e32 v46.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s14, v34, v34
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v43, 0xffff0000, v97
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v46, 1, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v46, v34, v46, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v45, v45
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v45.h, v33.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v46.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v40.l, 0x7fff, v46.h, s14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v45.l, v34.h
	v_cmp_o_f32_e64 s15, v34, v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v46.h, v98.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v45, v34, v45, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v48, v48
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v48.h, v33.l
	v_cndmask_b16 v40.h, 0x7fff, v45.h, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v48.l, v34.h
	v_cmp_o_f32_e64 s16, v34, v34
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v45, 0xffff0000, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v48, 1, v48
	v_add3_u32 v48, v34, v48, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v47, v47
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v47.h, v33.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v48.l, v33.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v41.l, 0x7fff, v48.h, s16
	v_mov_b16_e32 v47.l, v34.h
	v_cmp_o_f32_e64 s17, v34, v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v48.h, v99.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v47, 1, v47
	v_add3_u32 v47, v34, v47, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v0.h, s3
	v_cndmask_b16 v34.l, 0x7fff, v49.h, s1
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v100
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v49.h, v33.l
	v_cndmask_b16 v41.h, 0x7fff, v47.h, s17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v0, v0, v0 :: v_dual_and_b32 v47, 0xffff0000, v99
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[17:24], v[34:41], v[209:216], v[17:24]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v34.h, v100.l
	v_mov_b16_e32 v34.l, v33.l
	v_mov_b16_e32 v36.h, v101.l
	v_mov_b16_e32 v36.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v34, v34, v34 :: v_dual_and_b32 v35, 0xffff0000, v101
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v38.h, v102.l
	v_mov_b16_e32 v38.l, v33.l
	v_and_b32_e32 v37, 0xffff0000, v102
	v_mov_b16_e32 v40.h, v103.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v49.l, v34.h
	v_cmp_o_f32_e64 s1, v34, v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v40.l, v33.l
	v_and_b32_e32 v39, 0xffff0000, v103
	v_and_b32_e32 v41, 0xffff0000, v96
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v49, v34, v49, 0x7fff
	v_mov_b16_e32 v34.h, v33.l
	v_mov_b16_e32 v34.l, v0.h
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v0, v0, v34, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v36, v36
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v36.h, v33.l
	v_mov_b16_e32 v36.l, v34.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v34, v34
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v36, v34, v36, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v35, v35
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v35.h, v33.l
	v_mov_b16_e32 v35.l, v34.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s5, v34, v34
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v35, v34, v35, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v38, v38
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v38.h, v33.l
	v_cndmask_b16 v35.l, 0x7fff, v36.h, s4
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v38.l, v34.h
	v_cmp_o_f32_e64 s6, v34, v34
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v34, v38, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v37, v37
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v37.h, v33.l
	v_cndmask_b16 v36.l, 0x7fff, v38.h, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v37.l, v34.h
	v_cmp_o_f32_e64 s7, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v37, v34, v37, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v40, v40
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v40.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v36.h, 0x7fff, v37.h, s7
	v_mov_b16_e32 v40.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s8, v34, v34
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v34, v40, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v39, v39
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v39.h, v33.l
	v_cndmask_b16 v37.l, 0x7fff, v40.h, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v39.l, v34.h
	v_cmp_o_f32_e64 s9, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v39, v34, v39, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v42, v42
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v42.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s9
	v_mov_b16_e32 v42.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s10, v34, v34
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v42, v34, v42, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v41, v41
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v41.h, v33.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v42.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v38.l, 0x7fff, v42.h, s10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v41.l, v34.h
	v_cmp_o_f32_e64 s11, v34, v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v42.h, v88.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v41, v34, v41, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v44, v44
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v44.h, v33.l
	v_cndmask_b16 v38.h, 0x7fff, v41.h, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v44.l, v34.h
	v_cmp_o_f32_e64 s12, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v44, 1, v44
	v_add3_u32 v44, v34, v44, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v43, v43
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v43.h, v33.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v44.l, v33.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v39.l, 0x7fff, v44.h, s12
	v_mov_b16_e32 v43.l, v34.h
	v_cmp_o_f32_e64 s13, v34, v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v44.h, v89.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v43, v34, v43, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v46, v46
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v46.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v39.h, 0x7fff, v43.h, s13
	v_mov_b16_e32 v46.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s14, v34, v34
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v43, 0xffff0000, v89
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v46, 1, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v46, v34, v46, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v45, v45
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v45.h, v33.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v46.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v40.l, 0x7fff, v46.h, s14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v45.l, v34.h
	v_cmp_o_f32_e64 s15, v34, v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v46.h, v90.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v45, v34, v45, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v48, v48
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v48.h, v33.l
	v_cndmask_b16 v40.h, 0x7fff, v45.h, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v48.l, v34.h
	v_cmp_o_f32_e64 s16, v34, v34
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v45, 0xffff0000, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v48, 1, v48
	v_add3_u32 v48, v34, v48, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v47, v47
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v47.h, v33.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v48.l, v33.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v41.l, 0x7fff, v48.h, s16
	v_mov_b16_e32 v47.l, v34.h
	v_cmp_o_f32_e64 s17, v34, v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v48.h, v91.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v47, 1, v47
	v_add3_u32 v47, v34, v47, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v0.h, s3
	v_cndmask_b16 v34.l, 0x7fff, v49.h, s1
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v92
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v49.h, v33.l
	v_cndmask_b16 v41.h, 0x7fff, v47.h, s17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v0, v0, v0 :: v_dual_and_b32 v47, 0xffff0000, v91
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[34:41], v[209:216], v[9:16]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v34.h, v92.l
	v_mov_b16_e32 v34.l, v33.l
	v_mov_b16_e32 v36.h, v93.l
	v_mov_b16_e32 v36.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v34, v34, v34 :: v_dual_and_b32 v35, 0xffff0000, v93
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v38.h, v94.l
	v_mov_b16_e32 v38.l, v33.l
	v_and_b32_e32 v37, 0xffff0000, v94
	v_mov_b16_e32 v40.h, v95.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v49.l, v34.h
	v_cmp_o_f32_e64 s1, v34, v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v40.l, v33.l
	v_and_b32_e32 v39, 0xffff0000, v95
	v_and_b32_e32 v41, 0xffff0000, v88
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v49, v34, v49, 0x7fff
	v_mov_b16_e32 v34.h, v33.l
	v_mov_b16_e32 v34.l, v0.h
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v0, v0, v34, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v36, v36
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v36.h, v33.l
	v_mov_b16_e32 v36.l, v34.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v34, v34
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v36, v34, v36, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v35, v35
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v35.h, v33.l
	v_mov_b16_e32 v35.l, v34.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s5, v34, v34
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v35, v34, v35, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v38, v38
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v38.h, v33.l
	v_cndmask_b16 v35.l, 0x7fff, v36.h, s4
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v38.l, v34.h
	v_cmp_o_f32_e64 s6, v34, v34
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v34, v38, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v37, v37
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v37.h, v33.l
	v_cndmask_b16 v36.l, 0x7fff, v38.h, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v37.l, v34.h
	v_cmp_o_f32_e64 s7, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v37, v34, v37, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v40, v40
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v40.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v36.h, 0x7fff, v37.h, s7
	v_mov_b16_e32 v40.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s8, v34, v34
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v34, v40, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v39, v39
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v39.h, v33.l
	v_cndmask_b16 v37.l, 0x7fff, v40.h, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v39.l, v34.h
	v_cmp_o_f32_e64 s9, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v39, v34, v39, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v42, v42
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v42.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s9
	v_mov_b16_e32 v42.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s10, v34, v34
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v42, v34, v42, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v41, v41
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v41.h, v33.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v42.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v38.l, 0x7fff, v42.h, s10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v41.l, v34.h
	v_cmp_o_f32_e64 s11, v34, v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v42.h, v226.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v41, v34, v41, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v44, v44
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v44.h, v33.l
	v_cndmask_b16 v38.h, 0x7fff, v41.h, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v44.l, v34.h
	v_cmp_o_f32_e64 s12, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v44, 1, v44
	v_add3_u32 v44, v34, v44, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v43, v43
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v43.h, v33.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v44.l, v33.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v39.l, 0x7fff, v44.h, s12
	v_mov_b16_e32 v43.l, v34.h
	v_cmp_o_f32_e64 s13, v34, v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v44.h, v227.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v43, v34, v43, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v46, v46
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v46.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v39.h, 0x7fff, v43.h, s13
	v_mov_b16_e32 v46.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s14, v34, v34
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v43, 0xffff0000, v227
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v46, 1, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v46, v34, v46, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v45, v45
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v45.h, v33.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v46.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v40.l, 0x7fff, v46.h, s14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v45.l, v34.h
	v_cmp_o_f32_e64 s15, v34, v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v46.h, v228.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v45, v34, v45, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v48, v48
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v48.h, v33.l
	v_cndmask_b16 v40.h, 0x7fff, v45.h, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v48.l, v34.h
	v_cmp_o_f32_e64 s16, v34, v34
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v45, 0xffff0000, v228
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v48, 1, v48
	v_add3_u32 v48, v34, v48, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v47, v47
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v47.h, v33.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v48.l, v33.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v41.l, 0x7fff, v48.h, s16
	v_mov_b16_e32 v47.l, v34.h
	v_cmp_o_f32_e64 s17, v34, v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v48.h, v229.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v47, 1, v47
	v_add3_u32 v47, v34, v47, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v0.h, s3
	v_cndmask_b16 v34.l, 0x7fff, v49.h, s1
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v197
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v49.h, v33.l
	v_cndmask_b16 v41.h, 0x7fff, v47.h, s17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v0, v0, v0 :: v_dual_and_b32 v47, 0xffff0000, v229
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[34:41], v[209:216], v[1:8]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v34.h, v197.l
	v_mov_b16_e32 v34.l, v33.l
	v_mov_b16_e64 v36.h, v198.l
	v_mov_b16_e32 v36.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v0, v0
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v35, 0xffff0000, v198
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v34, v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v38.h, v199.l
	v_mov_b16_e32 v38.l, v33.l
	v_and_b32_e32 v37, 0xffff0000, v199
	v_mov_b16_e64 v40.h, v200.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v49.l, v34.h
	v_cmp_o_f32_e64 s1, v34, v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v40.l, v33.l
	v_and_b32_e32 v39, 0xffff0000, v200
	v_and_b32_e32 v41, 0xffff0000, v226
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v49, 1, v49
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[209:212], off, off offset:464
	scratch_load_b128 v[213:216], off, off offset:480
	v_add3_u32 v49, v34, v49, 0x7fff
	v_mov_b16_e32 v34.h, v33.l
	v_mov_b16_e32 v34.l, v0.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v0, v0, v34, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v36, v36
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v36.h, v33.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v36.l, v34.h
	v_cmp_o_f32_e64 s4, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v36, v34, v36, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v35, v35
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v35.h, v33.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v35.l, v34.h
	v_cmp_o_f32_e64 s5, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v35, v34, v35, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v38, v38
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v38.h, v33.l
	v_cndmask_b16 v35.l, 0x7fff, v36.h, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s5
	v_mov_b16_e32 v38.l, v34.h
	v_cmp_o_f32_e64 s6, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v38, v34, v38, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v37, v37
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v37.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v36.l, 0x7fff, v38.h, s6
	v_mov_b16_e32 v37.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s7, v34, v34
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v37, v34, v37, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v40, v40
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v40.h, v33.l
	v_cndmask_b16 v36.h, 0x7fff, v37.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v40.l, v34.h
	v_cmp_o_f32_e64 s8, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v40, v34, v40, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v39, v39
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v39.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v37.l, 0x7fff, v40.h, s8
	v_mov_b16_e32 v39.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s9, v34, v34
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v39, v34, v39, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v42, v42
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v42.h, v33.l
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v42.l, v34.h
	v_cmp_o_f32_e64 s10, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v42, v34, v42, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v41, v41
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v41.h, v33.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v42.l, v33.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v38.l, 0x7fff, v42.h, s10
	v_mov_b16_e32 v41.l, v34.h
	v_cmp_o_f32_e64 s11, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v41, v34, v41, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v44, v44
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v44.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v38.h, 0x7fff, v41.h, s11
	v_mov_b16_e32 v44.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s12, v34, v34
	v_and_b32_e32 v44, 1, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v44, v34, v44, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v43, v43
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v43.h, v33.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v44.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v39.l, 0x7fff, v44.h, s12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v43.l, v34.h
	v_cmp_o_f32_e64 s13, v34, v34
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v43, v34, v43, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v46, v46
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v46.h, v33.l
	v_cndmask_b16 v39.h, 0x7fff, v43.h, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v46.l, v34.h
	v_cmp_o_f32_e64 s14, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v46, 1, v46
	v_add3_u32 v46, v34, v46, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v45, v45
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v45.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v40.l, 0x7fff, v46.h, s14
	v_mov_b16_e32 v45.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s15, v34, v34
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v45, v34, v45, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v48, v48
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v48.h, v33.l
	v_cndmask_b16 v40.h, 0x7fff, v45.h, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v48.l, v34.h
	v_cmp_o_f32_e64 s16, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v48, 1, v48
	v_add3_u32 v48, v34, v48, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v47, v47
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v47.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v41.l, 0x7fff, v48.h, s16
	v_mov_b16_e32 v47.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s17, v34, v34
	v_and_b32_e32 v47, 1, v47
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v47, v34, v47, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v0.h, s3
	v_cndmask_b16 v34.l, 0x7fff, v49.h, s1
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v221
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v49.h, v33.l
	v_cndmask_b16 v41.h, 0x7fff, v47.h, s17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[25:32], v[34:41], v[201:208], v[25:32]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v34.h, v221.l
	v_and_b32_e32 v35, 0xffff0000, v222
	v_mov_b16_e64 v36.h, v222.l
	v_and_b32_e32 v37, 0xffff0000, v223
	v_mov_b16_e64 v38.h, v223.l
	v_and_b32_e32 v39, 0xffff0000, v224
	v_mov_b16_e64 v40.h, v224.l
	s_clause 0x2                            ; 48-byte Folded Reload
	scratch_load_b128 v[221:224], off, off offset:336
	scratch_load_b128 v[225:228], off, off offset:352
	scratch_load_b128 v[45:48], off, off offset:192
	v_mov_b16_e32 v34.l, v33.l
	v_mov_b16_e32 v36.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v0, v0
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v38.l, v33.l
	v_mov_b16_e32 v40.l, v33.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v49.l, v34.h
	v_cmp_o_f32_e64 s1, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v49, v34, v49, 0x7fff
	v_mov_b16_e32 v34.h, v33.l
	v_mov_b16_e32 v34.l, v0.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v0, v0, v34, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v36, v36
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v36.h, v33.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v36.l, v34.h
	v_cmp_o_f32_e64 s4, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v36, v34, v36, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v35, v35
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v35.h, v33.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v35.l, v34.h
	v_cmp_o_f32_e64 s5, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v35, v34, v35, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v38, v38
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v38.h, v33.l
	v_cndmask_b16 v35.l, 0x7fff, v36.h, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s5
	v_mov_b16_e32 v38.l, v34.h
	v_cmp_o_f32_e64 s6, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v38, v34, v38, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v37, v37
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v37.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v36.l, 0x7fff, v38.h, s6
	v_mov_b16_e32 v37.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s7, v34, v34
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v37, v34, v37, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v40, v40
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v40.h, v33.l
	v_cndmask_b16 v36.h, 0x7fff, v37.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v40.l, v34.h
	v_cmp_o_f32_e64 s8, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v40, v34, v40, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v39, v39
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v39.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v37.l, 0x7fff, v40.h, s8
	v_mov_b16_e32 v39.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s9, v34, v34
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v34, v39, 0x7fff
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s9
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v42.h, v45.l
	v_and_b32_e32 v41, 0xffff0000, v45
	v_mov_b16_e32 v44.h, v46.l
	v_and_b32_e32 v43, 0xffff0000, v46
	v_mov_b16_e32 v46.h, v47.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v42, v42
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v42.h, v33.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v46.l, v33.l
	v_and_b32_e32 v45, 0xffff0000, v47
	v_and_b32_e32 v47, 0xffff0000, v48
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v42.l, v34.h
	v_cmp_o_f32_e64 s10, v34, v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v48.h, v48.l
	v_mov_b16_e32 v48.l, v33.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v42, v34, v42, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v41, v41
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v41.h, v33.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v42.l, v33.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v38.l, 0x7fff, v42.h, s10
	v_mov_b16_e32 v41.l, v34.h
	v_cmp_o_f32_e64 s11, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v41, v34, v41, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v44, v44
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v44.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v38.h, 0x7fff, v41.h, s11
	v_mov_b16_e32 v44.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s12, v34, v34
	v_and_b32_e32 v44, 1, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v44, v34, v44, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v43, v43
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v43.h, v33.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v44.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v39.l, 0x7fff, v44.h, s12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v43.l, v34.h
	v_cmp_o_f32_e64 s13, v34, v34
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v43, v34, v43, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v46, v46
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v46.h, v33.l
	v_cndmask_b16 v39.h, 0x7fff, v43.h, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v46.l, v34.h
	v_cmp_o_f32_e64 s14, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v46, 1, v46
	v_add3_u32 v46, v34, v46, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v45, v45
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v45.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v40.l, 0x7fff, v46.h, s14
	v_mov_b16_e32 v45.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s15, v34, v34
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v45, v34, v45, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v48, v48
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v48.h, v33.l
	v_cndmask_b16 v40.h, 0x7fff, v45.h, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v48.l, v34.h
	v_cmp_o_f32_e64 s16, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v48, 1, v48
	v_add3_u32 v48, v34, v48, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v47, v47
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v47.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v41.l, 0x7fff, v48.h, s16
	v_mov_b16_e32 v47.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s17, v34, v34
	v_and_b32_e32 v47, 1, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v47, v34, v47, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v0.h, s3
	v_cndmask_b16 v34.l, 0x7fff, v49.h, s1
	v_mov_b16_e32 v49.h, v33.l
	v_cndmask_b16 v41.h, 0x7fff, v47.h, s17
	scratch_load_b128 v[45:48], off, off offset:160 ; 16-byte Folded Reload
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[17:24], v[34:41], v[201:208], v[17:24]
	scratch_load_b128 v[37:40], off, off offset:176 ; 16-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v34.l, v33.l
	v_mov_b16_e32 v36.l, v33.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v42.h, v45.l
	v_and_b32_e32 v41, 0xffff0000, v45
	v_mov_b16_e32 v44.h, v46.l
	v_and_b32_e32 v43, 0xffff0000, v46
	v_mov_b16_e32 v46.h, v47.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v34.h, v37.l
	v_and_b32_e32 v0, 0xffff0000, v37
	v_mov_b16_e32 v36.h, v38.l
	v_and_b32_e32 v35, 0xffff0000, v38
	v_mov_b16_e32 v38.h, v39.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v34, v34
	v_sub_f32_e32 v0, v0, v0
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v38.l, v33.l
	v_and_b32_e32 v37, 0xffff0000, v39
	v_and_b32_e32 v39, 0xffff0000, v40
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v49.l, v34.h
	v_cmp_o_f32_e64 s1, v34, v34
	v_cmp_o_f32_e64 s3, v0, v0
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v40.h, v40.l
	v_mov_b16_e32 v40.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v49, 1, v49
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v46.l, v33.l
	v_and_b32_e32 v45, 0xffff0000, v47
	v_and_b32_e32 v47, 0xffff0000, v48
	v_mov_b16_e32 v48.h, v48.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v49, v34, v49, 0x7fff
	v_mov_b16_e32 v34.h, v33.l
	v_mov_b16_e32 v34.l, v0.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v48.l, v33.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v0, v0, v34, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v36, v36
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v36.h, v33.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v36.l, v34.h
	v_cmp_o_f32_e64 s4, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v36, v34, v36, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v35, v35
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v35.h, v33.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v35.l, v34.h
	v_cmp_o_f32_e64 s5, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v35, v34, v35, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v38, v38
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v38.h, v33.l
	v_cndmask_b16 v35.l, 0x7fff, v36.h, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s5
	v_mov_b16_e32 v38.l, v34.h
	v_cmp_o_f32_e64 s6, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v38, v34, v38, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v37, v37
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v37.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v36.l, 0x7fff, v38.h, s6
	v_mov_b16_e32 v37.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s7, v34, v34
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v37, v34, v37, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v40, v40
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v40.h, v33.l
	v_cndmask_b16 v36.h, 0x7fff, v37.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v40.l, v34.h
	v_cmp_o_f32_e64 s8, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v40, v34, v40, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v39, v39
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v39.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v37.l, 0x7fff, v40.h, s8
	v_mov_b16_e32 v39.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s9, v34, v34
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v39, v34, v39, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v42, v42
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v42.h, v33.l
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v42.l, v34.h
	v_cmp_o_f32_e64 s10, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v42, v34, v42, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v41, v41
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v41.h, v33.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v42.l, v33.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v38.l, 0x7fff, v42.h, s10
	v_mov_b16_e32 v41.l, v34.h
	v_cmp_o_f32_e64 s11, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v41, v34, v41, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v44, v44
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v44.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v38.h, 0x7fff, v41.h, s11
	v_mov_b16_e32 v44.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s12, v34, v34
	v_and_b32_e32 v44, 1, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v44, v34, v44, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v43, v43
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v43.h, v33.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v44.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v39.l, 0x7fff, v44.h, s12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v43.l, v34.h
	v_cmp_o_f32_e64 s13, v34, v34
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v43, v34, v43, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v46, v46
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v46.h, v33.l
	v_cndmask_b16 v39.h, 0x7fff, v43.h, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v46.l, v34.h
	v_cmp_o_f32_e64 s14, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v46, 1, v46
	v_add3_u32 v46, v34, v46, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v45, v45
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v45.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v40.l, 0x7fff, v46.h, s14
	v_mov_b16_e32 v45.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s15, v34, v34
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v45, v34, v45, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v48, v48
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v48.h, v33.l
	v_cndmask_b16 v40.h, 0x7fff, v45.h, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v48.l, v34.h
	v_cmp_o_f32_e64 s16, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v48, 1, v48
	v_add3_u32 v48, v34, v48, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v47, v47
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v47.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v41.l, 0x7fff, v48.h, s16
	v_mov_b16_e32 v47.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s17, v34, v34
	v_and_b32_e32 v47, 1, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v47, v34, v47, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v0.h, s3
	v_cndmask_b16 v34.l, 0x7fff, v49.h, s1
	v_mov_b16_e32 v49.h, v33.l
	v_cndmask_b16 v41.h, 0x7fff, v47.h, s17
	scratch_load_b128 v[45:48], off, off offset:128 ; 16-byte Folded Reload
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[34:41], v[201:208], v[9:16]
	scratch_load_b128 v[37:40], off, off offset:144 ; 16-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v34.l, v33.l
	v_mov_b16_e32 v36.l, v33.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v42.h, v45.l
	v_and_b32_e32 v41, 0xffff0000, v45
	v_mov_b16_e32 v44.h, v46.l
	v_and_b32_e32 v43, 0xffff0000, v46
	v_mov_b16_e32 v46.h, v47.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v34.h, v37.l
	v_and_b32_e32 v0, 0xffff0000, v37
	v_mov_b16_e32 v36.h, v38.l
	v_and_b32_e32 v35, 0xffff0000, v38
	v_mov_b16_e32 v38.h, v39.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v34, v34
	v_sub_f32_e32 v0, v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v36, v36, v36 :: v_dual_sub_f32 v35, v35, v35
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v38.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v49.l, v34.h
	v_cmp_o_f32_e64 s1, v34, v34
	v_cmp_o_f32_e64 s3, v0, v0
	v_cmp_o_f32_e64 s4, v36, v36
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v38, v38, v38 :: v_dual_and_b32 v49, 1, v49
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v37, 0xffff0000, v39
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s5, v35, v35
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v39, 0xffff0000, v40
	v_mov_b16_e32 v40.h, v40.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v34, v34, v49, 0x7fff
	v_mov_b16_e32 v49.h, v33.l
	v_mov_b16_e32 v49.l, v0.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v37, v37, v37
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v38, v38
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v40.l, v33.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v39, v39, v39
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_and_b32_e32 v49, 1, v49
	v_cmp_o_f32_e64 s7, v37, v37
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v42, v42, v42
	v_sub_f32_e32 v40, v40, v40
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v39, v39
	v_add3_u32 v0, v0, v49, 0x7fff
	v_mov_b16_e32 v49.h, v33.l
	v_mov_b16_e32 v49.l, v36.h
	v_cmp_o_f32_e64 s8, v40, v40
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v41, v41, v41
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s10, v42, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v44, v44, v44 :: v_dual_and_b32 v49, 1, v49
	v_sub_f32_e32 v43, v43, v43
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v41, v41
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v46.l, v33.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s12, v44, v44
	v_add3_u32 v36, v36, v49, 0x7fff
	v_mov_b16_e32 v49.h, v33.l
	v_mov_b16_e32 v49.l, v35.h
	v_cmp_o_f32_e64 s13, v43, v43
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v45, 0xffff0000, v47
	v_and_b32_e32 v47, 0xffff0000, v48
	v_mov_b16_e32 v48.h, v48.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v49, 1, v49
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v48.l, v33.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v45, v45, v45
	v_sub_f32_e32 v47, v47, v47
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cndmask_b16 v34.l, 0x7fff, v36.h, s4
	v_add3_u32 v35, v35, v49, 0x7fff
	v_mov_b16_e32 v49.h, v33.l
	v_mov_b16_e32 v49.l, v38.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v48, v48, v48
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s15, v45, v45
	v_cmp_o_f32_e64 s17, v47, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v49, 1, v49
	v_cmp_o_f32_e64 s16, v48, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v38, v49, 0x7fff
	v_mov_b16_e32 v49.h, v33.l
	v_mov_b16_e32 v49.l, v37.h
	v_cndmask_b16 v35.l, 0x7fff, v38.h, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v37, v37, v49, 0x7fff
	v_mov_b16_e32 v49.h, v33.l
	v_mov_b16_e32 v49.l, v40.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v40, v40, v49, 0x7fff
	v_mov_b16_e32 v49.h, v33.l
	v_mov_b16_e32 v49.l, v39.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.l, 0x7fff, v40.h, s8
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v39, v39, v49, 0x7fff
	v_mov_b16_e32 v49.h, v33.l
	v_mov_b16_e32 v49.l, v42.h
	v_cndmask_b16 v36.h, 0x7fff, v39.h, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v42, v42, v49, 0x7fff
	v_mov_b16_e32 v49.h, v33.l
	v_mov_b16_e32 v49.l, v41.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v37.l, 0x7fff, v42.h, s10
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v41, v41, v49, 0x7fff
	v_mov_b16_e32 v49.h, v33.l
	v_mov_b16_e32 v49.l, v44.h
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v44, v44, v49, 0x7fff
	v_mov_b16_e32 v49.h, v33.l
	v_mov_b16_e32 v49.l, v43.h
	v_cndmask_b16 v38.l, 0x7fff, v44.h, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v43, v43, v49, 0x7fff
	v_mov_b16_e32 v49.h, v33.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v46, v46, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v38.h, 0x7fff, v43.h, s13
	v_mov_b16_e32 v49.l, v46.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v49, 1, v49
	v_cmp_o_f32_e64 s14, v46, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v46, v46, v49, 0x7fff
	v_mov_b16_e32 v49.h, v33.l
	v_mov_b16_e32 v49.l, v45.h
	v_cndmask_b16 v39.l, 0x7fff, v46.h, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v45, v45, v49, 0x7fff
	v_mov_b16_e32 v49.h, v33.l
	v_mov_b16_e32 v49.l, v48.h
	v_mov_b16_e32 v33.l, v47.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v39.h, 0x7fff, v45.h, s15
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v33, 1, v33
	v_add3_u32 v48, v48, v49, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v47, v47, v33, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v0.h, s3
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s5
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s7
	v_cndmask_b16 v37.h, 0x7fff, v41.h, s11
	v_cndmask_b16 v40.h, 0x7fff, v47.h, s17
	v_cndmask_b16 v40.l, 0x7fff, v48.h, s16
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[201:208], v[1:8]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	v_dual_mov_b32 v111, v244 :: v_dual_mov_b32 v112, v245
	v_dual_mov_b32 v113, v246 :: v_dual_mov_b32 v114, v247
	v_dual_mov_b32 v115, v248 :: v_dual_mov_b32 v116, v249
	v_dual_mov_b32 v117, v250 :: v_dual_mov_b32 v118, v251
	s_clause 0x8                            ; 108-byte Folded Reload
	scratch_load_b128 v[103:106], off, off
	scratch_load_b128 v[107:110], off, off offset:16
	scratch_load_b128 v[241:244], off, off offset:32
	scratch_load_b128 v[245:248], off, off offset:48
	scratch_load_b128 v[233:236], off, off offset:64
	scratch_load_b128 v[237:240], off, off offset:80
	scratch_load_b32 v102, off, off offset:1328
	scratch_load_b32 v44, off, off offset:1332
	scratch_load_b32 v45, off, off offset:1336
.LBB0_4:                                ; %._crit_edge
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, v44, v45
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v68, s18, v102
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s35, v102
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s13, s29, 0xffff
	s_mov_b32 s15, 0x31027000
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v63, 2, v33
	v_or_b32_e32 v62, 4, v33
	v_or_b32_e32 v61, 6, v33
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v69, v68, v33
	v_add_nc_u32_e32 v70, v68, v63
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s7, s18, v33
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v60, 8, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v71, v68, v62
	v_add_lshl_u32 v69, v69, s34, 2
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v70, v70, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v0, 0x60, v33
	v_or_b32_e32 v34, 64, v33
	v_or_b32_e32 v35, 32, v33
	v_or_b32_e32 v36, 0x6e, v33
	v_or_b32_e32 v37, 0x6c, v33
	v_or_b32_e32 v38, 0x6a, v33
	v_or_b32_e32 v39, 0x68, v33
	v_or_b32_e32 v40, 0x66, v33
	v_or_b32_e32 v41, 0x64, v33
	v_or_b32_e32 v42, 0x62, v33
	v_or_b32_e32 v43, 0x4e, v33
	v_or_b32_e32 v44, 0x4c, v33
	v_or_b32_e32 v45, 0x4a, v33
	v_or_b32_e32 v46, 0x48, v33
	v_or_b32_e32 v47, 0x46, v33
	v_or_b32_e32 v48, 0x44, v33
	v_or_b32_e32 v49, 0x42, v33
	v_or_b32_e32 v50, 46, v33
	v_or_b32_e32 v51, 44, v33
	v_or_b32_e32 v52, 42, v33
	v_or_b32_e32 v53, 40, v33
	v_or_b32_e32 v54, 38, v33
	v_or_b32_e32 v55, 36, v33
	v_or_b32_e32 v56, 34, v33
	v_or_b32_e32 v57, 14, v33
	v_or_b32_e32 v58, 12, v33
	v_or_b32_e32 v59, 10, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_or_b32_e32 v64, 0x80, v33
	v_or_b32_e32 v65, 0xa0, v33
	v_or_b32_e32 v66, 0xc0, v33
	v_or_b32_e32 v67, 0xe0, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v72, v68, v61
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s7, vcc_lo, s7
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v73, v68, v60
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v101, 0x80000000, v69, s7
	v_cndmask_b32_e64 v70, 0x80000000, v70, s7
	v_add_lshl_u32 v71, v71, s34, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s11, s18, v64
	v_cmp_gt_i32_e64 s6, s18, v65
	v_cmp_gt_i32_e64 s5, s18, v66
	v_cmp_gt_i32_e64 s4, s18, v67
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v74, v68, v59
	v_add_nc_u32_e32 v75, v68, v58
	v_add_nc_u32_e32 v76, v68, v57
	v_add_nc_u32_e32 v77, v68, v35
	v_add_nc_u32_e32 v78, v68, v56
	v_add_nc_u32_e32 v79, v68, v55
	v_add_nc_u32_e32 v80, v68, v54
	v_add_nc_u32_e32 v81, v68, v53
	v_add_nc_u32_e32 v82, v68, v52
	v_add_nc_u32_e32 v83, v68, v51
	v_add_nc_u32_e32 v84, v68, v50
	v_add_nc_u32_e32 v85, v68, v34
	v_add_nc_u32_e32 v86, v68, v49
	v_add_nc_u32_e32 v87, v68, v48
	v_add_nc_u32_e32 v88, v68, v47
	v_add_nc_u32_e32 v89, v68, v46
	v_add_nc_u32_e32 v90, v68, v45
	v_add_nc_u32_e32 v91, v68, v44
	v_add_nc_u32_e32 v92, v68, v43
	v_add_nc_u32_e32 v93, v68, v0
	v_add_nc_u32_e32 v94, v68, v42
	v_add_nc_u32_e32 v95, v68, v41
	v_add_nc_u32_e32 v96, v68, v40
	v_add_nc_u32_e32 v97, v68, v39
	v_add_nc_u32_e32 v98, v68, v38
	v_add_nc_u32_e32 v99, v68, v37
	v_add_nc_u32_e32 v100, v68, v36
	v_add_nc_u32_e32 v64, v68, v64
	v_add_nc_u32_e32 v65, v68, v65
	v_add_nc_u32_e32 v66, v68, v66
	v_add_nc_u32_e32 v67, v68, v67
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v68, v72, s34, 2
	s_mov_b32 s14, 0x7ffffffe
	s_mov_b32 s12, s28
	v_add_lshl_u32 v72, v74, s34, 2
	s_clause 0x1
	buffer_store_b32 v185, v101, s[12:15], 0 offen
	buffer_store_b32 v186, v70, s[12:15], 0 offen
	v_cndmask_b32_e64 v70, 0x80000000, v71, s7
	v_add_lshl_u32 v71, v73, s34, 2
	v_cndmask_b32_e64 v68, 0x80000000, v68, s7
	v_add_lshl_u32 v73, v75, s34, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s8, s18, v35
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v187, v70, s[12:15], 0 offen
	v_cndmask_b32_e64 v70, 0x80000000, v71, s7
	v_cndmask_b32_e64 v71, 0x80000000, v72, s7
	buffer_store_b32 v188, v68, s[12:15], 0 offen
	v_cndmask_b32_e64 v68, 0x80000000, v73, s7
	v_add_lshl_u32 v72, v76, s34, 2
	s_clause 0x1
	buffer_store_b32 v189, v70, s[12:15], 0 offen
	buffer_store_b32 v190, v71, s[12:15], 0 offen
	v_add_lshl_u32 v70, v77, s34, 2
	v_add_lshl_u32 v71, v78, s34, 2
	buffer_store_b32 v191, v68, s[12:15], 0 offen
	v_cndmask_b32_e64 v68, 0x80000000, v72, s7
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s7, vcc_lo, s8
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v72, v79, s34, 2
	v_cndmask_b32_e64 v70, 0x80000000, v70, s7
	v_cndmask_b32_e64 v71, 0x80000000, v71, s7
	buffer_store_b32 v192, v68, s[12:15], 0 offen
	v_add_lshl_u32 v68, v80, s34, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s9, s18, v34
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v177, v70, s[12:15], 0 offen
	v_cndmask_b32_e64 v70, 0x80000000, v72, s7
	v_add_lshl_u32 v72, v81, s34, 2
	v_cndmask_b32_e64 v68, 0x80000000, v68, s7
	buffer_store_b32 v178, v71, s[12:15], 0 offen
	v_add_lshl_u32 v71, v82, s34, 2
	buffer_store_b32 v179, v70, s[12:15], 0 offen
	v_cndmask_b32_e64 v70, 0x80000000, v72, s7
	buffer_store_b32 v180, v68, s[12:15], 0 offen
	v_add_lshl_u32 v68, v83, s34, 2
	v_cndmask_b32_e64 v71, 0x80000000, v71, s7
	v_add_lshl_u32 v72, v84, s34, 2
	buffer_store_b32 v181, v70, s[12:15], 0 offen
	v_add_lshl_u32 v70, v85, s34, 2
	v_cndmask_b32_e64 v68, 0x80000000, v68, s7
	buffer_store_b32 v182, v71, s[12:15], 0 offen
	v_cndmask_b32_e64 v71, 0x80000000, v72, s7
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s7, vcc_lo, s9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v72, v87, s34, 2
	v_cndmask_b32_e64 v70, 0x80000000, v70, s7
	buffer_store_b32 v183, v68, s[12:15], 0 offen
	v_add_lshl_u32 v68, v86, s34, 2
	s_clause 0x1
	buffer_store_b32 v184, v71, s[12:15], 0 offen
	buffer_store_b32 v169, v70, s[12:15], 0 offen
	v_add_lshl_u32 v70, v88, s34, 2
	v_cndmask_b32_e64 v71, 0x80000000, v72, s7
	v_cndmask_b32_e64 v68, 0x80000000, v68, s7
	v_add_lshl_u32 v72, v89, s34, 2
	v_add_lshl_u32 v73, v90, s34, 2
	v_cndmask_b32_e64 v70, 0x80000000, v70, s7
	s_clause 0x1
	buffer_store_b32 v170, v68, s[12:15], 0 offen
	buffer_store_b32 v171, v71, s[12:15], 0 offen
	v_cndmask_b32_e64 v68, 0x80000000, v72, s7
	v_cndmask_b32_e64 v71, 0x80000000, v73, s7
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s10, s18, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v172, v70, s[12:15], 0 offen
	v_add_lshl_u32 v70, v91, s34, 2
	v_add_lshl_u32 v72, v92, s34, 2
	s_clause 0x1
	buffer_store_b32 v173, v68, s[12:15], 0 offen
	buffer_store_b32 v174, v71, s[12:15], 0 offen
	v_add_lshl_u32 v68, v93, s34, 2
	v_add_lshl_u32 v73, v99, s34, 2
	v_cndmask_b32_e64 v70, 0x80000000, v70, s7
	v_cndmask_b32_e64 v71, 0x80000000, v72, s7
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s7, vcc_lo, s10
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v72, v94, s34, 2
	v_cndmask_b32_e64 v68, 0x80000000, v68, s7
	s_clause 0x1
	buffer_store_b32 v175, v70, s[12:15], 0 offen
	buffer_store_b32 v176, v71, s[12:15], 0 offen
	v_add_lshl_u32 v71, v95, s34, 2
	v_add_lshl_u32 v64, v64, s34, 2
	v_cndmask_b32_e64 v70, 0x80000000, v72, s7
	buffer_store_b32 v160, v68, s[12:15], 0 offen
	v_add_lshl_u32 v68, v96, s34, 2
	v_add_lshl_u32 v72, v97, s34, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s6, vcc_lo, s6
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v161, v70, s[12:15], 0 offen
	v_cndmask_b32_e64 v70, 0x80000000, v71, s7
	v_add_lshl_u32 v71, v98, s34, 2
	v_cndmask_b32_e64 v68, 0x80000000, v68, s7
	v_cndmask_b32_e64 v72, 0x80000000, v72, s7
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s5, vcc_lo, s5
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v162, v70, s[12:15], 0 offen
	v_cndmask_b32_e64 v70, 0x80000000, v71, s7
	s_clause 0x1
	buffer_store_b32 v163, v68, s[12:15], 0 offen
	buffer_store_b32 v164, v72, s[12:15], 0 offen
	v_cndmask_b32_e64 v68, 0x80000000, v73, s7
	v_add_lshl_u32 v71, v100, s34, 2
	v_add_nc_u32_e32 v72, 0x230, v69
	buffer_store_b32 v165, v70, s[12:15], 0 offen
	v_add_nc_u32_e32 v70, 0x208, v69
	buffer_store_b32 v166, v68, s[12:15], 0 offen
	v_cndmask_b32_e64 v68, 0x80000000, v71, s7
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s7, vcc_lo, s11
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_nc_u32_e32 v71, 0x210, v69
	v_cndmask_b32_e64 v64, 0x80000000, v64, s7
	v_cndmask_b32_e64 v70, 0x80000000, v70, s7
	buffer_store_b32 v167, v68, s[12:15], 0 offen
	v_add_nc_u32_e32 v68, 0x218, v69
	s_clause 0x1
	buffer_store_b32 v111, v64, s[12:15], 0 offen
	buffer_store_b32 v112, v70, s[12:15], 0 offen
	v_cndmask_b32_e64 v64, 0x80000000, v71, s7
	v_add_nc_u32_e32 v70, 0x220, v69
	v_cndmask_b32_e64 v68, 0x80000000, v68, s7
	v_add_nc_u32_e32 v71, 0x228, v69
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s4, vcc_lo, s4
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v113, v64, s[12:15], 0 offen
	v_cndmask_b32_e64 v64, 0x80000000, v70, s7
	buffer_store_b32 v114, v68, s[12:15], 0 offen
	v_cndmask_b32_e64 v68, 0x80000000, v71, s7
	v_add_nc_u32_e32 v71, 0x238, v69
	v_cndmask_b32_e64 v70, 0x80000000, v72, s7
	buffer_store_b32 v115, v64, s[12:15], 0 offen
	v_add_lshl_u32 v64, v65, s34, 2
	s_clause 0x1
	buffer_store_b32 v116, v68, s[12:15], 0 offen
	buffer_store_b32 v117, v70, s[12:15], 0 offen
	v_cndmask_b32_e64 v65, 0x80000000, v71, s7
	v_add_nc_u32_e32 v68, 0x288, v69
	v_cndmask_b32_e64 v64, 0x80000000, v64, s6
	v_add_nc_u32_e32 v70, 0x290, v69
	v_add_nc_u32_e32 v71, 0x2a8, v69
	buffer_store_b32 v118, v65, s[12:15], 0 offen
	v_add_nc_u32_e32 v65, 0x298, v69
	buffer_store_b32 v103, v64, s[12:15], 0 offen
	v_cndmask_b32_e64 v64, 0x80000000, v68, s6
	v_cndmask_b32_e64 v68, 0x80000000, v70, s6
	v_add_nc_u32_e32 v70, 0x2a0, v69
	v_cndmask_b32_e64 v65, 0x80000000, v65, s6
	s_clause 0x1
	buffer_store_b32 v104, v64, s[12:15], 0 offen
	buffer_store_b32 v105, v68, s[12:15], 0 offen
	v_add_nc_u32_e32 v68, 0x2b0, v69
	v_cndmask_b32_e64 v64, 0x80000000, v70, s6
	buffer_store_b32 v106, v65, s[12:15], 0 offen
	v_cndmask_b32_e64 v65, 0x80000000, v71, s6
	v_add_nc_u32_e32 v70, 0x2b8, v69
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s3, s19, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v107, v64, s[12:15], 0 offen
	v_add_lshl_u32 v64, v66, s34, 2
	buffer_store_b32 v108, v65, s[12:15], 0 offen
	v_cndmask_b32_e64 v65, 0x80000000, v68, s6
	v_cndmask_b32_e64 v66, 0x80000000, v70, s6
	v_add_nc_u32_e32 v68, 0x308, v69
	v_cndmask_b32_e64 v64, 0x80000000, v64, s5
	v_add_nc_u32_e32 v70, 0x328, v69
	buffer_store_b32 v109, v65, s[12:15], 0 offen
	v_add_nc_u32_e32 v65, 0x310, v69
	s_clause 0x1
	buffer_store_b32 v110, v66, s[12:15], 0 offen
	buffer_store_b32 v241, v64, s[12:15], 0 offen
	v_cndmask_b32_e64 v64, 0x80000000, v68, s5
	v_add_nc_u32_e32 v66, 0x318, v69
	v_add_nc_u32_e32 v68, 0x320, v69
	v_cndmask_b32_e64 v65, 0x80000000, v65, s5
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s3, vcc_lo, s3
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v242, v64, s[12:15], 0 offen
	v_cndmask_b32_e64 v64, 0x80000000, v66, s5
	v_cndmask_b32_e64 v66, 0x80000000, v70, s5
	buffer_store_b32 v243, v65, s[12:15], 0 offen
	v_cndmask_b32_e64 v65, 0x80000000, v68, s5
	v_add_nc_u32_e32 v68, 0x330, v69
	buffer_store_b32 v244, v64, s[12:15], 0 offen
	v_add_nc_u32_e32 v64, 0x338, v69
	s_clause 0x1
	buffer_store_b32 v245, v65, s[12:15], 0 offen
	buffer_store_b32 v246, v66, s[12:15], 0 offen
	v_cndmask_b32_e64 v65, 0x80000000, v68, s5
	v_add_lshl_u32 v66, v67, s34, 2
	v_add_nc_u32_e32 v67, 0x388, v69
	v_add_nc_u32_e32 v68, 0x390, v69
	v_cndmask_b32_e64 v64, 0x80000000, v64, s5
	buffer_store_b32 v247, v65, s[12:15], 0 offen
	v_cndmask_b32_e64 v66, 0x80000000, v66, s4
	v_cndmask_b32_e64 v65, 0x80000000, v67, s4
	v_cndmask_b32_e64 v67, 0x80000000, v68, s4
	s_clause 0x1
	buffer_store_b32 v248, v64, s[12:15], 0 offen
	buffer_store_b32 v233, v66, s[12:15], 0 offen
	v_add_nc_u32_e32 v64, 0x398, v69
	s_clause 0x1
	buffer_store_b32 v234, v65, s[12:15], 0 offen
	buffer_store_b32 v235, v67, s[12:15], 0 offen
	v_add_nc_u32_e32 v65, 0x3a0, v69
	v_add_nc_u32_e32 v66, 0x3a8, v69
	v_add_nc_u32_e32 v67, 0x3b0, v69
	v_add_nc_u32_e32 v68, 0x3b8, v69
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v69, s19, v102
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v64, 0x80000000, v64, s4
	v_cndmask_b32_e64 v65, 0x80000000, v65, s4
	v_cndmask_b32_e64 v66, 0x80000000, v66, s4
	v_cndmask_b32_e64 v67, 0x80000000, v67, s4
	v_cndmask_b32_e64 v68, 0x80000000, v68, s4
	s_clause 0x4
	buffer_store_b32 v236, v64, s[12:15], 0 offen
	buffer_store_b32 v237, v65, s[12:15], 0 offen
	buffer_store_b32 v238, v66, s[12:15], 0 offen
	buffer_store_b32 v239, v67, s[12:15], 0 offen
	buffer_store_b32 v240, v68, s[12:15], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s13, s31, 0xffff
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v33, v69, v33
	v_add_nc_u32_e32 v63, v69, v63
	v_add_nc_u32_e32 v62, v69, v62
	v_add_nc_u32_e32 v61, v69, v61
	v_add_nc_u32_e32 v60, v69, v60
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v33, v33, s33, 2
	v_add_lshl_u32 v63, v63, s33, 2
	v_add_lshl_u32 v62, v62, s33, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v59, v69, v59
	v_add_nc_u32_e32 v58, v69, v58
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v33, 0x80000000, v33, s3
	v_cndmask_b32_e64 v63, 0x80000000, v63, s3
	v_cndmask_b32_e64 v62, 0x80000000, v62, s3
	s_mov_b32 s12, s30
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v57, v69, v57
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_clause 0x2
	buffer_store_b32 v25, v33, s[12:15], 0 offen
	buffer_store_b32 v26, v63, s[12:15], 0 offen
	buffer_store_b32 v27, v62, s[12:15], 0 offen
	v_add_lshl_u32 v25, v61, s33, 2
	v_add_lshl_u32 v26, v60, s33, 2
	v_add_lshl_u32 v27, v59, s33, 2
	v_add_lshl_u32 v33, v58, s33, 2
	v_add_lshl_u32 v57, v57, s33, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s2, s19, v35
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v35, v69, v35
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v56, v69, v56
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v55, v69, v55
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	v_cndmask_b32_e64 v33, 0x80000000, v33, s3
	v_cndmask_b32_e64 v57, 0x80000000, v57, s3
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v54, v69, v54
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_clause 0x4
	buffer_store_b32 v28, v25, s[12:15], 0 offen
	buffer_store_b32 v29, v26, s[12:15], 0 offen
	buffer_store_b32 v30, v27, s[12:15], 0 offen
	buffer_store_b32 v31, v33, s[12:15], 0 offen
	buffer_store_b32 v32, v57, s[12:15], 0 offen
	v_add_lshl_u32 v25, v35, s33, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v53, v69, v53
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v26, v56, s33, 2
	v_add_lshl_u32 v27, v55, s33, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s2, vcc_lo, s2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v52, v69, v52
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v28, v54, s33, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_add_lshl_u32 v29, v53, s33, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v51, v69, v51
	v_add_nc_u32_e32 v50, v69, v50
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	s_clause 0x2
	buffer_store_b32 v17, v25, s[12:15], 0 offen
	buffer_store_b32 v18, v26, s[12:15], 0 offen
	buffer_store_b32 v19, v27, s[12:15], 0 offen
	v_add_lshl_u32 v18, v52, s33, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s1, s19, v34
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v34, v69, v34
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v17, 0x80000000, v29, s2
	v_add_lshl_u32 v19, v51, s33, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v49, v69, v49
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v20, v28, s[12:15], 0 offen
	v_add_lshl_u32 v20, v50, s33, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	buffer_store_b32 v21, v17, s[12:15], 0 offen
	v_add_lshl_u32 v17, v34, s33, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v48, v69, v48
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s1, vcc_lo, s1
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v47, v69, v47
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_store_b32 v22, v18, s[12:15], 0 offen
	v_add_lshl_u32 v18, v49, s33, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v46, v69, v46
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s1
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v45, v69, v45
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_clause 0x2
	buffer_store_b32 v23, v19, s[12:15], 0 offen
	buffer_store_b32 v24, v20, s[12:15], 0 offen
	buffer_store_b32 v9, v17, s[12:15], 0 offen
	v_add_lshl_u32 v9, v48, s33, 2
	v_cndmask_b32_e64 v17, 0x80000000, v18, s1
	v_add_lshl_u32 v18, v47, s33, 2
	v_add_lshl_u32 v19, v46, s33, 2
	v_add_lshl_u32 v20, v45, s33, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v44, v69, v44
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v9, 0x80000000, v9, s1
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v43, v69, v43
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v10, v17, s[12:15], 0 offen
	v_cndmask_b32_e64 v10, 0x80000000, v18, s1
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s0, s19, v0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v0, v69, v0
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v17, 0x80000000, v19, s1
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v42, v69, v42
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v18, 0x80000000, v20, s1
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v41, v69, v41
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v11, v9, s[12:15], 0 offen
	v_add_lshl_u32 v9, v44, s33, 2
	s_clause 0x2
	buffer_store_b32 v12, v10, s[12:15], 0 offen
	buffer_store_b32 v13, v17, s[12:15], 0 offen
	buffer_store_b32 v14, v18, s[12:15], 0 offen
	v_add_lshl_u32 v10, v43, s33, 2
	v_add_lshl_u32 v0, v0, s33, 2
	v_add_lshl_u32 v11, v42, s33, 2
	v_add_lshl_u32 v12, v41, s33, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v40, v69, v40
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v9, 0x80000000, v9, s1
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v39, v69, v39
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v10, 0x80000000, v10, s1
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v38, v69, v38
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_add_nc_u32 v37, v69, v37
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_add_nc_u32 v36, v69, v36
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v9, s[12:15], 0 offen
	buffer_store_b32 v16, v10, s[12:15], 0 offen
	buffer_store_b32 v1, v0, s[12:15], 0 offen
	buffer_store_b32 v2, v11, s[12:15], 0 offen
	buffer_store_b32 v3, v12, s[12:15], 0 offen
	v_add_lshl_u32 v0, v40, s33, 2
	v_add_lshl_u32 v1, v39, s33, 2
	v_add_lshl_u32 v2, v38, s33, 2
	v_add_lshl_u32 v3, v37, s33, 2
	v_add_lshl_u32 v9, v36, s33, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v0, s[12:15], 0 offen
	buffer_store_b32 v5, v1, s[12:15], 0 offen
	buffer_store_b32 v6, v2, s[12:15], 0 offen
	buffer_store_b32 v7, v3, s[12:15], 0 offen
	buffer_store_b32 v8, v9, s[12:15], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1344
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
		.amdhsa_next_free_sgpr 79
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 79
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 1344
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 25564
; TotalNumSgprs: 81
; NumVgprs: 256
; ScratchSize: 1344
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 81
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
	.byte	0                               ; DW_CHILDREN_no
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x1f DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention_backward.py"         ; string offset=7 ; attention_backward.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=29 ; <repo>/src/amd_strix_halo_kernels
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
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 1344
    .sgpr_count:     81
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 359
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
