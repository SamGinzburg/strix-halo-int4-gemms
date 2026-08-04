	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x74
	s_load_b32 s53, s[0:1], 0x9c
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
	s_add_i32 s11, s52, s35
	s_mov_b32 s39, 0x31027000
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, 0x800, v2
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_i32 v34, v0, 5, 1
	v_lshrrev_b32_e32 v36, 4, v0
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v41, 4, v35
	s_mov_b32 s20, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v34, 0x210, v34
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s18, v1
	s_mul_i32 s34, s18, s11
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_cmp_gt_i32_e32 vcc_lo, s18, v33
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_lshl_b32 s3, s18, 2
	s_lshl_b32 s8, s18, 1
	s_mul_i32 s12, s18, 6
	s_lshl_b32 s9, s18, 3
	s_mul_i32 s10, s18, 10
	v_add3_u32 v1, s34, v33, v1
	s_mul_i32 s13, s18, 12
	s_mul_i32 s14, s18, 14
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_and_b32 s37, s5, 0xffff
	v_lshlrev_b32_e32 v2, 1, v1
	v_add_lshl_u32 v4, v1, s3, 1
	v_add_lshl_u32 v3, v1, s8, 1
	v_add_lshl_u32 v5, v1, s12, 1
	v_add_lshl_u32 v6, v1, s9, 1
	v_add_lshl_u32 v7, v1, s10, 1
	v_add_lshl_u32 v9, v1, s13, 1
	v_add_lshl_u32 v10, v1, s14, 1
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_cndmask_b32_e64 v11, 0x80000000, v4, s2
	v_cndmask_b32_e64 v8, 0x80000000, v3, s2
	v_cndmask_b32_e64 v13, 0x80000000, v5, s2
	v_cndmask_b32_e64 v17, 0x80000000, v6, s2
	s_mov_b32 s36, s4
	v_cndmask_b32_e64 v21, 0x80000000, v7, s2
	v_cndmask_b32_e64 v25, 0x80000000, v9, s2
	v_cndmask_b32_e64 v29, 0x80000000, v10, s2
	s_clause 0x7
	buffer_load_b128 v[1:4], v1, s[36:39], 0 offen
	buffer_load_b128 v[5:8], v8, s[36:39], 0 offen
	buffer_load_b128 v[9:12], v11, s[36:39], 0 offen
	buffer_load_b128 v[13:16], v13, s[36:39], 0 offen
	buffer_load_b128 v[17:20], v17, s[36:39], 0 offen
	buffer_load_b128 v[21:24], v21, s[36:39], 0 offen
	buffer_load_b128 v[25:28], v25, s[36:39], 0 offen
	buffer_load_b128 v[29:32], v29, s[36:39], 0 offen
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v37, s35, v36
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v38, v34, v41
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_mul_lo_u32 v36, s19, v36
	s_mul_i32 s33, s19, s11
	s_lshl_b32 s4, s19, 2
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s3, 0x800, v37
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v37, 0, v38
	v_xad_u32 v39, 0x420, v38, 0
	v_xad_u32 v40, 0x840, v38, 0
	v_xad_u32 v42, 0xc60, v38, 0
	v_xad_u32 v43, 0x1080, v38, 0
	v_xad_u32 v44, 0x14a0, v38, 0
	v_xad_u32 v46, 0x18c0, v38, 0
	v_xad_u32 v38, 0x1ce0, v38, 0
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_mul_i32 s5, s19, 12
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s37, s7, 0xffff
	s_mov_b32 s36, s6
	.loc	1 603 39                        ; attention_backward.py:603:39
	s_sub_i32 s11, s35, s53
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(7)
	ds_store_b128 v37, v[1:4]
	s_waitcnt vmcnt(6)
	ds_store_b128 v39, v[5:8]
	s_waitcnt vmcnt(5)
	ds_store_b128 v40, v[9:12]
	s_waitcnt vmcnt(4)
	ds_store_b128 v42, v[13:16]
	s_waitcnt vmcnt(3)
	ds_store_b128 v43, v[17:20]
	s_waitcnt vmcnt(2)
	ds_store_b128 v44, v[21:24]
	s_waitcnt vmcnt(1)
	ds_store_b128 v46, v[25:28]
	s_waitcnt vmcnt(0)
	ds_store_b128 v38, v[29:32]
	v_mov_b32_e32 v8, 0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v110, 15, v0
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v13, v8 :: v_dual_lshlrev_b32 v40, 4, v0
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshlrev_b32_e32 v34, 3, v110
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v65, v8
	v_mov_b32_e32 v64, v8
	v_mov_b32_e32 v63, v8
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add3_u32 v36, s33, v34, v36
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s2, s19, v34
	v_mov_b32_e32 v62, v8
	v_mov_b32_e32 v61, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v60, v8 :: v_dual_lshlrev_b32 v45, 1, v36
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_lshl_u32 v1, v36, s4, 1
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s3, s3, s2
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_lshl_b32 s4, s19, 3
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_lshl_u32 v3, v36, s5, 1
	v_cndmask_b32_e64 v45, 0x80000000, v45, s3
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	v_add_lshl_u32 v2, v36, s4, 1
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v58, v8
	s_clause 0x1
	buffer_load_b128 v[42:45], v45, s[36:39], 0 offen
	buffer_load_b128 v[46:49], v1, s[36:39], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v2, s3
	v_cndmask_b32_e64 v2, 0x80000000, v3, s3
	s_clause 0x1
	buffer_load_b128 v[50:53], v1, s[36:39], 0 offen
	buffer_load_b128 v[54:57], v2, s[36:39], 0 offen
	v_mov_b32_e32 v3, v8
	v_dual_mov_b32 v14, v8 :: v_dual_lshlrev_b32 v37, 4, v110
	v_dual_mov_b32 v11, v8 :: v_dual_lshlrev_b32 v38, 9, v110
	s_clause 0x3                            ; 64-byte Folded Spill
	scratch_store_b128 off, v[58:61], off
	scratch_store_b128 off, v[62:65], off offset:16
	scratch_store_b128 off, v[58:61], off offset:32
	scratch_store_b128 off, v[62:65], off offset:48
	v_dual_mov_b32 v15, v8 :: v_dual_and_b32 v36, 48, v0
	v_mov_b32_e32 v24, v8
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_or_b32_e32 v39, v38, v37
	v_mov_b32_e32 v10, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xor_b32_e32 v58, v40, v36
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v7, v8
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v61, 0, v39
	v_xad_u32 v62, v39, 16, 0
	v_xad_u32 v63, v39, 32, 0
	v_xad_u32 v64, v39, 48, 0
	ds_load_b128 v[124:127], v61
	ds_load_b128 v[233:236], v61 offset:256
	ds_load_b128 v[128:131], v62
	ds_load_b128 v[237:240], v62 offset:256
	ds_load_b128 v[132:135], v63
	ds_load_b128 v[76:79], v63 offset:256
	ds_load_b128 v[136:139], v64
	ds_load_b128 v[80:83], v64 offset:256
	v_xad_u32 v65, v39, 64, 0
	v_xad_u32 v66, 0x50, v39, 0
	s_waitcnt lgkmcnt(2)
	scratch_store_b128 off, v[76:79], off offset:256 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[80:83], off offset:272 ; 16-byte Folded Spill
	ds_load_b128 v[140:143], v65
	ds_load_b128 v[76:79], v65 offset:256
	ds_load_b128 v[144:147], v66
	ds_load_b128 v[80:83], v66 offset:256
	v_xad_u32 v67, 0x60, v39, 0
	v_xad_u32 v68, 0x70, v39, 0
	v_xad_u32 v69, 0x80, v39, 0
	s_waitcnt lgkmcnt(2)
	scratch_store_b128 off, v[76:79], off offset:288 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[80:83], off offset:304 ; 16-byte Folded Spill
	v_xad_u32 v70, 0x90, v39, 0
	v_xad_u32 v71, 0xb0, v39, 0
	v_xad_u32 v72, 0xa0, v39, 0
	v_xad_u32 v73, 0xd0, v39, 0
	v_xad_u32 v74, 0xc0, v39, 0
	v_xad_u32 v75, 0xf0, v39, 0
	v_xad_u32 v39, 0xe0, v39, 0
	ds_load_b128 v[148:151], v67
	ds_load_b128 v[61:64], v67 offset:256
	ds_load_b128 v[152:155], v68
	ds_load_b128 v[65:68], v68 offset:256
	ds_load_b128 v[213:216], v69
	ds_load_b128 v[92:95], v69 offset:256
	ds_load_b128 v[217:220], v70
	ds_load_b128 v[96:99], v70 offset:256
	ds_load_b128 v[76:79], v72
	ds_load_b128 v[84:87], v72 offset:256
	ds_load_b128 v[80:83], v71
	ds_load_b128 v[88:91], v71 offset:256
	ds_load_b128 v[116:119], v74
	ds_load_b128 v[201:204], v74 offset:256
	ds_load_b128 v[120:123], v73
	ds_load_b128 v[205:208], v73 offset:256
	ds_load_b128 v[221:224], v39
	ds_load_b128 v[245:248], v39 offset:256
	ds_load_b128 v[225:228], v75
	ds_load_b128 v[249:252], v75 offset:256
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_add_nc_u32_e32 v59, 0, v58
	v_dual_mov_b32 v6, v8 :: v_dual_and_b32 v39, 32, v0
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v163, v8
	v_mov_b32_e32 v162, v8
	v_mov_b32_e32 v161, v8
	v_mov_b32_e32 v160, v8
	v_mov_b32_e32 v159, v8
	v_mov_b32_e32 v158, v8
	v_mov_b32_e32 v157, v8
	v_mov_b32_e32 v156, v8
	v_mov_b32_e32 v109, v8
	v_mov_b32_e32 v108, v8
	v_mov_b32_e32 v107, v8
	v_mov_b32_e32 v106, v8
	v_mov_b32_e32 v105, v8
	v_mov_b32_e32 v104, v8
	v_mov_b32_e32 v103, v8
	v_mov_b32_e32 v102, v8
	v_mov_b32_e32 v173, v8
	v_mov_b32_e32 v172, v8
	v_mov_b32_e32 v171, v8
	v_mov_b32_e32 v170, v8
	v_mov_b32_e32 v169, v8
	v_mov_b32_e32 v168, v8
	v_mov_b32_e32 v167, v8
	v_mov_b32_e32 v166, v8
	v_mov_b32_e32 v181, v8
	v_mov_b32_e32 v180, v8
	v_mov_b32_e32 v179, v8
	v_mov_b32_e32 v178, v8
	v_mov_b32_e32 v177, v8
	v_mov_b32_e32 v176, v8
	v_mov_b32_e32 v175, v8
	v_mov_b32_e32 v174, v8
	v_mov_b32_e32 v189, v8
	v_mov_b32_e32 v188, v8
	v_mov_b32_e32 v187, v8
	v_mov_b32_e32 v186, v8
	v_mov_b32_e32 v185, v8
	v_mov_b32_e32 v184, v8
	v_mov_b32_e32 v183, v8
	v_mov_b32_e32 v182, v8
	v_xad_u32 v60, 0x440, v58, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v197, v8
	v_mov_b32_e32 v196, v8
	v_mov_b32_e32 v195, v8
	v_mov_b32_e32 v194, v8
	v_mov_b32_e32 v193, v8
	v_mov_b32_e32 v192, v8
	v_mov_b32_e32 v191, v8
	v_mov_b32_e32 v190, v8
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmpk_gt_i32 s11, 0x7ff
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt vmcnt(3)
	ds_store_b128 v59, v[42:45]
	s_waitcnt vmcnt(2)
	ds_store_b128 v60, v[46:49]
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v44, v0, 4, 1
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v42, 0x880, v58, 0
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshrrev_b32_e32 v45, 1, v39
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v43, 0xcc0, v58, 0
	s_waitcnt vmcnt(1)
	ds_store_b128 v42, v[50:53]
	s_waitcnt vmcnt(0)
	ds_store_b128 v43, v[54:57]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_mul_u32_u24_e32 v1, 0x110, v110
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_cmp_eq_u32_e64 s3, 0, v39
	s_clause 0x3
	s_load_b32 s54, s[0:1], 0x7c
	s_load_b64 s[40:41], s[0:1], 0x0
	s_load_b128 s[4:7], s[0:1], 0x38
	s_load_b64 s[44:45], s[0:1], 0x48
	.loc	1 603 25 is_stmt 1              ; attention_backward.py:603:25
	s_max_i32 s0, s11, 0
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v2, 0xf0, v1, 0
	v_xad_u32 v3, 0xe0, v1, 0
	v_xad_u32 v4, 0xd0, v1, 0
	v_xad_u32 v5, 0xc0, v1, 0
	v_xad_u32 v6, 0xb0, v1, 0
	ds_load_b128 v[12:15], v2
	ds_load_b128 v[8:11], v3
	v_xad_u32 v7, 0xa0, v1, 0
	v_xad_u32 v2, 0x90, v1, 0
	v_xad_u32 v3, 0x80, v1, 0
	.loc	1 604 45                        ; attention_backward.py:604:45
	s_and_b32 s56, s0, 0x7fffffe0
	s_mov_b32 s21, s20
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s55, s54, 0x3fb8aa3b
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s49, s7, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s37, s5, 0xffff
	s_mov_b32 s36, s4
	s_mov_b32 s27, s20
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[8:11], off offset:480
	scratch_store_b128 off, v[12:15], off offset:496
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[12:15], v4
	ds_load_b128 v[8:11], v5
	s_mov_b32 s48, s6
	s_mov_b32 s50, s38
	s_mov_b32 s51, s39
	s_mov_b32 s46, s38
	s_mov_b32 s47, s39
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[8:11], off offset:512
	scratch_store_b128 off, v[12:15], off offset:528
	ds_load_b128 v[8:11], v6
	ds_load_b128 v[4:7], v7
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[4:7], off offset:544
	scratch_store_b128 off, v[8:11], off offset:560
	ds_load_b128 v[12:15], v2
	ds_load_b128 v[8:11], v3
	v_xad_u32 v4, 0x70, v1, 0
	v_xad_u32 v5, 0x60, v1, 0
	v_xad_u32 v6, 0x50, v1, 0
	v_xad_u32 v7, v1, 64, 0
	v_xad_u32 v2, v1, 48, 0
	v_xad_u32 v3, v1, 32, 0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[8:11], off offset:576
	scratch_store_b128 off, v[12:15], off offset:592
	ds_load_b128 v[12:15], v4
	ds_load_b128 v[8:11], v5
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[8:11], off offset:608
	scratch_store_b128 off, v[12:15], off offset:624
	ds_load_b128 v[8:11], v6
	ds_load_b128 v[4:7], v7
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[4:7], off offset:640
	scratch_store_b128 off, v[8:11], off offset:656
	ds_load_b128 v[11:14], v2
	ds_load_b128 v[7:10], v3
	v_xad_u32 v4, v1, 16, 0
	v_mad_u32_u24 v5, 0x110, v110, 0
	v_cndmask_b32_e64 v6, 0x840, 0, s3
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_lshrrev_b32_e32 v2, 3, v39
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[7:10], off offset:672
	scratch_store_b128 off, v[11:14], off offset:688
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[11:14], v4
	ds_load_b128 v[7:10], v5
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v4, 9, v35
	v_and_b32_e32 v3, 48, v40
	v_lshrrev_b32_e32 v5, 2, v39
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[7:10], off offset:704
	scratch_store_b128 off, v[11:14], off offset:720
	v_xor_b32_e32 v7, v6, v41
	v_lshrrev_b32_e32 v6, 1, v36
	.loc	1 607 13                        ; attention_backward.py:607:13
	v_mad_u64_u32 v[40:41], null, s18, v2, v[33:34]
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_lshrrev_b32_e32 v2, 2, v36
	v_mov_b32_e32 v26, v25
	v_or3_b32 v8, v4, v5, v3
	v_dual_mov_b32 v27, v25 :: v_dual_lshlrev_b32 v4, 3, v0
	v_xor_b32_e32 v3, v3, v6
	.loc	1 607 13                        ; attention_backward.py:607:13
	v_mad_u64_u32 v[33:34], null, s19, v2, v[34:35]
	v_bfe_i32 v2, v0, 3, 1
	v_cndmask_b32_e64 v5, 0x420, 0, s3
	v_dual_mov_b32 v29, v25 :: v_dual_and_b32 v4, 48, v4
	v_dual_mov_b32 v31, v25 :: v_dual_lshlrev_b32 v6, 6, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_or_b32 v2, 0x210, v2, v5
	v_lshl_or_b32 v11, v39, 7, v1
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v1, s35, v44
	v_and_or_b32 v5, 0x1c0, v6, v4
	.loc	1 607 13                        ; attention_backward.py:607:13
	v_mul_u32_u24_e32 v6, 0x210, v110
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v35, v45, v110
	v_or_b32_e32 v9, v3, v38
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s0, 0x800, v1
	v_xor_b32_e32 v10, v2, v5
	v_lshl_or_b32 v6, v39, 8, v6
	v_lshl_or_b32 v5, v36, 6, v37
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v7, off offset:740
	scratch_store_b32 off, v9, off offset:744
	scratch_store_b32 off, v10, off offset:752
	scratch_store_b32 off, v6, off offset:748
	scratch_store_b32 off, v1, off offset:756
	v_dual_mov_b32 v30, v25 :: v_dual_lshlrev_b32 v1, 2, v36
	.loc	1 607 13                        ; attention_backward.py:607:13
	scratch_store_b32 off, v35, off offset:1064 ; 4-byte Folded Spill
	v_mad_u64_u32 v[35:36], null, s18, 3, v[40:41]
	v_xor_b32_e32 v2, 0x210, v7
	v_xor_b32_e32 v13, v5, v1
	v_mov_b32_e32 v32, v25
	v_dual_mov_b32 v17, v25 :: v_dual_and_b32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v1, 0, v2
	scratch_store_b64 off, v[35:36], off offset:1068 ; 8-byte Folded Spill
	v_mad_u64_u32 v[35:36], null, s18, 9, v[40:41]
	scratch_store_b32 off, v5, off offset:764 ; 4-byte Folded Spill
	v_dual_mov_b32 v19, v25 :: v_dual_lshlrev_b32 v0, 2, v0
	v_dual_mov_b32 v28, v25 :: v_dual_lshlrev_b32 v3, 1, v110
	v_xor_b32_e32 v2, 0x1080, v7
	scratch_store_b64 off, v[35:36], off offset:1076 ; 8-byte Folded Spill
	v_mad_u64_u32 v[35:36], null, s18, 11, v[40:41]
	v_or3_b32 v12, v3, v0, v39
	v_add3_u32 v0, 0, v39, v3
	v_xor_b32_e32 v3, 0x420, v7
	v_lshl_or_b32 v14, v110, 6, v4
	v_xor_b32_e32 v4, 0x14a0, v7
	v_xor_b32_e32 v5, 0x16b0, v7
	scratch_store_b64 off, v[35:36], off offset:1084 ; 8-byte Folded Spill
	v_mad_u64_u32 v[35:36], null, s18, 17, v[40:41]
	v_dual_mov_b32 v21, v25 :: v_dual_add_nc_u32 v198, s8, v40
	v_dual_mov_b32 v23, v25 :: v_dual_add_nc_u32 v200, s10, v40
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v191, v25
	scratch_store_b64 off, v[35:36], off offset:1092 ; 8-byte Folded Spill
	v_mad_u64_u32 v[35:36], null, s18, 18, v[40:41]
	v_mov_b32_e32 v193, v25
	v_mov_b32_e32 v195, v25
	v_mov_b32_e32 v197, v25
	v_mov_b32_e32 v183, v25
	v_mov_b32_e32 v185, v25
	v_mov_b32_e32 v187, v25
	scratch_store_b64 off, v[35:36], off offset:1100 ; 8-byte Folded Spill
	v_mad_u64_u32 v[35:36], null, s18, 19, v[40:41]
	v_mov_b32_e32 v189, v25
	v_mov_b32_e32 v175, v25
	v_mov_b32_e32 v177, v25
	v_mov_b32_e32 v179, v25
	v_mov_b32_e32 v181, v25
	v_mov_b32_e32 v167, v25
	scratch_store_b64 off, v[35:36], off offset:1108 ; 8-byte Folded Spill
	v_mad_u64_u32 v[35:36], null, s18, 24, v[40:41]
	v_mov_b32_e32 v18, v25
	v_mov_b32_e32 v169, v25
	v_mov_b32_e32 v171, v25
	v_mov_b32_e32 v173, v25
	v_mov_b32_e32 v47, v25
	v_mov_b32_e32 v49, v25
	scratch_store_b64 off, v[35:36], off offset:1116 ; 8-byte Folded Spill
	v_mad_u64_u32 v[35:36], null, s18, 25, v[40:41]
	v_mov_b32_e32 v51, v25
	v_mov_b32_e32 v53, v25
	v_dual_mov_b32 v20, v25 :: v_dual_add_nc_u32 v199, s9, v40
	v_mov_b32_e32 v22, v25
	v_mov_b32_e32 v24, v25
	scratch_store_b64 off, v[35:36], off offset:1124 ; 8-byte Folded Spill
	v_mad_u64_u32 v[35:36], null, s18, 26, v[40:41]
	v_mov_b32_e32 v16, v25
	v_mov_b32_e32 v190, v25
	v_mov_b32_e32 v192, v25
	v_mov_b32_e32 v194, v25
	v_mov_b32_e32 v196, v25
	v_mov_b32_e32 v182, v25
	scratch_store_b64 off, v[35:36], off offset:1132 ; 8-byte Folded Spill
	v_mov_b32_e32 v35, v40
	scratch_store_b32 off, v1, off offset:776 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v3
	v_xor_b32_e32 v3, 0x1290, v7
	v_mov_b32_e32 v184, v25
	scratch_store_b64 off, v[35:36], off offset:900 ; 8-byte Folded Spill
	v_mad_u64_u32 v[35:36], null, s18, 27, v[40:41]
	v_mov_b32_e32 v186, v25
	v_mov_b32_e32 v188, v25
	v_mov_b32_e32 v174, v25
	v_mov_b32_e32 v176, v25
	v_mov_b32_e32 v178, v25
	v_mov_b32_e32 v180, v25
	scratch_store_b64 off, v[35:36], off offset:1140 ; 8-byte Folded Spill
	v_mad_u64_u32 v[35:36], null, s19, 3, v[33:34]
	v_mov_b32_e32 v166, v25
	v_mov_b32_e32 v168, v25
	v_mov_b32_e32 v170, v25
	v_mov_b32_e32 v172, v25
	v_mov_b32_e32 v46, v25
	v_mov_b32_e32 v48, v25
	scratch_store_b64 off, v[35:36], off offset:1148 ; 8-byte Folded Spill
	v_mad_u64_u32 v[35:36], null, s19, 17, v[33:34]
	v_mov_b32_e32 v50, v25
	v_mov_b32_e32 v52, v25
	s_clause 0xa                            ; 144-byte Folded Spill
	scratch_store_b128 off, v[46:49], off offset:64
	scratch_store_b128 off, v[50:53], off offset:80
	scratch_store_b128 off, v[46:49], off offset:96
	scratch_store_b128 off, v[50:53], off offset:112
	scratch_store_b128 off, v[46:49], off offset:32
	scratch_store_b128 off, v[50:53], off offset:48
	scratch_store_b128 off, v[46:49], off
	scratch_store_b128 off, v[50:53], off offset:16
	scratch_store_b32 off, v110, off offset:1440
	scratch_store_b32 off, v45, off offset:1444
	scratch_store_b64 off, v[35:36], off offset:1156
	v_mad_u64_u32 v[35:36], null, s19, 18, v[33:34]
	scratch_store_b64 off, v[35:36], off offset:1164 ; 8-byte Folded Spill
	v_mov_b32_e32 v35, v33
	scratch_store_b32 off, v1, off offset:780 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x630, v7
	v_mad_u64_u32 v[33:34], null, s19, 19, v[33:34]
	v_mov_b32_e32 v7, v25
	scratch_store_b64 off, v[35:36], off offset:912 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1c                           ; 432-byte Folded Spill
	scratch_store_b32 off, v44, off offset:1436
	scratch_store_b64 off, v[33:34], off offset:1172
	scratch_store_b128 off, v[61:64], off offset:1276
	scratch_store_b128 off, v[65:68], off offset:1292
	scratch_store_b128 off, v[92:95], off offset:1404
	scratch_store_b128 off, v[96:99], off offset:1420
	scratch_store_b128 off, v[76:79], off offset:1180
	scratch_store_b128 off, v[80:83], off offset:1196
	scratch_store_b128 off, v[84:87], off offset:1308
	scratch_store_b128 off, v[88:91], off offset:1324
	scratch_store_b128 off, v[116:119], off offset:1212
	scratch_store_b128 off, v[120:123], off offset:1228
	scratch_store_b128 off, v[201:204], off offset:1340
	scratch_store_b128 off, v[205:208], off offset:1356
	scratch_store_b128 off, v[221:224], off offset:1244
	scratch_store_b128 off, v[225:228], off offset:1260
	scratch_store_b128 off, v[245:248], off offset:1372
	scratch_store_b128 off, v[249:252], off offset:1388
	scratch_store_b128 off, v[124:127], off offset:320
	scratch_store_b128 off, v[128:131], off offset:336
	scratch_store_b128 off, v[132:135], off offset:352
	scratch_store_b128 off, v[136:139], off offset:368
	scratch_store_b128 off, v[140:143], off offset:384
	scratch_store_b128 off, v[144:147], off offset:400
	scratch_store_b128 off, v[148:151], off offset:416
	scratch_store_b128 off, v[152:155], off offset:432
	scratch_store_b128 off, v[213:216], off offset:448
	scratch_store_b128 off, v[217:220], off offset:464
	scratch_store_b32 off, v1, off offset:784
	v_add_nc_u32_e32 v1, 0, v2
	v_xor_b32_e32 v2, 32, v6
	scratch_store_b32 off, v1, off offset:788 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v3
	v_xor_b32_e32 v3, 48, v6
	scratch_store_b32 off, v1, off offset:792 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v4
	v_xor_b32_e32 v4, 64, v6
	scratch_store_b32 off, v1, off offset:796 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v5
	v_xor_b32_e32 v5, 0x50, v6
	scratch_store_b32 off, v1, off offset:800 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 16, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:804 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v2
	v_xor_b32_e32 v2, 0x70, v6
	scratch_store_b32 off, v1, off offset:808 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v3
	v_xor_b32_e32 v3, 0x80, v6
	scratch_store_b32 off, v1, off offset:812 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v4
	v_xor_b32_e32 v4, 0x90, v6
	scratch_store_b32 off, v1, off offset:816 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v5
	v_xor_b32_e32 v5, 0xa0, v6
	scratch_store_b32 off, v1, off offset:820 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x60, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:824 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v2
	v_xor_b32_e32 v2, 0xc0, v6
	scratch_store_b32 off, v1, off offset:828 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v3
	v_xor_b32_e32 v3, 0xd0, v6
	scratch_store_b32 off, v1, off offset:832 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v4
	v_xor_b32_e32 v4, 0xe0, v6
	scratch_store_b32 off, v1, off offset:836 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v5
	v_xor_b32_e32 v5, 0xf0, v6
	scratch_store_b32 off, v1, off offset:840 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xb0, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v6, v25 :: v_dual_add_nc_u32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:844 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v2
	v_xor_b32_e32 v2, 0x1b0, v9
	scratch_store_b32 off, v1, off offset:848 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v3
	v_xor_b32_e32 v3, 32, v9
	scratch_store_b32 off, v1, off offset:852 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v4
	v_xor_b32_e32 v4, 0xb0, v9
	scratch_store_b32 off, v1, off offset:856 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v5
	v_xor_b32_e32 v5, 0x190, v9
	scratch_store_b32 off, v1, off offset:860 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x90, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:864 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x120, v9
	v_mov_b32_e32 v9, v25
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:868 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v2
	v_xor_b32_e32 v2, 32, v10
	scratch_store_b32 off, v1, off offset:872 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v3
	v_xor_b32_e32 v3, 48, v10
	scratch_store_b32 off, v1, off offset:876 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v4
	v_xor_b32_e32 v4, 0x110, v13
	scratch_store_b32 off, v1, off offset:880 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v5
	v_xor_b32_e32 v5, 0x220, v13
	scratch_store_b32 off, v1, off offset:884 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 16, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v10, v25 :: v_dual_add_nc_u32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:888 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v2
	v_mov_b32_e32 v2, v25
	scratch_store_b32 off, v1, off offset:896 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v3
	v_mov_b32_e32 v3, v25
	scratch_store_b32 off, v1, off offset:908 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v4
	v_mov_b32_e32 v4, v25
	scratch_store_b32 off, v1, off offset:920 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:924
	scratch_store_b32 off, v13, off offset:768
	v_xor_b32_e32 v1, 0x330, v13
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v5, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:928 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 16, v11
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:932 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 32, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:936 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 48, v11
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:940 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 64, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:944 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x50, v11
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:948 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x60, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:952 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x70, v11
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:956 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x80, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:960 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x90, v11
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:964 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xa0, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:968 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xb0, v11
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:972 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xc0, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:976 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xd0, v11
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:980 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xe0, v11
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:984
	scratch_store_b32 off, v11, off offset:760
	v_xor_b32_e32 v1, 0xf0, v11
	v_mov_b32_e32 v11, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:988 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x90, v12
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:992 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x120, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:996
	scratch_store_b32 off, v12, off offset:772
	v_xor_b32_e32 v1, 0x1b0, v12
	v_dual_mov_b32 v12, v25 :: v_dual_add_nc_u32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:1000 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 16, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:1004 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 32, v14
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:1008
	scratch_store_b32 off, v14, off offset:892
	v_xor_b32_e32 v1, 48, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v14, v25 :: v_dual_add_nc_u32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:1012 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x90, v8
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:1016 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x120, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:1020 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1b0, v8
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:1024 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:1028 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x130, v8
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:1032 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1a0, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:1036 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 32, v8
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:1040 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xb0, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:1044 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x190, v8
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:1048 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 48, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:1052 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xa0, v8
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:1056
	scratch_store_b32 off, v8, off offset:736
	v_xor_b32_e32 v1, 0x110, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v8, v25 :: v_dual_add_nc_u32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:1060 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, v25
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[40:41], off, off offset:900
	scratch_load_b64 v[36:37], off, off offset:1068
	scratch_load_b64 v[38:39], off, off offset:1076
	scratch_load_b64 v[43:44], off, off offset:1084
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_or_b32 s1, s56, s52
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v208, s27 :: v_dual_mov_b32 v205, s24
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_mul_i32 s3, s1, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v203, s22 :: v_dual_mov_b32 v202, s21
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v37, s3, v199, 1
	v_add_lshl_u32 v35, s3, v198, 1
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v201, s20
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s1, s1, s19
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v207, s26
	.loc	1 663 37                        ; attention_backward.py:663:37
	scratch_load_b64 v[44:45], off, off offset:1100 ; 8-byte Folded Reload
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v206, s25
	v_mov_b32_e32 v204, s23
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v33, s3, v40, 1
	.loc	1 607 13                        ; attention_backward.py:607:13
	v_add_nc_u32_e32 v34, s18, v40
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v38, s3, v38, 1
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v39, s3, v43, 1
	v_add_lshl_u32 v36, s3, v36, 1
	v_add_lshl_u32 v34, s3, v34, 1
	v_cndmask_b32_e32 v42, 0x80000000, v38, vcc_lo
	v_add_lshl_u32 v38, s3, v200, 1
	v_cndmask_b32_e32 v43, 0x80000000, v39, vcc_lo
	.loc	1 607 13                        ; attention_backward.py:607:13
	v_lshl_add_u32 v39, s18, 4, v40
	.loc	1 663 37                        ; attention_backward.py:663:37
	scratch_load_b64 v[40:41], off, off offset:1092 ; 8-byte Folded Reload
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v41, s3, v44, 1
	s_clause 0x4                            ; 40-byte Folded Reload
	scratch_load_b64 v[44:45], off, off offset:1108
	scratch_load_b64 v[45:46], off, off offset:1116
	scratch_load_b64 v[46:47], off, off offset:1124
	scratch_load_b64 v[47:48], off, off offset:1132
	scratch_load_b64 v[48:49], off, off offset:1140
	v_add_lshl_u32 v39, s3, v39, 1
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_cndmask_b32 v36, 0x80000000, v36
	v_add_lshl_u32 v40, s3, v40, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_cndmask_b32 v40, 0x80000000, v40
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v44, s3, v44, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v45, s3, v45, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v46, s3, v46, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v47, s3, v47, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v48, s3, v48, 1
	v_dual_cndmask_b32 v41, 0x80000000, v41 :: v_dual_cndmask_b32 v44, 0x80000000, v44
	v_dual_cndmask_b32 v45, 0x80000000, v45 :: v_dual_cndmask_b32 v46, 0x80000000, v46
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v51, 0x80000000, v48, vcc_lo
	s_clause 0xf
	buffer_load_b128 v[73:76], v33, s[40:43], 0 offen
	buffer_load_b128 v[77:80], v35, s[40:43], 0 offen
	buffer_load_b128 v[65:68], v37, s[40:43], 0 offen
	buffer_load_b128 v[69:72], v38, s[40:43], 0 offen
	buffer_load_b128 v[209:212], v39, s[40:43], 0 offen
	buffer_load_b128 v[61:64], v41, s[40:43], 0 offen
	buffer_load_b128 v[157:160], v45, s[40:43], 0 offen
	buffer_load_b128 v[229:232], v47, s[40:43], 0 offen
	buffer_load_b128 v[56:59], v34, s[40:43], 0 offen
	buffer_load_b128 v[38:41], v40, s[40:43], 0 offen
	buffer_load_b128 v[52:55], v36, s[40:43], 0 offen
	buffer_load_b128 v[34:37], v44, s[40:43], 0 offen
	buffer_load_b128 v[47:50], v42, s[40:43], 0 offen
	buffer_load_b128 v[225:228], v46, s[40:43], 0 offen
	buffer_load_b128 v[43:46], v43, s[40:43], 0 offen
	buffer_load_b128 v[250:253], v51, s[40:43], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v33, off, off offset:740 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, 0, v33
	ds_store_b128 v33, v[73:76]
	ds_store_b128 v33, v[209:212] offset:8192
	scratch_load_b32 v33, off, off offset:776 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v33, v[56:59]
	ds_store_b128 v33, v[38:41] offset:8192
	scratch_load_b32 v33, off, off offset:780 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v33, v[77:80]
	ds_store_b128 v33, v[61:64] offset:8192
	scratch_load_b32 v33, off, off offset:784 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v33, v[52:55]
	ds_store_b128 v33, v[34:37] offset:8192
	scratch_load_b32 v33, off, off offset:788 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v33, v[65:68]
	ds_store_b128 v33, v[157:160] offset:8192
	scratch_load_b32 v33, off, off offset:792 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v33, v[47:50]
	ds_store_b128 v33, v[225:228] offset:8192
	scratch_load_b32 v33, off, off offset:796 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v33, v[69:72]
	ds_store_b128 v33, v[229:232] offset:8192
	scratch_load_b32 v33, off, off offset:800 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v33, v[43:46]
	ds_store_b128 v33, v[250:253] offset:8192
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x5                            ; 48-byte Folded Reload
	scratch_load_b32 v33, off, off offset:748
	scratch_load_b32 v42, off, off offset:804
	scratch_load_b32 v51, off, off offset:808
	scratch_load_b32 v60, off, off offset:812
	scratch_load_b128 v[241:244], off, off offset:1244
	scratch_load_b128 v[245:248], off, off offset:1260
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v33, 0, v33
	s_waitcnt vmcnt(2)
	ds_load_b128 v[96:99], v60
	ds_load_b128 v[100:103], v33 offset:256
	ds_load_b128 v[104:107], v42 offset:256
	ds_load_b128 v[108:111], v51 offset:256
	ds_load_b128 v[112:115], v60 offset:256
	ds_load_b128 v[92:95], v51
	ds_load_b128 v[84:87], v33
	ds_load_b128 v[88:91], v42
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v42, off, off offset:820
	scratch_load_b32 v33, off, off offset:816
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[116:123], v[124:131], v[84:91], v[201:208]
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(1)
	ds_load_b128 v[88:91], v42
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_wmma_f32_16x16x16_bf16 v[116:123], v[132:139], v[92:99], v[116:123]
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	ds_load_b128 v[84:87], v33
	ds_load_b128 v[92:95], v33 offset:256
	ds_load_b128 v[96:99], v42 offset:256
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v42, off, off offset:828
	scratch_load_b32 v33, off, off offset:824
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[116:123], v[140:147], v[84:91], v[116:123]
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	ds_load_b128 v[84:87], v33
	ds_load_b128 v[124:127], v33 offset:256
	ds_load_b128 v[128:131], v42 offset:256
	ds_load_b128 v[88:91], v42
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v42, off, off offset:836
	scratch_load_b32 v33, off, off offset:832
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[116:123], v[148:155], v[84:91], v[116:123]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[148:151], off, off offset:1180
	scratch_load_b128 v[152:155], off, off offset:1196
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	ds_load_b128 v[84:87], v33
	ds_load_b128 v[132:135], v33 offset:256
	ds_load_b128 v[136:139], v42 offset:256
	ds_load_b128 v[88:91], v42
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v42, off, off offset:844
	scratch_load_b32 v33, off, off offset:840
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[116:123], v[213:220], v[84:91], v[116:123]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[213:216], off, off offset:1212
	scratch_load_b128 v[217:220], off, off offset:1228
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	ds_load_b128 v[84:87], v33
	ds_load_b128 v[140:143], v33 offset:256
	ds_load_b128 v[144:147], v42 offset:256
	ds_load_b128 v[88:91], v42
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v42, off, off offset:852
	scratch_load_b32 v33, off, off offset:848
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[116:123], v[148:155], v[84:91], v[116:123]
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	ds_load_b128 v[84:87], v33
	ds_load_b128 v[148:151], v33 offset:256
	ds_load_b128 v[152:155], v42 offset:256
	ds_load_b128 v[88:91], v42
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v42, off, off offset:860
	scratch_load_b32 v33, off, off offset:856
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[116:123], v[213:220], v[84:91], v[116:123]
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	ds_load_b128 v[84:87], v33
	ds_load_b128 v[213:216], v33 offset:256
	ds_load_b128 v[217:220], v42 offset:256
	ds_load_b128 v[88:91], v42
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[116:123], v[241:248], v[84:91], v[116:123]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[81:84], off, off offset:256
	scratch_load_b128 v[85:88], off, off offset:272
	v_wmma_f32_16x16x16_bf16 v[116:123], v[233:240], v[100:107], v[116:123]
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[116:123], v[81:88], v[108:115], v[116:123]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[81:84], off, off offset:288
	scratch_load_b128 v[85:88], off, off offset:304
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[116:123], v[81:88], v[92:99], v[116:123]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[81:84], off, off offset:1276
	scratch_load_b128 v[85:88], off, off offset:1292
	v_dual_mov_b32 v93, v190 :: v_dual_mov_b32 v100, v197
	v_dual_mov_b32 v94, v191 :: v_dual_mov_b32 v95, v192
	v_dual_mov_b32 v96, v193 :: v_dual_mov_b32 v97, v194
	v_dual_mov_b32 v98, v195 :: v_dual_mov_b32 v99, v196
	v_mov_b32_e32 v193, v189
	v_dual_mov_b32 v192, v188 :: v_dual_mov_b32 v191, v187
	v_dual_mov_b32 v190, v186 :: v_dual_mov_b32 v189, v185
	v_mov_b32_e32 v188, v184
	v_mov_b32_e32 v187, v183
	v_dual_mov_b32 v186, v182 :: v_dual_mov_b32 v185, v181
	v_dual_mov_b32 v184, v180 :: v_dual_mov_b32 v183, v179
	v_dual_mov_b32 v182, v178 :: v_dual_mov_b32 v181, v177
	v_mov_b32_e32 v180, v176
	v_mov_b32_e32 v179, v175
	v_dual_mov_b32 v178, v174 :: v_dual_mov_b32 v177, v173
	v_dual_mov_b32 v176, v172 :: v_dual_mov_b32 v175, v171
	v_dual_mov_b32 v174, v170 :: v_dual_mov_b32 v173, v169
	v_mov_b32_e32 v172, v168
	v_mov_b32_e32 v171, v167
	v_mov_b32_e32 v170, v166
	scratch_load_b32 v169, off, off offset:1064 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[116:123], v[81:88], v[124:131], v[116:123]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[81:84], off, off offset:1404
	scratch_load_b128 v[85:88], off, off offset:1420
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[116:123], v[81:88], v[132:139], v[116:123]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[81:84], off, off offset:1308
	scratch_load_b128 v[85:88], off, off offset:1324
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[116:123], v[81:88], v[140:147], v[116:123]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[81:84], off, off offset:1340
	scratch_load_b128 v[85:88], off, off offset:1356
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[116:123], v[81:88], v[148:155], v[116:123]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[81:84], off, off offset:1372
	scratch_load_b128 v[85:88], off, off offset:1388
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[116:123], v[81:88], v[213:220], v[116:123]
	scratch_load_b64 v[86:87], off, off offset:912 ; 8-byte Folded Reload
	v_or_b32_e32 v33, s52, v169
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b64 v[87:88], off, off offset:1148 ; 8-byte Folded Reload
	.loc	1 699 33                        ; attention_backward.py:699:33
	v_or_b32_e32 v33, s56, v33
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 699 25 is_stmt 0              ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v33, 2, v33
	buffer_load_b32 v42, v33, s[48:51], 0 offen
	.loc	1 607 13 is_stmt 1              ; attention_backward.py:607:13
	s_waitcnt vmcnt(2)
	v_lshl_add_u32 v84, s19, 1, v86
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v81, s1, v86, 1
	.loc	1 607 13                        ; attention_backward.py:607:13
	v_add_nc_u32_e32 v82, s19, v86
	v_lshl_add_u32 v86, s19, 4, v86
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v85, s1, v87, 1
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[87:88], off, off offset:1156
	scratch_load_b64 v[88:89], off, off offset:1164
	scratch_load_b64 v[89:90], off, off offset:1172
	v_add_lshl_u32 v84, s1, v84, 1
	v_add_lshl_u32 v82, s1, v82, 1
	v_add_lshl_u32 v86, s1, v86, 1
	v_cndmask_b32_e64 v81, 0x80000000, v81, s2
	v_cndmask_b32_e64 v85, 0x80000000, v85, s2
	v_cndmask_b32_e64 v84, 0x80000000, v84, s2
	v_cndmask_b32_e64 v82, 0x80000000, v82, s2
	v_cndmask_b32_e64 v86, 0x80000000, v86, s2
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(3)
	v_fma_f32 v51, s55, v116, -v42
	v_fma_f32 v60, s55, v117, -v42
	v_fma_f32 v249, s55, v118, -v42
	v_fma_f32 v254, s55, v119, -v42
	v_fma_f32 v83, s55, v120, -v42
	v_fma_f32 v255, s55, v121, -v42
	v_fma_f32 v241, s55, v122, -v42
	v_fma_f32 v42, s55, v123, -v42
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v51, v51
	v_exp_f32_e32 v60, v60
	v_exp_f32_e32 v83, v83
	s_delay_alu instid0(VALU_DEP_1)
	v_exp_f32_e32 v42, v42
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v87, s1, v87, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v88, s1, v88, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v89, s1, v89, 1
	v_cndmask_b32_e64 v87, 0x80000000, v87, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v88, 0x80000000, v88, s2
	v_cndmask_b32_e64 v89, 0x80000000, v89, s2
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v33, v33, s[44:47], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_b128 v[125:128], v84, s[36:39], 0 offen
	buffer_load_b128 v[129:132], v85, s[36:39], 0 offen
	buffer_load_b128 v[141:144], v81, s[36:39], 0 offen
	buffer_load_b128 v[145:148], v82, s[36:39], 0 offen
	buffer_load_b128 v[133:136], v88, s[36:39], 0 offen
	buffer_load_b128 v[137:140], v89, s[36:39], 0 offen
	buffer_load_b128 v[149:152], v86, s[36:39], 0 offen
	buffer_load_b128 v[153:156], v87, s[36:39], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v86, off, off offset:744
	scratch_load_b32 v87, off, off offset:864
	s_waitcnt vmcnt(9)
	v_mov_b16_e32 v82.l, v125.l
	v_mov_b16_e32 v85.l, v125.h
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v82.h, v129.l
	v_mov_b16_e64 v85.h, v129.h
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v81.l, v141.l
	v_mov_b16_e64 v84.l, v141.h
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v81.h, v145.l
	v_mov_b16_e64 v84.h, v145.h
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v86, 0, v86
	ds_store_2addr_b64 v86, v[81:82], v[84:85] offset1:8
	v_mov_b16_e32 v82.l, v126.l
	v_mov_b16_e64 v82.h, v130.l
	v_mov_b16_e64 v81.l, v142.l
	v_mov_b16_e64 v81.h, v146.l
	v_mov_b16_e32 v85.l, v126.h
	v_mov_b16_e64 v85.h, v130.h
	v_mov_b16_e64 v84.l, v142.h
	v_mov_b16_e64 v84.h, v146.h
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v87, v[81:82], v[84:85] offset1:8
	scratch_load_b32 v87, off, off offset:868 ; 4-byte Folded Reload
	v_mov_b16_e32 v82.l, v127.l
	v_mov_b16_e64 v82.h, v131.l
	v_mov_b16_e64 v81.l, v143.l
	v_mov_b16_e64 v81.h, v147.l
	v_mov_b16_e32 v85.l, v127.h
	v_mov_b16_e64 v85.h, v131.h
	v_mov_b16_e64 v84.l, v143.h
	v_mov_b16_e64 v84.h, v147.h
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v87, v[81:82], v[84:85] offset1:8
	scratch_load_b32 v87, off, off offset:872 ; 4-byte Folded Reload
	v_mov_b16_e64 v82.l, v128.l
	v_mov_b16_e64 v82.h, v132.l
	v_mov_b16_e64 v81.l, v144.l
	v_mov_b16_e64 v81.h, v148.l
	v_mov_b16_e64 v85.l, v128.h
	v_mov_b16_e64 v85.h, v132.h
	v_mov_b16_e64 v84.l, v144.h
	v_mov_b16_e64 v84.h, v148.h
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v87, v[81:82], v[84:85] offset1:8
	scratch_load_b32 v87, off, off offset:876 ; 4-byte Folded Reload
	v_mov_b16_e64 v82.l, v133.l
	v_mov_b16_e64 v82.h, v137.l
	v_mov_b16_e64 v81.l, v149.l
	v_mov_b16_e64 v81.h, v153.l
	v_mov_b16_e64 v85.l, v133.h
	v_mov_b16_e64 v85.h, v137.h
	v_mov_b16_e64 v84.l, v149.h
	v_mov_b16_e64 v84.h, v153.h
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v87, v[81:82], v[84:85] offset1:8
	scratch_load_b32 v87, off, off offset:880 ; 4-byte Folded Reload
	v_mov_b16_e64 v82.l, v134.l
	v_mov_b16_e64 v82.h, v138.l
	v_mov_b16_e64 v81.l, v150.l
	v_mov_b16_e64 v81.h, v154.l
	v_mov_b16_e64 v85.l, v134.h
	v_mov_b16_e64 v85.h, v138.h
	v_mov_b16_e64 v84.l, v150.h
	v_mov_b16_e64 v84.h, v154.h
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v87, v[81:82], v[84:85] offset1:8
	v_mov_b16_e64 v82.l, v135.l
	v_mov_b16_e64 v82.h, v139.l
	v_mov_b16_e64 v81.l, v151.l
	v_mov_b16_e64 v81.h, v155.l
	v_mov_b16_e64 v85.l, v135.h
	v_mov_b16_e64 v85.h, v139.h
	v_mov_b16_e64 v84.l, v151.h
	v_mov_b16_e64 v84.h, v155.h
	ds_store_2addr_b64 v86, v[81:82], v[84:85] offset0:32 offset1:40
	scratch_load_b32 v86, off, off offset:884 ; 4-byte Folded Reload
	v_mov_b16_e64 v82.l, v136.l
	v_mov_b16_e64 v82.h, v140.l
	v_mov_b16_e64 v81.l, v152.l
	v_mov_b16_e64 v81.h, v156.l
	v_mov_b16_e64 v85.l, v136.h
	v_mov_b16_e64 v85.h, v140.h
	v_mov_b16_e64 v84.l, v152.h
	v_mov_b16_e64 v84.h, v156.h
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v86, v[81:82], v[84:85] offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v81, off, off offset:752
	scratch_load_b32 v244, off, off offset:888
	scratch_load_b32 v242, off, off offset:896
	scratch_load_b32 v243, off, off offset:908
	s_waitcnt vmcnt(2)
	ds_load_b128 v[117:120], v244
	ds_load_b128 v[109:112], v244 offset:2048
	ds_load_b128 v[101:104], v244 offset:4096
	ds_load_b128 v[213:216], v244 offset:6144
	v_add_nc_u32_e32 v82, 0, v81
	ds_load_b128 v[121:124], v82
	ds_load_b128 v[113:116], v82 offset:2048
	ds_load_b128 v[105:108], v82 offset:4096
	ds_load_b128 v[84:87], v82 offset:6144
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[84:87], off offset:240 ; 16-byte Folded Spill
	s_waitcnt vmcnt(1)
	ds_load_b128 v[245:248], v242
	ds_load_b128 v[84:87], v242 offset:2048
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[84:87], off offset:208 ; 16-byte Folded Spill
	ds_load_b128 v[84:87], v242 offset:4096
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[84:87], off offset:176 ; 16-byte Folded Spill
	ds_load_b128 v[84:87], v242 offset:6144
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[84:87], off offset:144 ; 16-byte Folded Spill
	s_waitcnt vmcnt(0)
	ds_load_b128 v[84:87], v243
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[84:87], off offset:224 ; 16-byte Folded Spill
	ds_load_b128 v[84:87], v243 offset:2048
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[84:87], off offset:192 ; 16-byte Folded Spill
	ds_load_b128 v[84:87], v243 offset:4096
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[84:87], off offset:160 ; 16-byte Folded Spill
	ds_load_b128 v[84:87], v243 offset:6144
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[84:87], off offset:128 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v81, off, off offset:768 ; 4-byte Folded Reload
	v_dual_mov_b32 v85, v233 :: v_dual_mov_b32 v92, v240
	v_dual_mov_b32 v86, v234 :: v_dual_mov_b32 v87, v235
	v_mov_b32_e32 v89, v237
	v_dual_mov_b32 v91, v239 :: v_dual_mov_b32 v88, v236
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v90, v238 :: v_dual_add_nc_u32 v81, 0, v81
	ds_store_b128 v81, v[141:144]
	ds_store_b128 v81, v[149:152] offset:4096
	scratch_load_b32 v81, off, off offset:920 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v81, v[145:148]
	ds_store_b128 v81, v[153:156] offset:4096
	scratch_load_b32 v81, off, off offset:924 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v81, v[125:128]
	ds_store_b128 v81, v[133:136] offset:4096
	scratch_load_b32 v81, off, off offset:928 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v81, v[129:132]
	ds_store_b128 v81, v[137:140] offset:4096
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 36-byte Folded Reload
	scratch_load_b32 v81, off, off offset:760
	scratch_load_b128 v[161:164], off, off offset:704
	scratch_load_b128 v[165:168], off, off offset:720
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v81, 0, v81
	ds_load_b128 v[217:220], v81
	scratch_load_b32 v81, off, off offset:932 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[221:224], v81
	scratch_load_b32 v81, off, off offset:936 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[233:240], v[161:168], v[217:224], v[201:208]
	s_clause 0x2                            ; 36-byte Folded Reload
	scratch_load_b32 v161, off, off offset:756
	scratch_load_b128 v[217:220], off, off offset:672
	scratch_load_b128 v[221:224], off, off offset:688
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(3)
	ds_load_b128 v[201:204], v81
	scratch_load_b32 v81, off, off offset:940 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[205:208], v81
	scratch_load_b32 v81, off, off offset:944 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[233:240], v[217:224], v[201:208], v[233:240]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[217:220], off, off offset:640
	scratch_load_b128 v[221:224], off, off offset:656
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	ds_load_b128 v[201:204], v81
	scratch_load_b32 v81, off, off offset:948 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[205:208], v81
	scratch_load_b32 v81, off, off offset:952 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[233:240], v[217:224], v[201:208], v[233:240]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[217:220], off, off offset:608
	scratch_load_b128 v[221:224], off, off offset:624
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	ds_load_b128 v[201:204], v81
	scratch_load_b32 v81, off, off offset:956 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[205:208], v81
	scratch_load_b32 v81, off, off offset:960 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[233:240], v[217:224], v[201:208], v[233:240]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[217:220], off, off offset:576
	scratch_load_b128 v[221:224], off, off offset:592
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	ds_load_b128 v[201:204], v81
	scratch_load_b32 v81, off, off offset:964 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[205:208], v81
	scratch_load_b32 v81, off, off offset:968 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[233:240], v[217:224], v[201:208], v[233:240]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[217:220], off, off offset:544
	scratch_load_b128 v[221:224], off, off offset:560
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	ds_load_b128 v[201:204], v81
	scratch_load_b32 v81, off, off offset:972 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[205:208], v81
	scratch_load_b32 v81, off, off offset:976 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[233:240], v[217:224], v[201:208], v[233:240]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[217:220], off, off offset:512
	scratch_load_b128 v[221:224], off, off offset:528
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	ds_load_b128 v[201:204], v81
	scratch_load_b32 v81, off, off offset:980 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[205:208], v81
	scratch_load_b32 v81, off, off offset:984 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[233:240], v[217:224], v[201:208], v[233:240]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[217:220], off, off offset:480
	scratch_load_b128 v[221:224], off, off offset:496
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	ds_load_b128 v[201:204], v81
	scratch_load_b32 v81, off, off offset:988 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[205:208], v81
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v81, s56, v169
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v166, v170
	v_mov_b32_e32 v169, v173
	v_dual_mov_b32 v167, v171 :: v_dual_mov_b32 v168, v172
	v_mov_b32_e32 v170, v174
	v_mov_b32_e32 v171, v175
	v_mov_b32_e32 v172, v176
	v_dual_mov_b32 v173, v177 :: v_dual_mov_b32 v174, v178
	v_dual_mov_b32 v175, v179 :: v_dual_mov_b32 v176, v180
	v_dual_mov_b32 v177, v181 :: v_dual_mov_b32 v178, v182
	v_mov_b32_e32 v179, v183
	v_mov_b32_e32 v180, v184
	v_mov_b32_e32 v181, v185
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_wmma_f32_16x16x16_bf16 v[233:240], v[217:224], v[201:208], v[233:240]
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v207, 2, v161
	v_mov_b32_e32 v182, v186
	v_dual_mov_b32 v183, v187 :: v_dual_mov_b32 v184, v188
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v203, v236, v33
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v81, s53, v81
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v84, v233, v33
	v_sub_f32_e32 v206, v239, v33
	v_sub_f32_e32 v201, v234, v33
	v_sub_f32_e32 v202, v235, v33
	v_sub_f32_e32 v204, v237, v33
	v_sub_f32_e32 v205, v238, v33
	v_sub_f32_e32 v33, v240, v33
	v_dual_mov_b32 v185, v189 :: v_dual_mov_b32 v186, v190
	v_mov_b32_e32 v187, v191
	v_mov_b32_e32 v188, v192
	v_mov_b32_e32 v189, v193
	v_dual_mov_b32 v197, v100 :: v_dual_mov_b32 v190, v93
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e64 v233.h, v56.l
	v_mov_b16_e32 v56.l, v73.h
	v_mov_b16_e64 v233.l, v73.l
	v_mov_b16_e64 v234.l, v77.l
	v_mov_b16_e64 v234.h, v52.l
	v_mov_b16_e32 v52.l, v77.h
	v_mov_b32_e32 v196, v99
	v_mov_b32_e32 v194, v97
	v_dual_mov_b32 v192, v95 :: v_dual_mov_b32 v191, v94
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s3, v207, v81
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v207, 4, v161
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s1, v161, v81
	scratch_load_b32 v162, off, off offset:1000 ; 4-byte Folded Reload
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s3, s0, s3
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s4, v207, v81
	.loc	1 514 23 is_stmt 1              ; attention_backward.py:514:23
	v_or_b32_e32 v207, 6, v161
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s1, s0, s1
	s_and_b32 s4, s0, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 676 30 is_stmt 0              ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s5, v207, v81
	.loc	1 514 23 is_stmt 1              ; attention_backward.py:514:23
	v_or_b32_e32 v207, 8, v161
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s5, s0, s5
	.loc	1 676 30 is_stmt 0              ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s6, v207, v81
	.loc	1 514 23 is_stmt 1              ; attention_backward.py:514:23
	v_or_b32_e32 v207, 10, v161
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s6, s0, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 676 30 is_stmt 0              ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s7, v207, v81
	.loc	1 514 23 is_stmt 1              ; attention_backward.py:514:23
	v_or_b32_e32 v207, 12, v161
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s7, s0, s7
	.loc	1 676 30 is_stmt 0              ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s8, v207, v81
	.loc	1 514 23 is_stmt 1              ; attention_backward.py:514:23
	v_or_b32_e32 v207, 14, v161
	scratch_load_b32 v161, off, off offset:996 ; 4-byte Folded Reload
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s8, s0, s8
	.loc	1 676 30 is_stmt 0              ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s9, v207, v81
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v81, 0, v51, s1
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s9, s0, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v51, v81, v84
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v51, s54, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v84, v51, 16, 1
	v_cmp_o_f32_e64 s1, v51, v51
	v_add3_u32 v51, v51, v84, 0x7fff
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v84, 0, v60, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v195, v98 :: v_dual_mul_f32 v60, v84, v201
	v_mov_b32_e32 v193, v96
	v_cndmask_b32_e64 v97, 0, v42, s9
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_dual_mul_f32 v60, s54, v60 :: v_dual_mul_f32 v33, v97, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v201, v60, 16, 1
	v_cmp_o_f32_e64 s3, v60, v60
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v33, s54, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v60, v60, v201, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v201, v249
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v42, v33, 16, 1
	v_cmp_o_f32_e64 s9, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v42, v33, v42, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v51.h, s1
	.loc	1 722 33                        ; attention_backward.py:722:33
	scratch_load_b32 v51, off, off offset:772 ; 4-byte Folded Reload
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s1, v81, v81
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v93, 0, v201, s4
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v201, v93, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v201, s54, v201
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v202, v201, 16, 1
	v_cmp_o_f32_e64 s4, v201, v201
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v201, v201, v202, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v202, v254
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v254, 0, v83, s6
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v83, v254, v204
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v94, 0, v202, s5
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v83, s54, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v202, v94, v203
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cmp_o_f32_e64 s6, v83, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38 is_stmt 0              ; attention_backward.py:721:38
	v_mul_f32_e32 v202, s54, v202
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v203, v202, 16, 1
	v_cmp_o_f32_e64 s5, v202, v202
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v202, v202, v203, 0x7fff
	v_bfe_u32 v203, v83, 16, 1
	v_add3_u32 v83, v83, v203, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v203, v255
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.h, 0x7fff, v83.h, s6
	scratch_load_b32 v83, off, off offset:992 ; 4-byte Folded Reload
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s6, v254, v254
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v95, 0, v203, s7
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v203, v95, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v203, s54, v203
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v204, v203, 16, 1
	v_cmp_o_f32_e64 s7, v203, v203
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v203, v203, v204, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v204, v241
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v96, 0, v204, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v204, v96, v206
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v204, s54, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v205, v204, 16, 1
	v_cmp_o_f32_e64 s8, v204, v204
	v_add3_u32 v204, v204, v205, 0x7fff
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v98, 0, v51
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b32_e32 v51, v56
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v98, v33
	ds_store_b16_d16_hi v98, v33 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v60.h, s3
	v_cndmask_b16 v33.h, 0x7fff, v203.h, s7
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v84, v84
	v_cmp_o_f32_e64 s7, v95, v95
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	ds_store_b16 v83, v33
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v201.h, s4
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v83, v33 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.h, 0x7fff, v204.h, s8
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s4, v93, v93
	v_cmp_o_f32_e64 s8, v96, v96
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v161, v33
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v202.h, s5
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v161, v33 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.h, 0x7fff, v42.h, s9
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s5, v94, v94
	v_cmp_o_f32_e64 s9, v97, v97
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v162, v33
	ds_store_b16_d16_hi v162, v33 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v33, off, off offset:892
	scratch_load_b32 v163, off, off offset:1004
	scratch_load_b32 v164, off, off offset:1008
	scratch_load_b32 v165, off, off offset:1012
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v56, 0, v33
	s_waitcnt vmcnt(2)
	ds_load_b128 v[221:224], v163
	s_waitcnt vmcnt(1)
	ds_load_b128 v[201:204], v164
	s_waitcnt vmcnt(0)
	ds_load_b128 v[205:208], v165
	ds_load_b128 v[217:220], v56
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v33, off, off offset:736 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v73, 0, v33
	scratch_load_b32 v33, off, off offset:1016 ; 4-byte Folded Reload
	ds_store_2addr_b64 v73, v[233:234], v[51:52] offset1:8
	v_mov_b16_e64 v233.h, v57.l
	v_mov_b16_e32 v57.l, v74.h
	v_mov_b16_e64 v234.l, v78.l
	v_mov_b16_e64 v234.h, v53.l
	v_mov_b16_e64 v233.l, v74.l
	v_mov_b16_e32 v53.l, v78.h
	v_mov_b16_e32 v51.h, v58.l
	v_mov_b16_e32 v58.l, v75.h
	v_mov_b16_e32 v51.l, v75.l
	v_mov_b32_e32 v52, v57
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v33, v[233:234], v[52:53] offset1:8
	scratch_load_b32 v33, off, off offset:1020 ; 4-byte Folded Reload
	v_mov_b16_e32 v52.l, v79.l
	v_mov_b16_e32 v52.h, v54.l
	v_mov_b16_e32 v54.l, v79.h
	v_dual_mov_b32 v53, v58 :: v_dual_mov_b32 v240, v92
	v_mov_b32_e32 v238, v90
	v_mov_b32_e32 v236, v88
	v_dual_mov_b32 v234, v86 :: v_dual_mov_b32 v233, v85
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v33, v[51:52], v[53:54] offset1:8
	scratch_load_b32 v33, off, off offset:1024 ; 4-byte Folded Reload
	v_mov_b16_e32 v52.h, v55.l
	v_mov_b16_e32 v55.l, v80.h
	v_mov_b16_e32 v52.l, v80.l
	v_mov_b16_e32 v51.l, v76.l
	v_mov_b16_e32 v51.h, v59.l
	v_mov_b16_e32 v59.l, v76.h
	v_mov_b32_e32 v60, v55
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v33, v[51:52], v[59:60] offset1:8
	scratch_load_b32 v33, off, off offset:1028 ; 4-byte Folded Reload
	v_mov_b16_e32 v51.h, v47.l
	v_mov_b16_e32 v47.l, v65.h
	v_mov_b16_e32 v52.l, v69.l
	v_mov_b16_e32 v52.h, v43.l
	v_mov_b16_e32 v51.l, v65.l
	v_mov_b16_e32 v43.l, v69.h
	v_mov_b32_e32 v42, v47
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v33, v[51:52], v[42:43] offset1:8
	scratch_load_b32 v33, off, off offset:1032 ; 4-byte Folded Reload
	v_mov_b16_e32 v51.h, v48.l
	v_mov_b16_e32 v48.l, v66.h
	v_mov_b16_e32 v52.l, v70.l
	v_mov_b16_e32 v52.h, v44.l
	v_mov_b16_e32 v51.l, v66.l
	v_mov_b16_e32 v44.l, v70.h
	v_mov_b16_e32 v42.h, v49.l
	v_mov_b16_e32 v49.l, v67.h
	v_mov_b16_e32 v42.l, v67.l
	v_mov_b32_e32 v43, v48
	ds_store_2addr_b64 v73, v[51:52], v[43:44] offset0:16 offset1:24
	v_mov_b16_e32 v43.l, v71.l
	v_mov_b16_e32 v43.h, v45.l
	v_mov_b16_e32 v45.l, v71.h
	v_mov_b32_e32 v44, v49
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v33, v[42:43], v[44:45] offset1:8
	scratch_load_b32 v33, off, off offset:1036 ; 4-byte Folded Reload
	v_mov_b16_e32 v43.h, v46.l
	v_mov_b16_e32 v46.l, v72.h
	v_mov_b16_e32 v43.l, v72.l
	v_mov_b16_e32 v42.l, v68.l
	v_mov_b16_e32 v42.h, v50.l
	v_mov_b16_e32 v50.l, v68.h
	v_mov_b32_e32 v51, v46
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v33, v[42:43], v[50:51] offset1:8
	v_mov_b16_e32 v42.h, v38.l
	v_mov_b16_e64 v38.l, v209.h
	v_mov_b16_e32 v43.l, v61.l
	v_mov_b16_e32 v43.h, v34.l
	v_mov_b16_e64 v42.l, v209.l
	v_mov_b16_e32 v34.l, v61.h
	v_mov_b32_e32 v33, v38
	scratch_load_b32 v38, off, off offset:1040 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v38, v[42:43], v[33:34] offset1:8
	scratch_load_b32 v33, off, off offset:1044 ; 4-byte Folded Reload
	v_mov_b16_e32 v42.h, v39.l
	v_mov_b16_e64 v39.l, v210.h
	v_mov_b32_e32 v237, v89
	v_mov_b16_e32 v43.l, v62.l
	v_mov_b16_e32 v43.h, v35.l
	v_mov_b16_e64 v42.l, v210.l
	v_mov_b16_e32 v35.l, v62.h
	v_mov_b32_e32 v34, v39
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v33, v[42:43], v[34:35] offset1:8
	v_mov_b16_e32 v33.h, v40.l
	v_mov_b16_e64 v40.l, v211.h
	v_mov_b16_e32 v34.l, v63.l
	v_mov_b16_e32 v34.h, v36.l
	v_mov_b16_e64 v33.l, v211.l
	v_mov_b16_e32 v36.l, v63.h
	v_mov_b32_e32 v35, v40
	ds_store_2addr_b64 v73, v[33:34], v[35:36] offset0:32 offset1:40
	scratch_load_b32 v35, off, off offset:1048 ; 4-byte Folded Reload
	v_mov_b16_e32 v34.h, v37.l
	v_mov_b16_e32 v37.l, v64.h
	v_mov_b32_e32 v239, v91
	v_mov_b16_e32 v34.l, v64.l
	v_mov_b16_e64 v33.l, v212.l
	v_mov_b16_e32 v33.h, v41.l
	v_mov_b16_e64 v41.l, v212.h
	v_mov_b32_e32 v42, v37
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v35, v[33:34], v[41:42] offset1:8
	scratch_load_b32 v35, off, off offset:1052 ; 4-byte Folded Reload
	v_mov_b16_e64 v33.h, v225.l
	v_mov_b16_e64 v225.l, v157.h
	v_mov_b16_e64 v34.l, v229.l
	v_mov_b16_e64 v34.h, v250.l
	v_mov_b16_e64 v33.l, v157.l
	v_mov_b16_e64 v250.l, v229.h
	v_mov_b32_e32 v249, v225
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v35, v[33:34], v[249:250] offset1:8
	scratch_load_b32 v35, off, off offset:1056 ; 4-byte Folded Reload
	v_mov_b16_e64 v33.h, v226.l
	v_mov_b16_e64 v226.l, v158.h
	v_mov_b32_e32 v235, v87
	v_mov_b16_e64 v34.l, v230.l
	v_mov_b16_e64 v34.h, v251.l
	v_mov_b16_e64 v33.l, v158.l
	v_mov_b16_e64 v251.l, v230.h
	v_mov_b32_e32 v250, v226
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v35, v[33:34], v[250:251] offset1:8
	scratch_load_b32 v35, off, off offset:1060 ; 4-byte Folded Reload
	v_mov_b16_e64 v33.h, v227.l
	v_mov_b16_e64 v227.l, v159.h
	v_mov_b16_e64 v34.l, v231.l
	v_mov_b16_e64 v34.h, v252.l
	v_mov_b16_e64 v33.l, v159.l
	v_mov_b16_e64 v252.l, v231.h
	v_mov_b32_e32 v251, v227
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v35, v[33:34], v[251:252] offset1:8
	v_mov_b16_e64 v34.h, v253.l
	v_mov_b16_e64 v253.l, v232.h
	v_mov_b16_e64 v34.l, v232.l
	v_mov_b16_e64 v33.l, v160.l
	v_mov_b16_e64 v33.h, v228.l
	v_mov_b16_e64 v228.l, v160.h
	v_mov_b32_e32 v229, v253
	ds_store_2addr_b64 v73, v[33:34], v[228:229] offset0:48 offset1:56
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x7                            ; 128-byte Folded Reload
	scratch_load_b128 v[57:60], off, off offset:64
	scratch_load_b128 v[61:64], off, off offset:80
	scratch_load_b128 v[65:68], off, off offset:96
	scratch_load_b128 v[69:72], off, off offset:112
	scratch_load_b128 v[73:76], off, off offset:32
	scratch_load_b128 v[77:80], off, off offset:48
	scratch_load_b128 v[85:88], off, off
	scratch_load_b128 v[89:92], off, off offset:16
	ds_load_b128 v[37:40], v244
	ds_load_b128 v[33:36], v82
	ds_load_b128 v[41:44], v82 offset:2048
	ds_load_b128 v[45:48], v244 offset:2048
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[190:197], v[33:40], v[217:224], v[190:197]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[182:189], v[41:48], v[217:224], v[182:189]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[37:40], v244 offset:4096
	ds_load_b128 v[33:36], v82 offset:4096
	ds_load_b128 v[41:44], v82 offset:6144
	ds_load_b128 v[45:48], v244 offset:6144
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[174:181], v[33:40], v[217:224], v[174:181]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[166:173], v[41:48], v[217:224], v[166:173]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[37:40], v244 offset:8192
	ds_load_b128 v[33:36], v82 offset:8192
	ds_load_b128 v[41:44], v82 offset:10240
	ds_load_b128 v[45:48], v244 offset:10240
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(6) lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[33:40], v[217:224], v[57:64]
	s_waitcnt vmcnt(4) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[41:48], v[217:224], v[65:72]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[37:40], v244 offset:12288
	ds_load_b128 v[33:36], v82 offset:12288
	ds_load_b128 v[41:44], v82 offset:14336
	ds_load_b128 v[45:48], v244 offset:14336
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[33:40], v[217:224], v[73:80]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[85:92], v[41:48], v[217:224], v[85:92]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[37:40], v243
	ds_load_b128 v[33:36], v242
	ds_load_b128 v[41:44], v242 offset:2048
	ds_load_b128 v[45:48], v243 offset:2048
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[190:197], v[33:40], v[201:208], v[190:197]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[182:189], v[41:48], v[201:208], v[182:189]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[37:40], v243 offset:4096
	ds_load_b128 v[33:36], v242 offset:4096
	ds_load_b128 v[41:44], v242 offset:6144
	ds_load_b128 v[45:48], v243 offset:6144
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[174:181], v[33:40], v[201:208], v[174:181]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[166:173], v[41:48], v[201:208], v[166:173]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[37:40], v243 offset:8192
	ds_load_b128 v[33:36], v242 offset:8192
	ds_load_b128 v[41:44], v242 offset:10240
	ds_load_b128 v[45:48], v243 offset:10240
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[33:40], v[201:208], v[57:64]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[57:60], off offset:64
	scratch_store_b128 off, v[61:64], off offset:80
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[41:48], v[201:208], v[65:72]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[37:40], v243 offset:12288
	ds_load_b128 v[33:36], v242 offset:12288
	ds_load_b128 v[41:44], v242 offset:14336
	ds_load_b128 v[45:48], v243 offset:14336
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[65:68], off offset:96
	scratch_store_b128 off, v[69:72], off offset:112
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[33:40], v[201:208], v[73:80]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v38, v95, 16, 1
	v_bfe_u32 v33, v81, 16, 1
	v_bfe_u32 v37, v254, 16, 1
	v_bfe_u32 v34, v84, 16, 1
	v_bfe_u32 v35, v93, 16, 1
	v_bfe_u32 v36, v94, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[85:92], v[41:48], v[201:208], v[85:92]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v41, v95, v38, 0x7fff
	v_bfe_u32 v38, v96, 16, 1
	v_add3_u32 v33, v81, v33, 0x7fff
	v_add3_u32 v37, v254, v37, 0x7fff
	v_add3_u32 v34, v84, v34, 0x7fff
	v_add3_u32 v35, v93, v35, 0x7fff
	v_add3_u32 v36, v94, v36, 0x7fff
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[73:76], off offset:32
	scratch_store_b128 off, v[77:80], off offset:48
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e32 v33.l, 0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[85:88], off
	scratch_store_b128 off, v[89:92], off offset:16
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v42, v96, v38, 0x7fff
	v_bfe_u32 v38, v97, 16, 1
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s1
	v_cndmask_b16 v40.h, 0x7fff, v37.h, s6
	v_cndmask_b16 v39.h, 0x7fff, v34.h, s3
	v_cndmask_b16 v37.h, 0x7fff, v41.h, s7
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s5
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v40.l, v33.l
	v_mov_b16_e32 v39.l, v33.l
	v_mov_b16_e32 v36.l, v33.l
	v_mov_b16_e32 v37.l, v33.l
	v_mov_b16_e32 v35.l, v33.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v43, v97, v38, 0x7fff
	v_cndmask_b16 v38.h, 0x7fff, v35.h, s4
	v_cndmask_b16 v35.h, 0x7fff, v42.h, s8
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v38.l, v33.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v34.h, 0x7fff, v43.h, s9
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v98, v33
	ds_store_b16_d16_hi v98, v40 offset:512
	ds_store_b16_d16_hi v83, v39
	ds_store_b16_d16_hi v83, v37 offset:512
	ds_store_b16_d16_hi v161, v38
	ds_store_b16_d16_hi v161, v35 offset:512
	ds_store_b16_d16_hi v162, v36
	ds_store_b16_d16_hi v162, v34 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[217:220], v56
	ds_load_b128 v[221:224], v163
	ds_load_b128 v[201:204], v164
	ds_load_b128 v[205:208], v165
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v41, off, off offset:764 ; 4-byte Folded Reload
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v40, v254, v40 :: v_dual_sub_f32 v39, v84, v39
	v_sub_f32_e32 v38, v93, v38
	v_dual_sub_f32 v36, v94, v36 :: v_dual_sub_f32 v37, v95, v37
	v_sub_f32_e32 v35, v96, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v40, v40
	v_cmp_o_f32_e64 s4, v39, v39
	v_cmp_o_f32_e64 s5, v35, v35
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v41, 0, v41
	ds_store_b128 v41, v[141:144]
	ds_store_b128 v41, v[145:148] offset:256
	ds_store_b128 v41, v[125:128] offset:512
	ds_store_b128 v41, v[129:132] offset:768
	ds_store_b128 v41, v[149:152] offset:4096
	ds_store_b128 v41, v[153:156] offset:4352
	ds_store_b128 v41, v[133:136] offset:4608
	ds_store_b128 v41, v[137:140] offset:4864
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v41, v81, v33
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v42, v41, 16, 1
	v_cmp_o_f32_e64 s1, v41, v41
	v_add3_u32 v41, v41, v42, 0x7fff
	v_bfe_u32 v42, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v33.h, 0x7fff, v41.h, s1
	v_add3_u32 v40, v40, v42, 0x7fff
	v_bfe_u32 v42, v39, 16, 1
	v_cmp_o_f32_e64 s1, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v34.l, 0x7fff, v40.h, s3
	v_add3_u32 v55, v39, v42, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_u16_d16 v42, v0 offset:1536
	ds_load_u16_d16 v40, v0 offset:512
	ds_load_u16_d16 v49, v0 offset:1152
	ds_load_u16_d16 v50, v0 offset:1664
	ds_load_u16_d16 v41, v0 offset:1024
	ds_load_u16_d16 v59, v0 offset:1216
	ds_load_u16_d16 v58, v0 offset:704
	ds_load_u16_d16 v66, v0 offset:576
	ds_load_u16_d16 v67, v0 offset:1088
	ds_load_u16_d16 v43, v0 offset:2048
	ds_load_u16_d16 v51, v0 offset:2176
	ds_load_u16_d16 v68, v0 offset:1600
	ds_load_u16_d16 v60, v0 offset:1728
	ds_load_u16_d16 v44, v0 offset:2560
	ds_load_u16_d16 v69, v0 offset:2112
	ds_load_u16_d16 v52, v0 offset:2688
	ds_load_u16_d16 v61, v0 offset:2240
	ds_load_u16_d16 v45, v0 offset:3072
	ds_load_u16_d16 v70, v0 offset:2624
	ds_load_u16_d16 v53, v0 offset:3200
	ds_load_u16_d16 v62, v0 offset:2752
	ds_load_u16_d16 v46, v0 offset:3584
	ds_load_u16_d16 v71, v0 offset:3136
	ds_load_u16_d16 v54, v0 offset:3712
	ds_load_u16_d16 v63, v0 offset:3264
	ds_load_u16_d16 v75, v0 offset:5120
	ds_load_u16_d16 v73, v0 offset:4096
	ds_load_u16_d16 v72, v0 offset:3648
	ds_load_u16_d16 v64, v0 offset:3776
	ds_load_u16_d16 v125, v0 offset:4224
	ds_load_u16_d16 v127, v0 offset:5248
	ds_load_u16_d16 v134, v0 offset:4672
	ds_load_u16_d16 v133, v0 offset:4160
	ds_load_u16_d16 v74, v0 offset:4608
	ds_load_u16_d16 v126, v0 offset:4736
	ds_load_u16_d16 v141, v0 offset:4288
	ds_load_u16_d16 v142, v0 offset:4800
	ds_load_u16_d16 v76, v0 offset:5632
	ds_load_u16_d16 v135, v0 offset:5184
	ds_load_u16_d16 v128, v0 offset:5760
	ds_load_u16_d16 v143, v0 offset:5312
	ds_load_u16_d16 v77, v0 offset:6144
	ds_load_u16_d16 v136, v0 offset:5696
	ds_load_u16_d16 v129, v0 offset:6272
	ds_load_u16_d16 v144, v0 offset:5824
	ds_load_u16_d16 v78, v0 offset:6656
	ds_load_u16_d16 v137, v0 offset:6208
	ds_load_u16_d16 v130, v0 offset:6784
	ds_load_u16_d16 v145, v0 offset:6336
	ds_load_u16_d16 v79, v0 offset:7168
	ds_load_u16_d16 v138, v0 offset:6720
	ds_load_u16_d16 v131, v0 offset:7296
	ds_load_u16_d16 v146, v0 offset:6848
	ds_load_u16_d16 v80, v0 offset:7680
	ds_load_u16_d16 v139, v0 offset:7232
	ds_load_u16_d16 v132, v0 offset:7808
	ds_load_u16_d16 v147, v0 offset:7360
	ds_load_u16_d16 v140, v0 offset:7744
	ds_load_u16_d16 v148, v0 offset:7872
	ds_load_u16_d16 v39, v0
	ds_load_u16_d16 v65, v0 offset:64
	ds_load_u16_d16 v47, v0 offset:128
	ds_load_u16_d16 v48, v0 offset:640
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v36, v36
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(56)
	ds_load_u16_d16_hi v58, v0 offset:960
	ds_load_u16_d16 v57, v0 offset:192
	ds_load_u16_d16_hi v40, v0 offset:768
	ds_load_u16_d16_hi v41, v0 offset:1280
	ds_load_u16_d16_hi v49, v0 offset:1408
	s_waitcnt lgkmcnt(38)
	ds_load_u16_d16_hi v125, v0 offset:4480
	s_waitcnt lgkmcnt(35)
	ds_load_u16_d16_hi v74, v0 offset:4864
	s_waitcnt lgkmcnt(35)
	ds_load_u16_d16_hi v126, v0 offset:4992
	ds_load_u16_d16_hi v42, v0 offset:1792
	ds_load_u16_d16_hi v50, v0 offset:1920
	ds_load_u16_d16_hi v43, v0 offset:2304
	ds_load_u16_d16_hi v51, v0 offset:2432
	ds_load_u16_d16_hi v44, v0 offset:2816
	ds_load_u16_d16_hi v52, v0 offset:2944
	ds_load_u16_d16_hi v45, v0 offset:3328
	ds_load_u16_d16_hi v53, v0 offset:3456
	ds_load_u16_d16_hi v46, v0 offset:3840
	ds_load_u16_d16_hi v54, v0 offset:3968
	ds_load_u16_d16_hi v73, v0 offset:4352
	ds_load_u16_d16_hi v75, v0 offset:5376
	ds_load_u16_d16_hi v127, v0 offset:5504
	s_waitcnt lgkmcnt(46)
	ds_load_u16_d16_hi v76, v0 offset:5888
	s_waitcnt lgkmcnt(45)
	ds_load_u16_d16_hi v128, v0 offset:6016
	s_waitcnt lgkmcnt(44)
	ds_load_u16_d16_hi v77, v0 offset:6400
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v129, v0 offset:6528
	s_waitcnt lgkmcnt(42)
	ds_load_u16_d16_hi v78, v0 offset:6912
	s_waitcnt lgkmcnt(41)
	ds_load_u16_d16_hi v130, v0 offset:7040
	s_waitcnt lgkmcnt(40)
	ds_load_u16_d16_hi v79, v0 offset:7424
	s_waitcnt lgkmcnt(39)
	ds_load_u16_d16_hi v131, v0 offset:7552
	s_waitcnt lgkmcnt(38)
	ds_load_u16_d16_hi v80, v0 offset:7936
	s_waitcnt lgkmcnt(37)
	ds_load_u16_d16_hi v132, v0 offset:8064
	s_waitcnt lgkmcnt(34)
	ds_load_u16_d16_hi v39, v0 offset:256
	s_waitcnt lgkmcnt(34)
	ds_load_u16_d16_hi v65, v0 offset:320
	s_waitcnt lgkmcnt(34)
	ds_load_u16_d16_hi v47, v0 offset:384
	s_waitcnt lgkmcnt(32)
	ds_load_u16_d16_hi v57, v0 offset:448
	ds_load_u16_d16_hi v66, v0 offset:832
	ds_load_u16_d16_hi v48, v0 offset:896
	ds_load_u16_d16_hi v67, v0 offset:1344
	ds_load_u16_d16_hi v59, v0 offset:1472
	ds_load_u16_d16_hi v68, v0 offset:1856
	ds_load_u16_d16_hi v60, v0 offset:1984
	ds_load_u16_d16_hi v69, v0 offset:2368
	ds_load_u16_d16_hi v61, v0 offset:2496
	ds_load_u16_d16_hi v70, v0 offset:2880
	ds_load_u16_d16_hi v62, v0 offset:3008
	ds_load_u16_d16_hi v71, v0 offset:3392
	ds_load_u16_d16_hi v63, v0 offset:3520
	ds_load_u16_d16_hi v72, v0 offset:3904
	ds_load_u16_d16_hi v64, v0 offset:4032
	ds_load_u16_d16_hi v133, v0 offset:4416
	ds_load_u16_d16_hi v141, v0 offset:4544
	ds_load_u16_d16_hi v134, v0 offset:4928
	ds_load_u16_d16_hi v142, v0 offset:5056
	ds_load_u16_d16_hi v135, v0 offset:5440
	ds_load_u16_d16_hi v143, v0 offset:5568
	ds_load_u16_d16_hi v136, v0 offset:5952
	ds_load_u16_d16_hi v144, v0 offset:6080
	ds_load_u16_d16_hi v137, v0 offset:6464
	ds_load_u16_d16_hi v145, v0 offset:6592
	ds_load_u16_d16_hi v138, v0 offset:6976
	ds_load_u16_d16_hi v146, v0 offset:7104
	ds_load_u16_d16_hi v139, v0 offset:7488
	ds_load_u16_d16_hi v147, v0 offset:7616
	ds_load_u16_d16_hi v140, v0 offset:8000
	ds_load_u16_d16_hi v148, v0 offset:8128
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16_d16_hi v98, v33
	ds_store_b16 v98, v34 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.h, 0x7fff, v55.h, s4
	v_bfe_u32 v55, v38, 16, 1
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e32 v34.l, v33.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s4, v37, v37
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[57:64], v[217:224], v[1:8]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v38, v38, v55, 0x7fff
	v_bfe_u32 v55, v36, 16, 1
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v34, v97, v34
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v36, v36, v55, 0x7fff
	v_bfe_u32 v55, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_o_f32_e64 s6, v34, v34
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[25:32], v[39:46], v[217:224], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[65:72], v[217:224], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[47:54], v[217:224], v[9:16]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v37, v37, v55, 0x7fff
	v_bfe_u32 v55, v35, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[141:148], v[201:208], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[25:32], v[73:80], v[201:208], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[133:140], v[201:208], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[125:132], v[201:208], v[9:16]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v35, v35, v55, 0x7fff
	v_bfe_u32 v55, v34, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v34, v34, v55, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v37.h, s4
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v83, v33
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.h, 0x7fff, v38.h, s1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v83, v34 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s5
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v161, v33
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.h, 0x7fff, v36.h, s3
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v161, v34 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s6
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v162, v33
	ds_store_b16 v162, v34 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[149:152], v56
	ds_load_b128 v[153:156], v163
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v33.h, v33.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[39:46], v[149:156], v[25:32]
	ds_load_b128 v[34:37], v164
	ds_load_b128 v[38:41], v165
	v_wmma_f32_16x16x16_bf16 v[17:24], v[65:72], v[149:156], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[47:54], v[149:156], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[57:64], v[149:156], v[1:8]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v50.h, v33.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v43.h, v117.l
	v_mov_b16_e32 v45.h, v118.l
	v_mov_b16_e32 v43.l, v33.l
	v_mov_b16_e32 v45.l, v33.l
	v_mov_b16_e32 v47.h, v119.l
	v_mov_b16_e32 v47.l, v33.l
	v_mov_b16_e32 v49.h, v120.l
	v_mov_b16_e32 v49.l, v33.l
	v_and_b32_e32 v42, 0xffff0000, v117
	v_and_b32_e32 v44, 0xffff0000, v118
	v_and_b32_e32 v46, 0xffff0000, v119
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v45, v45, v45 :: v_dual_and_b32 v48, 0xffff0000, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v42, v42, v42
	v_sub_f32_e32 v44, v44, v44
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[73:80], v[34:41], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[133:140], v[34:41], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[125:132], v[34:41], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[141:148], v[34:41], v[1:8]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v35.h, v121.l
	v_mov_b16_e32 v35.l, v33.l
	v_and_b32_e32 v34, 0xffff0000, v121
	v_mov_b16_e32 v37.h, v122.l
	v_mov_b16_e32 v37.l, v33.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v35, v35, v35 :: v_dual_and_b32 v36, 0xffff0000, v122
	v_sub_f32_e32 v34, v34, v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v39.h, v123.l
	v_mov_b16_e32 v39.l, v33.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v36, v36, v36
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v41.h, v124.l
	v_mov_b16_e32 v41.l, v33.l
	v_and_b32_e32 v38, 0xffff0000, v123
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v39, v39, v39 :: v_dual_and_b32 v40, 0xffff0000, v124
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v42, v42
	v_cmp_o_f32_e64 s13, v44, v44
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v38, v38, v38
	v_sub_f32_e32 v46, v46, v46
	v_sub_f32_e32 v40, v40, v40
	v_sub_f32_e32 v48, v48, v48
	s_clause 0x5                            ; 96-byte Folded Reload
	scratch_load_b128 v[148:151], off, off offset:416
	scratch_load_b128 v[152:155], off, off offset:432
	scratch_load_b128 v[140:143], off, off offset:384
	scratch_load_b128 v[144:147], off, off offset:400
	scratch_load_b128 v[132:135], off, off offset:352
	scratch_load_b128 v[136:139], off, off offset:368
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s15, v46, v46
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[124:127], off, off offset:320
	scratch_load_b128 v[128:131], off, off offset:336
	v_cmp_o_f32_e64 s17, v48, v48
	v_mov_b16_e32 v50.l, v35.h
	v_cmp_o_f32_e64 s1, v35, v35
	v_cmp_o_f32_e64 s3, v34, v34
	v_cmp_o_f32_e64 s5, v36, v36
	v_cmp_o_f32_e64 s6, v39, v39
	v_cmp_o_f32_e64 s7, v38, v38
	v_cmp_o_f32_e64 s9, v40, v40
	v_cmp_o_f32_e64 s12, v45, v45
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v41, v41, v41 :: v_dual_and_b32 v50, 1, v50
	v_sub_f32_e32 v43, v43, v43
	v_sub_f32_e32 v47, v47, v47
	v_sub_f32_e32 v49, v49, v49
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v35, v35, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v34.h
	v_cmp_o_f32_e64 s8, v41, v41
	v_cmp_o_f32_e64 s10, v43, v43
	v_cmp_o_f32_e64 s14, v47, v47
	v_cmp_o_f32_e64 s16, v49, v49
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v34, v34, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v37, v37, v37
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v50.l, v37.h
	v_and_b32_e32 v50, 1, v50
	v_cmp_o_f32_e64 s4, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v37, v37, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v36.h
	v_cndmask_b16 v35.l, 0x7fff, v37.h, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v36, v36, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v39.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v35.h, 0x7fff, v36.h, s5
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v39, v39, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v38.h
	v_cndmask_b16 v36.l, 0x7fff, v39.h, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v38, v38, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v41.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s7
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v41, v41, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v40.h
	v_cndmask_b16 v37.l, 0x7fff, v41.h, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v40, v40, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v43.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v37.h, 0x7fff, v40.h, s9
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v43, v43, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v42.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v43.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v38.l, 0x7fff, v43.h, s10
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v43.h, v109.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v43, v43, v43 :: v_dual_and_b32 v50, 1, v50
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v42, v42, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v45.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s10, v43, v43
	v_cndmask_b16 v38.h, 0x7fff, v42.h, s11
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v42, 0xffff0000, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v50, 1, v50
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v42, v42, v42
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v45, v45, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v44.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v45.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v42, v42
	v_cndmask_b16 v39.l, 0x7fff, v45.h, s12
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v45.h, v110.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v45, v45, v45 :: v_dual_and_b32 v50, 1, v50
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v44, v44, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v47.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s12, v45, v45
	v_cndmask_b16 v39.h, 0x7fff, v44.h, s13
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v44, 0xffff0000, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v50, 1, v50
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v44, v44, v44
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v47, v47, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v46.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v47.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v44, v44
	v_cndmask_b16 v40.l, 0x7fff, v47.h, s14
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v47.h, v111.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v47, v47, v47 :: v_dual_and_b32 v50, 1, v50
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v46, v46, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v49.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s14, v47, v47
	v_cndmask_b16 v40.h, 0x7fff, v46.h, s15
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v46, 0xffff0000, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v50, 1, v50
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v46, v46, v46
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v49, v49, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v48.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v49.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s15, v46, v46
	v_cndmask_b16 v41.l, 0x7fff, v49.h, s16
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v49.h, v112.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v49, v49, v49 :: v_dual_and_b32 v50, 1, v50
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v48, v48, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s16, v49, v49
	v_cndmask_b16 v41.h, 0x7fff, v48.h, s17
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v48, 0xffff0000, v112
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[25:32], v[34:41], v[217:224], v[25:32]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v35.h, v113.l
	v_mov_b16_e32 v35.l, v33.l
	v_and_b32_e32 v34, 0xffff0000, v113
	v_mov_b16_e32 v37.h, v114.l
	v_mov_b16_e32 v37.l, v33.l
	v_and_b32_e32 v36, 0xffff0000, v114
	v_mov_b16_e32 v39.h, v115.l
	v_mov_b16_e32 v39.l, v33.l
	v_and_b32_e32 v38, 0xffff0000, v115
	v_mov_b16_e32 v41.h, v116.l
	v_mov_b16_e32 v41.l, v33.l
	v_and_b32_e32 v40, 0xffff0000, v116
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v48, v48, v48 :: v_dual_sub_f32 v35, v35, v35
	v_dual_sub_f32 v34, v34, v34 :: v_dual_sub_f32 v37, v37, v37
	v_dual_sub_f32 v36, v36, v36 :: v_dual_sub_f32 v39, v39, v39
	v_dual_sub_f32 v38, v38, v38 :: v_dual_sub_f32 v41, v41, v41
	v_sub_f32_e32 v40, v40, v40
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s17, v48, v48
	v_mov_b16_e32 v50.l, v35.h
	v_cmp_o_f32_e64 s1, v35, v35
	v_cmp_o_f32_e64 s3, v34, v34
	v_cmp_o_f32_e64 s4, v37, v37
	v_cmp_o_f32_e64 s5, v36, v36
	v_cmp_o_f32_e64 s6, v39, v39
	v_cmp_o_f32_e64 s7, v38, v38
	v_cmp_o_f32_e64 s8, v41, v41
	v_cmp_o_f32_e64 s9, v40, v40
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v35, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v34.h
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v34, v34, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v37.h
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v37, v37, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v36.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v35.l, 0x7fff, v37.h, s4
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v36, v36, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v39.h
	v_cndmask_b16 v35.h, 0x7fff, v36.h, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v39, v39, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v38.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.l, 0x7fff, v39.h, s6
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v38, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v41.h
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v41, v41, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v40.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v37.l, 0x7fff, v41.h, s8
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v40, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v43.h
	v_cndmask_b16 v37.h, 0x7fff, v40.h, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v43, v43, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v42.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v43.l, v33.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v38.l, 0x7fff, v43.h, s10
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v43.h, v101.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v43, v43, v43 :: v_dual_and_b32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v42, v42, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v45.h
	v_cmp_o_f32_e64 s10, v43, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v38.h, 0x7fff, v42.h, s11
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v42, 0xffff0000, v101
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v42, v42, v42
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v45, v45, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v44.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v45.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v42, v42
	v_cndmask_b16 v39.l, 0x7fff, v45.h, s12
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v45.h, v102.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v45, v45, v45 :: v_dual_and_b32 v50, 1, v50
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v44, v44, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v47.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s12, v45, v45
	v_cndmask_b16 v39.h, 0x7fff, v44.h, s13
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v44, 0xffff0000, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v50, 1, v50
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v44, v44, v44
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v47, v47, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v46.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v47.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v44, v44
	v_cndmask_b16 v40.l, 0x7fff, v47.h, s14
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v47.h, v103.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v47, v47, v47 :: v_dual_and_b32 v50, 1, v50
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v46, v46, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v49.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s14, v47, v47
	v_cndmask_b16 v40.h, 0x7fff, v46.h, s15
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v46, 0xffff0000, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v50, 1, v50
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v46, v46, v46
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v49, v49, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v48.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v49.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s15, v46, v46
	v_cndmask_b16 v41.l, 0x7fff, v49.h, s16
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v49.h, v104.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v49, v49, v49 :: v_dual_and_b32 v50, 1, v50
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v48, v48, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s16, v49, v49
	v_cndmask_b16 v41.h, 0x7fff, v48.h, s17
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v48, 0xffff0000, v104
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[17:24], v[34:41], v[217:224], v[17:24]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v35.h, v105.l
	v_mov_b16_e32 v35.l, v33.l
	v_and_b32_e32 v34, 0xffff0000, v105
	v_mov_b16_e32 v37.h, v106.l
	v_mov_b16_e32 v37.l, v33.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v35, v35, v35 :: v_dual_and_b32 v36, 0xffff0000, v106
	v_sub_f32_e32 v34, v34, v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v39.h, v107.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v37, v37, v37 :: v_dual_sub_f32 v36, v36, v36
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v50.l, v35.h
	v_cmp_o_f32_e64 s1, v35, v35
	v_cmp_o_f32_e64 s3, v34, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_o_f32_e64 s4, v37, v37
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v39.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v50, 1, v50
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v38, 0xffff0000, v107
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s5, v36, v36
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v41.h, v108.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v39, v39, v39
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v35, v35, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v34.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v38, v38, v38
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v39, v39
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v41.l, v33.l
	v_and_b32_e32 v40, 0xffff0000, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v50, 1, v50
	v_cmp_o_f32_e64 s7, v38, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v48, v48, v48 :: v_dual_sub_f32 v41, v41, v41
	v_sub_f32_e32 v40, v40, v40
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v34, v34, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v37.h
	v_cmp_o_f32_e64 s8, v41, v41
	v_cmp_o_f32_e64 s9, v40, v40
	v_cmp_o_f32_e64 s17, v48, v48
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	v_and_b32_e32 v50, 1, v50
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v37, v37, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v36.h
	v_cndmask_b16 v35.l, 0x7fff, v37.h, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v36, v36, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v39.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v35.h, 0x7fff, v36.h, s5
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v39, v39, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v38.h
	v_cndmask_b16 v36.l, 0x7fff, v39.h, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v38, v38, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v41.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s7
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v41, v41, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v40.h
	v_cndmask_b16 v37.l, 0x7fff, v41.h, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v40, v40, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v43.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v37.h, 0x7fff, v40.h, s9
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v43, v43, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v42.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v43.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v38.l, 0x7fff, v43.h, s10
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v43.h, v213.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v43, v43, v43 :: v_dual_and_b32 v50, 1, v50
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v42, v42, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v45.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s10, v43, v43
	v_cndmask_b16 v38.h, 0x7fff, v42.h, s11
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v42, 0xffff0000, v213
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v50, 1, v50
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v42, v42, v42
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v45, v45, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v44.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v45.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v42, v42
	v_cndmask_b16 v39.l, 0x7fff, v45.h, s12
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v45.h, v214.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v45, v45, v45 :: v_dual_and_b32 v50, 1, v50
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v44, v44, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v47.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s12, v45, v45
	v_cndmask_b16 v39.h, 0x7fff, v44.h, s13
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v44, 0xffff0000, v214
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v50, 1, v50
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v44, v44, v44
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v47, v47, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v46.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v47.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v44, v44
	v_cndmask_b16 v40.l, 0x7fff, v47.h, s14
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v47.h, v215.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v47, v47, v47 :: v_dual_and_b32 v50, 1, v50
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v46, v46, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v49.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s14, v47, v47
	v_cndmask_b16 v40.h, 0x7fff, v46.h, s15
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v46, 0xffff0000, v215
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v50, 1, v50
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v46, v46, v46
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v49, v49, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v48.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v49.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s15, v46, v46
	v_cndmask_b16 v41.l, 0x7fff, v49.h, s16
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v49.h, v216.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v49, v49, v49 :: v_dual_and_b32 v50, 1, v50
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v48, v48, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s16, v49, v49
	v_cndmask_b16 v41.h, 0x7fff, v48.h, s17
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v48, 0xffff0000, v216
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[34:41], v[217:224], v[9:16]
	scratch_load_b128 v[38:41], off, off offset:240 ; 16-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v35.l, v33.l
	v_mov_b16_e32 v37.l, v33.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v48, v48, v48
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s17, v48, v48
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v35.h, v38.l
	v_and_b32_e32 v34, 0xffff0000, v38
	v_mov_b16_e32 v37.h, v39.l
	v_and_b32_e32 v36, 0xffff0000, v39
	v_mov_b16_e32 v39.h, v40.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v35, v35, v35 :: v_dual_sub_f32 v34, v34, v34
	v_dual_sub_f32 v37, v37, v37 :: v_dual_sub_f32 v36, v36, v36
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v39.l, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v50.l, v35.h
	v_cmp_o_f32_e64 s1, v35, v35
	v_cmp_o_f32_e64 s3, v34, v34
	v_cmp_o_f32_e64 s4, v37, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v39, v39, v39 :: v_dual_and_b32 v50, 1, v50
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v38, 0xffff0000, v40
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s5, v36, v36
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v40, 0xffff0000, v41
	v_mov_b16_e32 v41.h, v41.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v35, v35, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v34.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v38, v38, v38
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v39, v39
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v41.l, v33.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v40, v40, v40
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_and_b32_e32 v50, 1, v50
	v_cmp_o_f32_e64 s7, v38, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v41, v41, v41
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v40, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v34, v34, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v37.h
	v_cmp_o_f32_e64 s8, v41, v41
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v37, v37, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v36.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v35.l, 0x7fff, v37.h, s4
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v36, v36, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v39.h
	v_cndmask_b16 v35.h, 0x7fff, v36.h, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v39, v39, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v38.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.l, 0x7fff, v39.h, s6
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v38, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v41.h
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v41, v41, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v40.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v37.l, 0x7fff, v41.h, s8
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v40, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v43.h
	v_cndmask_b16 v37.h, 0x7fff, v40.h, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v43, v43, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v42.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v43.l, v33.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v38.l, 0x7fff, v43.h, s10
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v42, v42, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v45.h
	v_cndmask_b16 v38.h, 0x7fff, v42.h, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v45, v45, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v44.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v45.l, v33.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v39.l, 0x7fff, v45.h, s12
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v44, v44, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v47.h
	v_cndmask_b16 v39.h, 0x7fff, v44.h, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v47, v47, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v46.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v40.l, 0x7fff, v47.h, s14
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v46, v46, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v49.h
	v_cndmask_b16 v40.h, 0x7fff, v46.h, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v49, v49, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v48.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v41.l, 0x7fff, v49.h, s16
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v48, v48, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_cndmask_b16 v41.h, 0x7fff, v48.h, s17
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[34:41], v[217:224], v[1:8]
	s_clause 0x2                            ; 48-byte Folded Reload
	scratch_load_b128 v[213:216], off, off offset:448
	scratch_load_b128 v[217:220], off, off offset:464
	scratch_load_b128 v[46:49], off, off offset:224
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v35.h, v245.l
	v_mov_b16_e32 v35.l, v33.l
	v_and_b32_e32 v34, 0xffff0000, v245
	v_mov_b16_e64 v37.h, v246.l
	v_mov_b16_e32 v37.l, v33.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v35, v35, v35 :: v_dual_and_b32 v36, 0xffff0000, v246
	v_sub_f32_e32 v34, v34, v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v39.h, v247.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v37, v37, v37 :: v_dual_sub_f32 v36, v36, v36
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v50.l, v35.h
	v_cmp_o_f32_e64 s1, v35, v35
	v_cmp_o_f32_e64 s3, v34, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_o_f32_e64 s4, v37, v37
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v39.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v50, 1, v50
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v38, 0xffff0000, v247
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s5, v36, v36
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v41.h, v248.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v39, v39, v39
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v35, v35, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v34.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v38, v38, v38
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v39, v39
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v41.l, v33.l
	v_and_b32_e32 v40, 0xffff0000, v248
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v50, 1, v50
	v_cmp_o_f32_e64 s7, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v41, v41, v41 :: v_dual_sub_f32 v40, v40, v40
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v34, v34, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v37.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_o_f32_e64 s8, v41, v41
	v_cmp_o_f32_e64 s9, v40, v40
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s1
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v37, v37, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v36.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v35.l, 0x7fff, v37.h, s4
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v36, v36, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v39.h
	v_cndmask_b16 v35.h, 0x7fff, v36.h, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v39, v39, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v38.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.l, 0x7fff, v39.h, s6
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v38, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v41.h
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v41, v41, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v40.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v37.l, 0x7fff, v41.h, s8
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v40, v40, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_cndmask_b16 v37.h, 0x7fff, v40.h, s9
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v43.h, v46.l
	v_and_b32_e32 v42, 0xffff0000, v46
	v_mov_b16_e32 v45.h, v47.l
	v_and_b32_e32 v44, 0xffff0000, v47
	v_mov_b16_e32 v47.h, v48.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v43, v43, v43 :: v_dual_sub_f32 v42, v42, v42
	v_dual_sub_f32 v45, v45, v45 :: v_dual_sub_f32 v44, v44, v44
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v47.l, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v50.l, v43.h
	v_cmp_o_f32_e64 s10, v43, v43
	v_cmp_o_f32_e64 s11, v42, v42
	v_cmp_o_f32_e64 s12, v45, v45
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v47, v47, v47 :: v_dual_and_b32 v50, 1, v50
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v46, 0xffff0000, v48
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v44, v44
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v48, 0xffff0000, v49
	v_mov_b16_e32 v49.h, v49.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v43, v43, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v42.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v46, v46, v46
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v47, v47
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v49.l, v33.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v48, v48, v48
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_and_b32_e32 v50, 1, v50
	v_cmp_o_f32_e64 s15, v46, v46
	v_cndmask_b16 v38.l, 0x7fff, v43.h, s10
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v49, v49, v49
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s17, v48, v48
	v_add3_u32 v42, v42, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v45.h
	v_cmp_o_f32_e64 s16, v49, v49
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v43.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v38.h, 0x7fff, v42.h, s11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v45, v45, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v44.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v45.l, v33.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v39.l, 0x7fff, v45.h, s12
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v44, v44, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v47.h
	v_cndmask_b16 v39.h, 0x7fff, v44.h, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v47, v47, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v46.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v40.l, 0x7fff, v47.h, s14
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v46, v46, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v49.h
	v_cndmask_b16 v40.h, 0x7fff, v46.h, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v49, v49, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v48.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v41.l, 0x7fff, v49.h, s16
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v48, v48, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_cndmask_b16 v41.h, 0x7fff, v48.h, s17
	scratch_load_b128 v[46:49], off, off offset:192 ; 16-byte Folded Reload
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[25:32], v[34:41], v[201:208], v[25:32]
	scratch_load_b128 v[38:41], off, off offset:208 ; 16-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v35.l, v33.l
	v_mov_b16_e32 v37.l, v33.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v43.h, v46.l
	v_and_b32_e32 v42, 0xffff0000, v46
	v_mov_b16_e32 v45.h, v47.l
	v_and_b32_e32 v44, 0xffff0000, v47
	v_mov_b16_e32 v47.h, v48.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v35.h, v38.l
	v_and_b32_e32 v34, 0xffff0000, v38
	v_mov_b16_e32 v37.h, v39.l
	v_and_b32_e32 v36, 0xffff0000, v39
	v_mov_b16_e32 v39.h, v40.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v35, v35, v35 :: v_dual_sub_f32 v34, v34, v34
	v_dual_sub_f32 v37, v37, v37 :: v_dual_sub_f32 v36, v36, v36
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v39.l, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v50.l, v35.h
	v_cmp_o_f32_e64 s1, v35, v35
	v_cmp_o_f32_e64 s3, v34, v34
	v_cmp_o_f32_e64 s4, v37, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v39, v39, v39 :: v_dual_and_b32 v50, 1, v50
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v38, 0xffff0000, v40
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s5, v36, v36
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v40, 0xffff0000, v41
	v_mov_b16_e32 v41.h, v41.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v35, v35, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v34.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v38, v38, v38
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v39, v39
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v41.l, v33.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v40, v40, v40
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_and_b32_e32 v50, 1, v50
	v_cmp_o_f32_e64 s7, v38, v38
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v43, v43, v43
	v_sub_f32_e32 v41, v41, v41
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v40, v40
	v_add3_u32 v34, v34, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v37.h
	v_cmp_o_f32_e64 s8, v41, v41
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v42, v42, v42
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s10, v43, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v45, v45, v45 :: v_dual_and_b32 v50, 1, v50
	v_sub_f32_e32 v44, v44, v44
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v42, v42
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v47.l, v33.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s12, v45, v45
	v_add3_u32 v37, v37, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v36.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v47, v47, v47 :: v_dual_and_b32 v46, 0xffff0000, v48
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v44, v44
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v48, 0xffff0000, v49
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v50, 1, v50
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v49.h, v49.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v46, v46, v46
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v47, v47
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v49.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v36, v36, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v39.h
	v_cmp_o_f32_e64 s15, v46, v46
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v49, v49, v49 :: v_dual_sub_f32 v48, v48, v48
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v50, 1, v50
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s1
	v_cmp_o_f32_e64 s16, v49, v49
	v_cmp_o_f32_e64 s17, v48, v48
	v_cndmask_b16 v35.h, 0x7fff, v36.h, s5
	v_add3_u32 v39, v39, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v38.h
	v_cndmask_b16 v35.l, 0x7fff, v37.h, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v36.l, 0x7fff, v39.h, s6
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v38, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v41.h
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v41, v41, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v40.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v37.l, 0x7fff, v41.h, s8
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v40, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v43.h
	v_cndmask_b16 v37.h, 0x7fff, v40.h, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v43, v43, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v42.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v43.l, v33.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v38.l, 0x7fff, v43.h, s10
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v42, v42, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v45.h
	v_cndmask_b16 v38.h, 0x7fff, v42.h, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v45, v45, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v44.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v45.l, v33.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v39.l, 0x7fff, v45.h, s12
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v44, v44, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v47.h
	v_cndmask_b16 v39.h, 0x7fff, v44.h, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v47, v47, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v46.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v40.l, 0x7fff, v47.h, s14
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v46, v46, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v49.h
	v_cndmask_b16 v40.h, 0x7fff, v46.h, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v49, v49, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v48.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v41.l, 0x7fff, v49.h, s16
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v48, v48, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_cndmask_b16 v41.h, 0x7fff, v48.h, s17
	scratch_load_b128 v[46:49], off, off offset:160 ; 16-byte Folded Reload
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[17:24], v[34:41], v[201:208], v[17:24]
	scratch_load_b128 v[38:41], off, off offset:176 ; 16-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v35.l, v33.l
	v_mov_b16_e32 v37.l, v33.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v43.h, v46.l
	v_and_b32_e32 v42, 0xffff0000, v46
	v_mov_b16_e32 v45.h, v47.l
	v_and_b32_e32 v44, 0xffff0000, v47
	v_mov_b16_e32 v47.h, v48.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v35.h, v38.l
	v_and_b32_e32 v34, 0xffff0000, v38
	v_mov_b16_e32 v37.h, v39.l
	v_and_b32_e32 v36, 0xffff0000, v39
	v_mov_b16_e32 v39.h, v40.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v35, v35, v35 :: v_dual_sub_f32 v34, v34, v34
	v_dual_sub_f32 v37, v37, v37 :: v_dual_sub_f32 v36, v36, v36
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v39.l, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v50.l, v35.h
	v_cmp_o_f32_e64 s1, v35, v35
	v_cmp_o_f32_e64 s3, v34, v34
	v_cmp_o_f32_e64 s4, v37, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v39, v39, v39 :: v_dual_and_b32 v50, 1, v50
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v38, 0xffff0000, v40
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s5, v36, v36
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v40, 0xffff0000, v41
	v_mov_b16_e32 v41.h, v41.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v35, v35, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v34.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v38, v38, v38
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v39, v39
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v41.l, v33.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v40, v40, v40
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_and_b32_e32 v50, 1, v50
	v_cmp_o_f32_e64 s7, v38, v38
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v43, v43, v43
	v_sub_f32_e32 v41, v41, v41
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v40, v40
	v_add3_u32 v34, v34, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v37.h
	v_cmp_o_f32_e64 s8, v41, v41
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v42, v42, v42
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s10, v43, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v45, v45, v45 :: v_dual_and_b32 v50, 1, v50
	v_sub_f32_e32 v44, v44, v44
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v42, v42
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v47.l, v33.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s12, v45, v45
	v_add3_u32 v37, v37, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v36.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v47, v47, v47 :: v_dual_and_b32 v46, 0xffff0000, v48
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v44, v44
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v48, 0xffff0000, v49
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v50, 1, v50
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v49.h, v49.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v46, v46, v46
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v47, v47
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v49.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v36, v36, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v39.h
	v_cmp_o_f32_e64 s15, v46, v46
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v49, v49, v49 :: v_dual_sub_f32 v48, v48, v48
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v50, 1, v50
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s1
	v_cmp_o_f32_e64 s16, v49, v49
	v_cmp_o_f32_e64 s17, v48, v48
	v_cndmask_b16 v35.h, 0x7fff, v36.h, s5
	v_add3_u32 v39, v39, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v38.h
	v_cndmask_b16 v35.l, 0x7fff, v37.h, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v36.l, 0x7fff, v39.h, s6
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v38, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v41.h
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v41, v41, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v40.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v37.l, 0x7fff, v41.h, s8
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v40, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v43.h
	v_cndmask_b16 v37.h, 0x7fff, v40.h, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v43, v43, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v42.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v43.l, v33.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v38.l, 0x7fff, v43.h, s10
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v42, v42, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v45.h
	v_cndmask_b16 v38.h, 0x7fff, v42.h, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v45, v45, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v44.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v45.l, v33.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v39.l, 0x7fff, v45.h, s12
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v44, v44, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v47.h
	v_cndmask_b16 v39.h, 0x7fff, v44.h, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v47, v47, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v46.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v40.l, 0x7fff, v47.h, s14
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v46, v46, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v49.h
	v_cndmask_b16 v40.h, 0x7fff, v46.h, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v49, v49, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v48.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v41.l, 0x7fff, v49.h, s16
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v48, v48, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_cndmask_b16 v41.h, 0x7fff, v48.h, s17
	scratch_load_b128 v[46:49], off, off offset:128 ; 16-byte Folded Reload
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[34:41], v[201:208], v[9:16]
	scratch_load_b128 v[38:41], off, off offset:144 ; 16-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v35.l, v33.l
	v_mov_b16_e32 v37.l, v33.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v43.h, v46.l
	v_and_b32_e32 v42, 0xffff0000, v46
	v_mov_b16_e32 v45.h, v47.l
	v_and_b32_e32 v44, 0xffff0000, v47
	v_mov_b16_e32 v47.h, v48.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v35.h, v38.l
	v_and_b32_e32 v34, 0xffff0000, v38
	v_mov_b16_e32 v37.h, v39.l
	v_and_b32_e32 v36, 0xffff0000, v39
	v_mov_b16_e32 v39.h, v40.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v35, v35, v35 :: v_dual_sub_f32 v34, v34, v34
	v_dual_sub_f32 v37, v37, v37 :: v_dual_sub_f32 v36, v36, v36
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v39.l, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v50.l, v35.h
	v_cmp_o_f32_e64 s1, v35, v35
	v_cmp_o_f32_e64 s3, v34, v34
	v_cmp_o_f32_e64 s4, v37, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v39, v39, v39 :: v_dual_and_b32 v50, 1, v50
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v38, 0xffff0000, v40
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s5, v36, v36
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v40, 0xffff0000, v41
	v_mov_b16_e32 v41.h, v41.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v35, v35, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v34.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v38, v38, v38
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v39, v39
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v41.l, v33.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v40, v40, v40
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_and_b32_e32 v50, 1, v50
	v_cmp_o_f32_e64 s7, v38, v38
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v43, v43, v43
	v_sub_f32_e32 v41, v41, v41
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v40, v40
	v_add3_u32 v34, v34, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v37.h
	v_cmp_o_f32_e64 s8, v41, v41
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v42, v42, v42
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s10, v43, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v45, v45, v45 :: v_dual_and_b32 v50, 1, v50
	v_sub_f32_e32 v44, v44, v44
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v42, v42
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v47.l, v33.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s12, v45, v45
	v_add3_u32 v37, v37, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v36.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v47, v47, v47 :: v_dual_and_b32 v46, 0xffff0000, v48
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v44, v44
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v48, 0xffff0000, v49
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v50, 1, v50
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v49.h, v49.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v46, v46, v46
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v47, v47
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v49.l, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v36, v36, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v39.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v48, v48, v48 :: v_dual_sub_f32 v49, v49, v49
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s15, v46, v46
	v_cndmask_b16 v34.l, 0x7fff, v37.h, s4
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s17, v48, v48
	v_cmp_o_f32_e64 s16, v49, v49
	v_add3_u32 v39, v39, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v38.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v35.l, 0x7fff, v39.h, s6
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v38, v38, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v41.h
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v41, v41, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v40.h
	v_cndmask_b16 v36.l, 0x7fff, v41.h, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v40, v40, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v43.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v43, v43, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v42.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v37.l, 0x7fff, v43.h, s10
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v42, v42, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v45.h
	v_cndmask_b16 v37.h, 0x7fff, v42.h, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v45, v45, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v44.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v38.l, 0x7fff, v45.h, s12
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v44, v44, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v47.h
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v47, v47, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v46.h
	v_cndmask_b16 v39.l, 0x7fff, v47.h, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v46, v46, v50, 0x7fff
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v50.l, v49.h
	v_mov_b16_e32 v33.l, v48.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v39.h, 0x7fff, v46.h, s15
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v33, 1, v33
	v_add3_u32 v49, v49, v50, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v48, v48, v33, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s3
	v_cndmask_b16 v33.l, 0x7fff, v35.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s5
	v_cndmask_b16 v35.h, 0x7fff, v38.h, s7
	v_cndmask_b16 v36.h, 0x7fff, v40.h, s9
	v_cndmask_b16 v38.h, 0x7fff, v44.h, s13
	v_cndmask_b16 v40.h, 0x7fff, v48.h, s17
	v_cndmask_b16 v40.l, 0x7fff, v49.h, s16
	.loc	1 607 13 is_stmt 1              ; attention_backward.py:607:13
	s_add_i32 s1, s56, 32
	s_cmpk_lt_u32 s56, 0x7e0
	s_mov_b32 s56, s1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[201:208], v[1:8]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	s_clause 0x6                            ; 76-byte Folded Reload
	scratch_load_b128 v[102:105], off, off offset:64
	scratch_load_b128 v[106:109], off, off offset:80
	scratch_load_b128 v[156:159], off, off offset:96
	scratch_load_b128 v[160:163], off, off offset:112
	scratch_load_b32 v44, off, off offset:1436
	scratch_load_b32 v110, off, off offset:1440
	scratch_load_b32 v45, off, off offset:1444
.LBB0_4:                                ; %._crit_edge
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, v44, v45
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v68, s18, v110
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s35, v110
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
	buffer_store_b32 v190, v101, s[12:15], 0 offen
	buffer_store_b32 v191, v70, s[12:15], 0 offen
	v_cndmask_b32_e64 v70, 0x80000000, v71, s7
	v_add_lshl_u32 v71, v73, s34, 2
	v_cndmask_b32_e64 v68, 0x80000000, v68, s7
	v_add_lshl_u32 v73, v75, s34, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s8, s18, v35
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v192, v70, s[12:15], 0 offen
	v_cndmask_b32_e64 v70, 0x80000000, v71, s7
	v_cndmask_b32_e64 v71, 0x80000000, v72, s7
	buffer_store_b32 v193, v68, s[12:15], 0 offen
	v_cndmask_b32_e64 v68, 0x80000000, v73, s7
	v_add_lshl_u32 v72, v76, s34, 2
	s_clause 0x1
	buffer_store_b32 v194, v70, s[12:15], 0 offen
	buffer_store_b32 v195, v71, s[12:15], 0 offen
	v_add_lshl_u32 v70, v77, s34, 2
	v_add_lshl_u32 v71, v78, s34, 2
	buffer_store_b32 v196, v68, s[12:15], 0 offen
	v_cndmask_b32_e64 v68, 0x80000000, v72, s7
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s7, vcc_lo, s8
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v72, v79, s34, 2
	v_cndmask_b32_e64 v70, 0x80000000, v70, s7
	v_cndmask_b32_e64 v71, 0x80000000, v71, s7
	buffer_store_b32 v197, v68, s[12:15], 0 offen
	v_add_lshl_u32 v68, v80, s34, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s9, s18, v34
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v182, v70, s[12:15], 0 offen
	v_cndmask_b32_e64 v70, 0x80000000, v72, s7
	v_add_lshl_u32 v72, v81, s34, 2
	v_cndmask_b32_e64 v68, 0x80000000, v68, s7
	buffer_store_b32 v183, v71, s[12:15], 0 offen
	v_add_lshl_u32 v71, v82, s34, 2
	buffer_store_b32 v184, v70, s[12:15], 0 offen
	v_cndmask_b32_e64 v70, 0x80000000, v72, s7
	buffer_store_b32 v185, v68, s[12:15], 0 offen
	v_add_lshl_u32 v68, v83, s34, 2
	v_cndmask_b32_e64 v71, 0x80000000, v71, s7
	v_add_lshl_u32 v72, v84, s34, 2
	buffer_store_b32 v186, v70, s[12:15], 0 offen
	v_add_lshl_u32 v70, v85, s34, 2
	v_cndmask_b32_e64 v68, 0x80000000, v68, s7
	buffer_store_b32 v187, v71, s[12:15], 0 offen
	v_cndmask_b32_e64 v71, 0x80000000, v72, s7
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s7, vcc_lo, s9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v72, v87, s34, 2
	v_cndmask_b32_e64 v70, 0x80000000, v70, s7
	buffer_store_b32 v188, v68, s[12:15], 0 offen
	v_add_lshl_u32 v68, v86, s34, 2
	s_clause 0x1
	buffer_store_b32 v189, v71, s[12:15], 0 offen
	buffer_store_b32 v174, v70, s[12:15], 0 offen
	v_add_lshl_u32 v70, v88, s34, 2
	v_cndmask_b32_e64 v71, 0x80000000, v72, s7
	v_cndmask_b32_e64 v68, 0x80000000, v68, s7
	v_add_lshl_u32 v72, v89, s34, 2
	v_add_lshl_u32 v73, v90, s34, 2
	v_cndmask_b32_e64 v70, 0x80000000, v70, s7
	s_clause 0x1
	buffer_store_b32 v175, v68, s[12:15], 0 offen
	buffer_store_b32 v176, v71, s[12:15], 0 offen
	v_cndmask_b32_e64 v68, 0x80000000, v72, s7
	v_cndmask_b32_e64 v71, 0x80000000, v73, s7
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s10, s18, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v177, v70, s[12:15], 0 offen
	v_add_lshl_u32 v70, v91, s34, 2
	v_add_lshl_u32 v72, v92, s34, 2
	s_clause 0x1
	buffer_store_b32 v178, v68, s[12:15], 0 offen
	buffer_store_b32 v179, v71, s[12:15], 0 offen
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
	buffer_store_b32 v180, v70, s[12:15], 0 offen
	buffer_store_b32 v181, v71, s[12:15], 0 offen
	v_add_lshl_u32 v71, v95, s34, 2
	v_add_lshl_u32 v64, v64, s34, 2
	v_cndmask_b32_e64 v70, 0x80000000, v72, s7
	buffer_store_b32 v166, v68, s[12:15], 0 offen
	v_add_lshl_u32 v68, v96, s34, 2
	v_add_lshl_u32 v72, v97, s34, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s6, vcc_lo, s6
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v167, v70, s[12:15], 0 offen
	v_cndmask_b32_e64 v70, 0x80000000, v71, s7
	v_add_lshl_u32 v71, v98, s34, 2
	v_cndmask_b32_e64 v68, 0x80000000, v68, s7
	v_cndmask_b32_e64 v72, 0x80000000, v72, s7
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s5, vcc_lo, s5
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v168, v70, s[12:15], 0 offen
	v_cndmask_b32_e64 v70, 0x80000000, v71, s7
	s_clause 0x1
	buffer_store_b32 v169, v68, s[12:15], 0 offen
	buffer_store_b32 v170, v72, s[12:15], 0 offen
	v_cndmask_b32_e64 v68, 0x80000000, v73, s7
	v_add_lshl_u32 v71, v100, s34, 2
	v_add_nc_u32_e32 v72, 0x230, v69
	buffer_store_b32 v171, v70, s[12:15], 0 offen
	v_add_nc_u32_e32 v70, 0x208, v69
	buffer_store_b32 v172, v68, s[12:15], 0 offen
	v_cndmask_b32_e64 v68, 0x80000000, v71, s7
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s7, vcc_lo, s11
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_nc_u32_e32 v71, 0x210, v69
	v_cndmask_b32_e64 v64, 0x80000000, v64, s7
	v_cndmask_b32_e64 v70, 0x80000000, v70, s7
	buffer_store_b32 v173, v68, s[12:15], 0 offen
	v_add_nc_u32_e32 v68, 0x218, v69
	s_clause 0x1
	buffer_store_b32 v102, v64, s[12:15], 0 offen
	buffer_store_b32 v103, v70, s[12:15], 0 offen
	v_cndmask_b32_e64 v64, 0x80000000, v71, s7
	v_add_nc_u32_e32 v70, 0x220, v69
	v_cndmask_b32_e64 v68, 0x80000000, v68, s7
	v_add_nc_u32_e32 v71, 0x228, v69
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s4, vcc_lo, s4
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v104, v64, s[12:15], 0 offen
	v_cndmask_b32_e64 v64, 0x80000000, v70, s7
	buffer_store_b32 v105, v68, s[12:15], 0 offen
	v_cndmask_b32_e64 v68, 0x80000000, v71, s7
	v_add_nc_u32_e32 v71, 0x238, v69
	v_cndmask_b32_e64 v70, 0x80000000, v72, s7
	buffer_store_b32 v106, v64, s[12:15], 0 offen
	v_add_lshl_u32 v64, v65, s34, 2
	s_clause 0x1
	buffer_store_b32 v107, v68, s[12:15], 0 offen
	buffer_store_b32 v108, v70, s[12:15], 0 offen
	v_cndmask_b32_e64 v65, 0x80000000, v71, s7
	v_add_nc_u32_e32 v68, 0x288, v69
	v_cndmask_b32_e64 v64, 0x80000000, v64, s6
	v_add_nc_u32_e32 v70, 0x290, v69
	v_add_nc_u32_e32 v71, 0x2a8, v69
	buffer_store_b32 v109, v65, s[12:15], 0 offen
	v_add_nc_u32_e32 v65, 0x298, v69
	buffer_store_b32 v156, v64, s[12:15], 0 offen
	v_cndmask_b32_e64 v64, 0x80000000, v68, s6
	v_cndmask_b32_e64 v68, 0x80000000, v70, s6
	v_add_nc_u32_e32 v70, 0x2a0, v69
	v_cndmask_b32_e64 v65, 0x80000000, v65, s6
	s_clause 0x1
	buffer_store_b32 v157, v64, s[12:15], 0 offen
	buffer_store_b32 v158, v68, s[12:15], 0 offen
	v_add_nc_u32_e32 v68, 0x2b0, v69
	v_cndmask_b32_e64 v64, 0x80000000, v70, s6
	buffer_store_b32 v159, v65, s[12:15], 0 offen
	v_cndmask_b32_e64 v65, 0x80000000, v71, s6
	v_add_nc_u32_e32 v70, 0x2b8, v69
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s3, s19, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v160, v64, s[12:15], 0 offen
	v_add_lshl_u32 v64, v66, s34, 2
	buffer_store_b32 v161, v65, s[12:15], 0 offen
	v_cndmask_b32_e64 v65, 0x80000000, v68, s6
	v_cndmask_b32_e64 v66, 0x80000000, v70, s6
	v_add_nc_u32_e32 v68, 0x308, v69
	v_cndmask_b32_e64 v64, 0x80000000, v64, s5
	v_add_nc_u32_e32 v70, 0x328, v69
	s_clause 0x1
	buffer_store_b32 v162, v65, s[12:15], 0 offen
	buffer_store_b32 v163, v66, s[12:15], 0 offen
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[156:159], off, off offset:32
	scratch_load_b128 v[160:163], off, off offset:48
	v_add_nc_u32_e32 v65, 0x310, v69
	v_add_nc_u32_e32 v66, 0x318, v69
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s3, vcc_lo, s3
	.loc	1 580 44 is_stmt 0              ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s2, s19, v35
	v_cmp_gt_i32_e64 s1, s19, v34
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	v_cndmask_b32_e64 v65, 0x80000000, v65, s5
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s0, s19, v0
	.loc	1 580 22 is_stmt 0              ; attention_backward.py:580:22
	s_and_b32 s2, vcc_lo, s2
	s_and_b32 s1, vcc_lo, s1
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	s_waitcnt vmcnt(1)
	buffer_store_b32 v156, v64, s[12:15], 0 offen
	v_cndmask_b32_e64 v64, 0x80000000, v68, s5
	v_add_nc_u32_e32 v68, 0x320, v69
	buffer_store_b32 v157, v64, s[12:15], 0 offen
	v_cndmask_b32_e64 v64, 0x80000000, v66, s5
	buffer_store_b32 v158, v65, s[12:15], 0 offen
	v_cndmask_b32_e64 v65, 0x80000000, v68, s5
	v_add_nc_u32_e32 v68, 0x330, v69
	v_cndmask_b32_e64 v66, 0x80000000, v70, s5
	buffer_store_b32 v159, v64, s[12:15], 0 offen
	v_add_nc_u32_e32 v64, 0x338, v69
	s_waitcnt vmcnt(0)
	s_clause 0x1
	buffer_store_b32 v160, v65, s[12:15], 0 offen
	buffer_store_b32 v161, v66, s[12:15], 0 offen
	v_cndmask_b32_e64 v65, 0x80000000, v68, s5
	v_add_lshl_u32 v66, v67, s34, 2
	v_cndmask_b32_e64 v64, 0x80000000, v64, s5
	v_add_nc_u32_e32 v67, 0x388, v69
	v_add_nc_u32_e32 v68, 0x390, v69
	buffer_store_b32 v162, v65, s[12:15], 0 offen
	v_cndmask_b32_e64 v66, 0x80000000, v66, s4
	buffer_store_b32 v163, v64, s[12:15], 0 offen
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[161:164], off, off
	scratch_load_b128 v[165:168], off, off offset:16
	v_cndmask_b32_e64 v65, 0x80000000, v67, s4
	v_cndmask_b32_e64 v67, 0x80000000, v68, s4
	v_add_nc_u32_e32 v64, 0x398, v69
	v_add_nc_u32_e32 v68, 0x3b8, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v64, 0x80000000, v64, s4
	v_cndmask_b32_e64 v68, 0x80000000, v68, s4
	s_waitcnt vmcnt(1)
	s_clause 0x2
	buffer_store_b32 v161, v66, s[12:15], 0 offen
	buffer_store_b32 v162, v65, s[12:15], 0 offen
	buffer_store_b32 v163, v67, s[12:15], 0 offen
	v_add_nc_u32_e32 v65, 0x3a0, v69
	v_add_nc_u32_e32 v66, 0x3a8, v69
	v_add_nc_u32_e32 v67, 0x3b0, v69
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v69, s19, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v65, 0x80000000, v65, s4
	v_cndmask_b32_e64 v66, 0x80000000, v66, s4
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v67, 0x80000000, v67, s4
	buffer_store_b32 v164, v64, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	s_clause 0x3
	buffer_store_b32 v165, v65, s[12:15], 0 offen
	buffer_store_b32 v166, v66, s[12:15], 0 offen
	buffer_store_b32 v167, v67, s[12:15], 0 offen
	buffer_store_b32 v168, v68, s[12:15], 0 offen
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
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1452
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
		.amdhsa_next_free_sgpr 57
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 57
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 1452
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 25764
; TotalNumSgprs: 59
; NumVgprs: 256
; ScratchSize: 1452
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 59
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 1452
    .sgpr_count:     59
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 410
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
