	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[54:55], s[0:1], 0x74
.Ltmp0:
	.loc	1 514 33 prologue_end           ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v9, 3, v0
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_and_b32_e32 v33, 7, v0
	s_clause 0x1
	s_load_b128 s[56:59], s[0:1], 0x0
	s_load_b64 s[8:9], s[0:1], 0x10
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s70, s2, 4
	.loc	1 533 24                        ; attention_backward.py:533:24
	s_lshl_b32 s68, s3, 11
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_lshlrev_b32_e32 v21, 3, v33
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_add_i32 s68, s68, s70
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v13, s70, v9
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v35, 4, v0
	.loc	1 541 32                        ; attention_backward.py:541:32
	s_ashr_i32 s7, s70, 1
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s6, 0x800, v13
	.loc	1 541 32                        ; attention_backward.py:541:32
	v_or_b32_e32 v11, s7, v9
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_mov_b32 s10, s62
	s_mov_b32 s11, s63
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_bfe_i32 s2, s2, 0x1001b
	s_clause 0x1
	s_load_b32 s69, s[0:1], 0x7c
	s_load_b64 s[52:53], s[0:1], 0x58
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s54, v9
	s_mul_i32 s35, s54, s68
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_cmp_gt_i32_e64 s5, s54, v21
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_lshl_b32 s4, s54, 3
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_and_b32 s61, s59, 0xffff
	s_mov_b32 s60, s58
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_and_b32 s9, s9, 0xffff
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s6, s5
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add3_u32 v1, s35, v21, v1
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_i32 v38, v0, 4, 1
	v_bfe_u32 v40, v0, 4, 1
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_bfe_i32 v46, v0, 5, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_bfe_i32 v47, v0, 3, 1
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v2, 1, v1
	v_add_lshl_u32 v1, v1, s4, 1
	.loc	1 543 26                        ; attention_backward.py:543:26
	s_lshl_b32 s4, s3, 10
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v50, s70, v40
	.loc	1 545 17                        ; attention_backward.py:545:17
	s_add_i32 s4, s7, s4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v5, 0x80000000, v1
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v34, 56, v0
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_or_b32_e32 v10, s4, v9
	.loc	1 549 23                        ; attention_backward.py:549:23
	v_cmp_gt_i32_e32 vcc_lo, 0x400, v11
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_clause 0x1
	buffer_load_b128 v[1:4], v2, s[60:63], 0 offen
	buffer_load_b128 v[5:8], v5, s[60:63], 0 offen
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_mov_b16_e32 v119.l, 0
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v12, 1, v34
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_lshrrev_b32_e32 v61, 1, v34
	v_lshrrev_b32_e32 v62, 2, v34
	v_mul_u32_u24_e32 v66, 0x90, v33
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v37.h, v119.l
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xad_u32 v24, v35, v12, 0
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v110.h, v119.l
	v_mov_b16_e32 v54.h, v119.l
	v_mov_b16_e32 v56.h, v119.l
	v_mov_b16_e32 v57.h, v119.l
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v44.l, v119.l
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v55.h, v119.l
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v64.l, v119.l
	v_mov_b16_e32 v49.l, v119.l
	s_lshl_b32 s71, s3, 12
	s_mov_b32 s36, 0
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_mul_f32 s72, s69, 0x3fb8aa3b
	s_mov_b32 s18, -1
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s58, s62
	s_mov_b32 s59, s63
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(1)
	ds_store_b128 v24, v[1:4]
	s_waitcnt vmcnt(0)
	ds_store_b128 v24, v[5:8] offset:1024
	v_mov_b32_e32 v1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v75, 15, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v5, v1 :: v_dual_and_b32 v36, 16, v0
	v_mov_b32_e32 v2, v1
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mad_u64_u32 v[9:10], null, s55, v10, v[21:22]
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s4, s55, v21
	v_dual_mov_b32 v7, v1 :: v_dual_and_b32 v42, 32, v0
	v_lshlrev_b32_e32 v48, 6, v0
	v_dual_mov_b32 v11, v1 :: v_dual_lshlrev_b32 v0, 3, v0
	.loc	1 549 22                        ; attention_backward.py:549:22
	s_and_b32 s7, vcc_lo, s4
	v_mov_b32_e32 v4, v1
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v9, 0x80000000, v9, s7
	v_mov_b32_e32 v6, v1
	v_dual_mov_b32 v10, v1 :: v_dual_lshlrev_b32 v51, 4, v33
	v_dual_mov_b32 v15, v1 :: v_dual_lshlrev_b32 v58, 4, v75
	buffer_load_b64 v[22:23], v9, s[8:11], 0 offen
	s_clause 0x1
	s_load_b64 s[8:9], s[0:1], 0x28
	s_load_b256 s[44:51], s[0:1], 0x38
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_lshr_b32 s0, s2, 28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v17, s0, v13
	v_dual_mov_b32 v13, v1 :: v_dual_and_b32 v52, 0x370, v35
	v_dual_mov_b32 v26, v1 :: v_dual_and_b32 v65, 0x820, v46
	v_ashrrev_i32_e32 v17, 4, v17
	v_dual_mov_b32 v27, v1 :: v_dual_lshlrev_b32 v68, 7, v42
	v_dual_mov_b32 v28, v1 :: v_dual_lshlrev_b32 v67, 8, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 568 17                        ; attention_backward.py:568:17
	v_lshl_add_u32 v17, s3, 7, v17
	v_dual_mov_b32 v31, v1 :: v_dual_and_b32 v70, 48, v0
	v_dual_mov_b32 v32, v1 :: v_dual_and_b32 v35, 48, v35
	v_mul_lo_u32 v39, v17, s55
	v_dual_mov_b32 v17, v1 :: v_dual_and_b32 v0, 0x420, v46
	v_dual_mov_b32 v19, v1 :: v_dual_lshlrev_b32 v46, 5, v33
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s0, s6, s4
	v_mov_b32_e32 v9, v1
	v_dual_mov_b32 v14, v1 :: v_dual_and_b32 v59, 0x440, v38
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_add_lshl_u32 v39, v39, v21, 1
	v_dual_mov_b32 v29, v1 :: v_dual_lshlrev_b32 v36, 2, v36
	v_dual_mov_b32 v30, v1 :: v_dual_lshlrev_b32 v69, 1, v75
	v_dual_mov_b32 v18, v1 :: v_dual_lshlrev_b32 v71, 2, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v38, 0x80000000, v39, s0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s0, 0x800, v50
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshl_or_b32 v50, v75, 7, v51
	v_and_or_b32 v48, 0xc00, v48, v51
	v_or3_b32 v78, v67, v68, v58
	v_xor_b32_e32 v51, v51, v34
	v_xor_b32_e32 v35, v35, v34
	v_lshl_or_b32 v189, v34, 6, v46
	v_dual_mov_b32 v12, v1 :: v_dual_and_b32 v53, 0x440, v47
	v_dual_mov_b32 v16, v1 :: v_dual_and_b32 v63, 0x240, v47
	v_or3_b32 v79, v69, v36, v42
	v_lshl_or_b32 v36, v33, 6, v70
	v_lshl_or_b32 v131, v33, 10, v51
	v_lshl_or_b32 v104, v33, 9, v35
	v_xor_b32_e32 v33, v189, v71
	v_xor_b32_e32 v34, 16, v78
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_xad_u32 v74, v53, v52, 0
	v_and_or_b32 v53, 0x410, v47, v65
	v_and_or_b32 v47, 0x210, v47, v0
	v_lshl_or_b32 v82, v75, 6, v70
	v_xor_b32_e32 v109, v48, v63
	v_xor_b32_e32 v35, 32, v78
	v_xor_b32_e32 v71, 0x90, v79
	v_add_nc_u32_e32 v252, 0, v33
	v_add_nc_u32_e32 v33, 0, v34
	v_dual_mov_b32 v25, v1 :: v_dual_lshlrev_b32 v60, 3, v42
	v_lshl_add_u32 v72, v42, 1, 0
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_lshrrev_b32_e32 v73, 1, v42
	v_xor_b32_e32 v107, v47, v36
	v_lshl_or_b32 v114, v42, 6, v50
	v_xor_b32_e32 v42, 48, v78
	s_clause 0x6                            ; 28-byte Folded Spill
	scratch_store_b32 off, v78, off offset:20
	scratch_store_b32 off, v79, off offset:24
	scratch_store_b32 off, v82, off offset:28
	scratch_store_b32 off, v75, off offset:512
	scratch_store_b32 off, v33, off offset:40
	scratch_store_b32 off, v104, off offset:36
	scratch_store_b32 off, v107, off offset:32
	v_add_nc_u32_e32 v33, 0, v35
	v_add_nc_u32_e32 v254, 0, v71
	v_xor_b32_e32 v45, 0x1b0, v109
	v_xor_b32_e32 v71, 0x240, v131
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v73, off offset:516
	scratch_store_b32 off, v33, off offset:44
	v_add_nc_u32_e32 v117, 0, v45
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v45, 0, v71
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v65, 0, v50
	v_lshl_add_u32 v0, v75, 2, v72
	v_xad_u32 v67, v50, 16, 0
	v_xad_u32 v68, v50, 32, 0
	v_xad_u32 v69, v50, 48, 0
	v_xad_u32 v70, v50, 64, 0
	v_xad_u32 v72, 0x50, v50, 0
	v_xad_u32 v75, 0x60, v50, 0
	v_xad_u32 v76, 0x70, v50, 0
	v_xor_b32_e32 v50, 64, v78
	v_xor_b32_e32 v47, 0x50, v78
	v_xor_b32_e32 v48, 0x60, v78
	v_xor_b32_e32 v83, 0x70, v78
	v_mul_lo_u32 v36, s55, v62
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_xor_b32_e32 v52, v59, v58
	v_xor_b32_e32 v51, 0x80, v78
	v_xor_b32_e32 v130, v53, v66
	v_xor_b32_e32 v53, 0xa0, v78
	v_xor_b32_e32 v58, 0xb0, v78
	v_add3_u32 v77, 0, v60, v52
	v_xor_b32_e32 v52, 0x90, v78
	v_xor_b32_e32 v59, 0xc0, v78
	v_xor_b32_e32 v80, 16, v82
	v_xor_b32_e32 v81, 32, v82
	v_xor_b32_e32 v82, 48, v82
	v_xor_b32_e32 v84, 0x1f0, v131
	v_xor_b32_e32 v85, 0x290, v131
	v_xor_b32_e32 v60, 0xd0, v78
	v_xor_b32_e32 v63, 0xe0, v78
	v_add_nc_u32_e32 v123, 0, v82
	v_xor_b32_e32 v82, 0xd0, v131
	v_add_nc_u32_e32 v34, 0, v84
	v_add_nc_u32_e32 v139, 0, v85
	v_xor_b32_e32 v66, 0xf0, v78
	v_xor_b32_e32 v78, 0x120, v79
	v_xor_b32_e32 v46, 0x120, v109
	v_add_nc_u32_e32 v35, 0, v81
	v_xor_b32_e32 v81, 64, v131
	v_xor_b32_e32 v86, 0x320, v131
	v_add_nc_u32_e32 v255, 0, v78
	v_xor_b32_e32 v78, 0x2d0, v131
	v_add_nc_u32_e32 v116, 0, v46
	v_xor_b32_e32 v79, 0x1b0, v79
	v_add_nc_u32_e32 v140, 0, v86
	v_xor_b32_e32 v102, 0x90, v104
	v_add_nc_u32_e32 v158, 0, v78
	v_xor_b32_e32 v103, 0x120, v104
	v_add_nc_u32_e32 v253, 0, v79
	v_xor_b32_e32 v79, 0x360, v131
	.loc	1 534 24                        ; attention_backward.py:534:24
	ds_load_b128 v[150:153], v65
	ds_load_b128 v[154:157], v67
	ds_load_b128 v[161:164], v68
	ds_load_b128 v[165:168], v69
	ds_load_b128 v[169:172], v70
	ds_load_b128 v[173:176], v72
	ds_load_b128 v[190:193], v75
	ds_load_b128 v[194:197], v76
	v_xor_b32_e32 v104, 0x1b0, v104
	v_xor_b32_e32 v111, 32, v114
	v_lshl_add_u32 v108, s55, 4, v36
	v_add_nc_u32_e32 v160, 0, v79
	v_xor_b32_e32 v105, 16, v107
	v_xor_b32_e32 v106, 32, v107
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v73, 4, v21
	v_xor_b32_e32 v107, 48, v107
	v_xor_b32_e32 v87, 0x3b0, v131
	v_xor_b32_e32 v88, 16, v130
	v_xor_b32_e32 v89, 32, v130
	v_xor_b32_e32 v90, 48, v130
	v_xor_b32_e32 v91, 64, v130
	v_xor_b32_e32 v92, 0x50, v130
	v_xor_b32_e32 v115, 0x60, v130
	v_xor_b32_e32 v94, 0x70, v130
	v_xor_b32_e32 v95, 0x1040, v130
	v_xor_b32_e32 v96, 0x1050, v130
	v_xor_b32_e32 v97, 0x1060, v130
	v_xor_b32_e32 v98, 0x1070, v130
	v_xor_b32_e32 v99, 0x1010, v130
	v_xor_b32_e32 v100, 0x1020, v130
	v_xor_b32_e32 v101, 0x1030, v130
	v_mov_b32_e32 v3, v1
	v_add_nc_u32_e32 v141, 0, v87
	v_add_nc_u32_e32 v142, 0, v88
	v_add_nc_u32_e32 v143, 0, v89
	v_add_nc_u32_e32 v144, 0, v90
	v_add_nc_u32_e32 v145, 0, v91
	v_add_nc_u32_e32 v146, 0, v92
	v_add_nc_u32_e32 v147, 0, v115
	v_add_nc_u32_e32 v187, 0, v94
	v_add_nc_u32_e32 v149, 0, v98
	v_add_nc_u32_e32 v188, 0, v99
	v_add_nc_u32_e32 v43, 0, v100
	v_add_nc_u32_e32 v198, 0, v101
	s_and_b32 s47, s47, 0xffff
	s_and_b32 s49, s49, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s64, s48
	s_mov_b32 s65, s49
	s_mov_b32 s60, s46
	s_mov_b32 s61, s47
	s_mov_b32 s46, s62
	s_mov_b32 s47, s63
	.loc	1 556 26                        ; attention_backward.py:556:26
	s_waitcnt vmcnt(0)
	v_bfe_u32 v71, v23, 20, 4
	v_add_nc_u32_e32 v33, 0, v42
	scratch_store_b32 off, v40, off offset:520 ; 4-byte Folded Spill
	.loc	1 567 32                        ; attention_backward.py:567:32
	buffer_load_b128 v[38:41], v38, s[8:11], 0 offen
	v_xor_b32_e32 v42, 0x90, v109
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v44.h, 4, v23.l
	scratch_store_b32 off, v33, off offset:48 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v50
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b64 v[84:85], 24, v[22:23]
	v_add_nc_u32_e32 v50, 0, v42
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v42.h, 4, v22.l
	v_and_b16 v57.l, v44.h, 15
	scratch_store_b32 off, v33, off offset:52 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v47
	v_add_nc_u32_e32 v132, v21, v36
	v_and_b16 v54.l, v42.h, 15
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v57, 0, v57, vcc_lo
	v_add_nc_u32_e32 v47, 0, v82
	scratch_store_b32 off, v33, off offset:56 ; 4-byte Folded Spill
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v82, 24, v23
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_dual_cndmask_b32 v54, 0, v54 :: v_dual_add_nc_u32 v33, 0, v48
	v_xor_b32_e32 v48, 16, v114
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v64.h, 4, v84.l
	s_delay_alu instid0(VALU_DEP_4)
	v_lshrrev_b16 v55.l, 4, v82.l
	v_mad_u64_u32 v[112:113], null, s54, v61, v[21:22]
	scratch_store_b32 off, v33, off offset:60 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v83
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_dual_cndmask_b32 v55, 0, v55 :: v_dual_add_nc_u32 v208, 0, v80
	v_xor_b32_e32 v61, 0x120, v131
	v_add_nc_u32_e32 v46, 0, v48
	scratch_store_b32 off, v33, off offset:64 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v51
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v48, 8, v22
	v_xor_b32_e32 v80, 0x3f0, v131
	v_add_nc_u32_e32 v137, 0, v61
	v_add_nc_u32_e32 v51, 0, v81
	scratch_store_b32 off, v33, off offset:68 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v52
	v_xor_b32_e32 v52, 64, v114
	v_alignbit_b32 v81, v23, v22, 24
	v_lshrrev_b32_e32 v86, 8, v23
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v61, v23, 16, 4
	scratch_store_b32 off, v33, off offset:72 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v53
	v_xor_b32_e32 v53, 0x50, v114
	v_add_nc_u32_e32 v133, 0, v52
	v_bfe_u32 v52, v22, 16, 4
	v_add_nc_u32_e32 v93, 0, v80
	scratch_store_b32 off, v33, off offset:76 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v58
	v_xor_b32_e32 v58, 0x60, v114
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v78, -16, v52
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v42.l, v22.l, 15
	v_and_b16 v42.h, v82.l, 15
	scratch_store_b32 off, v33, off offset:80 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v59
	v_xor_b32_e32 v59, 0x70, v114
	v_add_nc_u32_e32 v186, 0, v58
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v58, 15, v22
	v_xor_b32_e32 v83, 0x160, v131
	scratch_store_b32 off, v33, off offset:84 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v135, 0, v59
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_bfe_u32 v59, v22, 20, 4
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v79, -16, v58
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v56.l, v86.l, 15
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v85, -16, v61
	v_add_nc_u32_e32 v177, 0, v83
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v83, 15, v81
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v49.h, v84.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v44.h, 4, v86.l
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v119.h, v38.l
	v_add_nc_u32_e32 v33, 0, v60
	v_xor_b32_e32 v60, 0x90, v131
	v_add_nc_u32_e32 v134, 0, v53
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v53, v22, 8, 4
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v22.l, v23.h, 15
	scratch_store_b32 off, v33, off offset:88 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v63
	v_mad_u64_u32 v[62:63], null, s55, 17, v[36:37]
	v_and_b16 v37.l, v22.h, 15
	v_add_nc_u32_e32 v136, 0, v60
	scratch_store_b32 off, v33, off offset:92 ; 4-byte Folded Spill
	v_and_b16 v22.h, v23.l, 15
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v60, v23, 24, 4
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v37.l
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v37.l, v64.h, 15
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v64.h, v39.l
	v_add_nc_u32_e32 v33, 0, v66
	v_xor_b32_e32 v66, 0x1b0, v131
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v63, v23, 8, 4
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v80, -16, v53
	.loc	1 557 25 is_stmt 0              ; attention_backward.py:557:25
	v_cndmask_b32_e64 v52, v52, v78, s1
	scratch_store_b32 off, v33, off offset:96 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v138, 0, v66
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_and_b32_e32 v66, 15, v23
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v23.l, v48.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v23.h, 4, v48.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v48, -16, v60
	v_or_b32_e32 v81, -16, v63
	v_or_b32_e32 v82, -16, v66
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v23.l
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_and_b16 v110.l, v23.h, 15
	v_xor_b32_e32 v33, 48, v114
	.loc	1 575 27                        ; attention_backward.py:575:27
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v78, v53, v80, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v42.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v80, v78
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v53, v58, v79, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v42.h
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v42, -16, v83
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v78, -16, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v79, v53
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v23, v60, v48, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v22.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v86, v23
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v58, v61, v85, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v56.l
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_and_b16 v56.l, v44.h, 15
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v23, 0, v59, vcc_lo
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v61, -16, v54
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v85, v58
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v48, v63, v81, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v22.h
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e32 v58, 0, v71, vcc_lo
	v_cndmask_b32_e32 v56, 0, v56, vcc_lo
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v59, -16, v23
	v_or_b32_e32 v63, -16, v55
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v22, v66, v82, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v49.h
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v66, -16, v58
	v_or_b32_e32 v71, -16, v56
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v81, v52
	v_cvt_f32_i32_e32 v84, v48
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v42, v83, v42, s1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v83, v22
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_dual_cndmask_b32 v22, 0, v37 :: v_dual_cndmask_b32 v37, 0, v110
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v49.h, v40.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v82, v42
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v44.h, v41.l
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v42, -16, v22
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v22
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v60, -16, v37
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v22, v22, v42, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v23
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v23, v23, v59, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v37
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v37, v37, v60, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v54
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v42, v54, v61, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v54, v42
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v59, v55, v63, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v58
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v55, v37
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_and_b32_e32 v37, 0xffff0000, v40
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v61, v59
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v58, v58, v66, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v56
	v_add_nc_u32_e32 v118, 0, v33
	v_add_nc_u32_e32 v33, 0, v95
	v_add_nc_u32_e32 v95, 0, v96
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v60, v58
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v63, v56, v71, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v57
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v56, v23
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_and_b32_e32 v23, 0xffff0000, v39
	v_add_nc_u32_e32 v96, 0, v97
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v59, v63
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v66, v57, v78, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v57, v22
	ds_store_b128 v74, v[79:82]
	ds_store_b128 v74, v[54:57] offset:128
	v_cvt_f32_i32_e32 v58, v66
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[78:81], v77
	ds_load_b128 v[54:57], v77 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v74, v[83:86]
	ds_store_b128 v74, v[58:61] offset:128
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[82:85], v77
	ds_load_b128 v[58:61], v77 offset:512
	v_add_nc_u32_e32 v22, 0, v102
	v_add_nc_u32_e32 v36, 0, v111
	scratch_store_b32 off, v22, off offset:340 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v22, 0, v103
	scratch_store_b32 off, v22, off offset:344 ; 4-byte Folded Spill
	v_dual_mul_f32 v39, v78, v119 :: v_dual_add_nc_u32 v22, 0, v104
	.loc	1 567 32                        ; attention_backward.py:567:32
	scratch_store_b32 off, v22, off offset:348 ; 4-byte Folded Spill
	v_and_b32_e32 v22, 0xffff0000, v38
	v_and_b32_e32 v38, 0xffff0000, v41
	.loc	1 575 27                        ; attention_backward.py:575:27
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v41, v80, v64 :: v_dual_mul_f32 v48, v83, v37
	v_mul_f32_e32 v42, v84, v44
	v_dual_mul_f32 v40, v79, v22 :: v_dual_mul_f32 v79, v81, v23
	v_dual_mul_f32 v81, v82, v49 :: v_dual_mul_f32 v78, v85, v38
	v_mul_f32_e32 v22, v55, v22
	v_mul_f32_e32 v82, v54, v119
	v_dual_mul_f32 v80, v56, v64 :: v_dual_mul_f32 v23, v57, v23
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v49, v58, v49
	v_dual_mul_f32 v37, v59, v37 :: v_dual_mul_f32 v44, v60, v44
	v_mul_f32_e32 v38, v61, v38
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v52, v39, 16, 1
	v_bfe_u32 v53, v40, 16, 1
	v_bfe_u32 v54, v41, 16, 1
	v_bfe_u32 v55, v79, 16, 1
	v_bfe_u32 v56, v81, 16, 1
	v_bfe_u32 v57, v48, 16, 1
	v_bfe_u32 v58, v42, 16, 1
	v_bfe_u32 v59, v78, 16, 1
	v_bfe_u32 v61, v22, 16, 1
	v_bfe_u32 v60, v82, 16, 1
	v_bfe_u32 v63, v80, 16, 1
	v_bfe_u32 v64, v23, 16, 1
	v_bfe_u32 v66, v49, 16, 1
	v_bfe_u32 v71, v37, 16, 1
	v_bfe_u32 v74, v44, 16, 1
	v_bfe_u32 v77, v38, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	v_cmp_o_f32_e64 s1, v40, v40
	v_cmp_o_f32_e64 s2, v41, v41
	v_cmp_o_f32_e64 s3, v79, v79
	v_cmp_o_f32_e64 s6, v81, v81
	v_cmp_o_f32_e64 s7, v48, v48
	v_cmp_o_f32_e64 s8, v42, v42
	v_cmp_o_f32_e64 s9, v78, v78
	v_cmp_o_f32_e64 s11, v22, v22
	v_add3_u32 v39, v39, v52, 0x7fff
	v_add3_u32 v40, v40, v53, 0x7fff
	v_add3_u32 v41, v41, v54, 0x7fff
	v_add3_u32 v79, v79, v55, 0x7fff
	v_add3_u32 v81, v81, v56, 0x7fff
	v_add3_u32 v48, v48, v57, 0x7fff
	v_add3_u32 v42, v42, v58, 0x7fff
	v_add3_u32 v56, v78, v59, 0x7fff
	v_add3_u32 v22, v22, v61, 0x7fff
	v_cmp_o_f32_e64 s10, v82, v82
	v_cmp_o_f32_e64 s12, v80, v80
	v_cmp_o_f32_e64 s13, v23, v23
	v_cmp_o_f32_e64 s14, v49, v49
	v_cmp_o_f32_e64 s15, v37, v37
	v_cmp_o_f32_e64 s16, v44, v44
	v_cmp_o_f32_e64 s17, v38, v38
	v_add3_u32 v58, v82, v60, 0x7fff
	v_add3_u32 v57, v80, v63, 0x7fff
	v_add3_u32 v23, v23, v64, 0x7fff
	v_add3_u32 v52, v49, v66, 0x7fff
	v_add3_u32 v53, v37, v71, 0x7fff
	v_add3_u32 v54, v44, v74, 0x7fff
	v_add3_u32 v55, v38, v77, 0x7fff
	v_cndmask_b16 v37.l, 0x7fff, v39.h, vcc_lo
	v_cndmask_b16 v37.h, 0x7fff, v40.h, s1
	v_cndmask_b16 v38.l, 0x7fff, v41.h, s2
	v_cndmask_b16 v38.h, 0x7fff, v79.h, s3
	v_cndmask_b16 v39.l, 0x7fff, v81.h, s6
	v_cndmask_b16 v39.h, 0x7fff, v48.h, s7
	v_cndmask_b16 v40.l, 0x7fff, v42.h, s8
	v_cndmask_b16 v40.h, 0x7fff, v56.h, s9
	v_cndmask_b16 v56.h, 0x7fff, v22.h, s11
	v_add_nc_u32_e32 v22, 0, v105
	v_cndmask_b16 v56.l, 0x7fff, v58.h, s10
	v_cndmask_b16 v57.l, 0x7fff, v57.h, s12
	v_cndmask_b16 v57.h, 0x7fff, v23.h, s13
	v_cndmask_b16 v58.l, 0x7fff, v52.h, s14
	v_cndmask_b16 v58.h, 0x7fff, v53.h, s15
	v_cndmask_b16 v59.l, 0x7fff, v54.h, s16
	v_cndmask_b16 v59.h, 0x7fff, v55.h, s17
	.loc	1 717 21 is_stmt 1              ; attention_backward.py:717:21
	scratch_store_b32 off, v22, off offset:352 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v24, v[37:40]
	ds_store_b128 v24, v[56:59] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[52:55], v65
	ds_load_b128 v[56:59], v67
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[52:55], off offset:356 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[56:59], off offset:372 ; 16-byte Folded Spill
	ds_load_b128 v[52:55], v68
	ds_load_b128 v[56:59], v69
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[52:55], off offset:388 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[56:59], off offset:404 ; 16-byte Folded Spill
	ds_load_b128 v[52:55], v70
	ds_load_b128 v[56:59], v72
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[52:55], off offset:420 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[56:59], off offset:436 ; 16-byte Folded Spill
	ds_load_b128 v[52:55], v75
	ds_load_b128 v[56:59], v76
	v_add_nc_u32_e32 v42, v21, v108
	v_add_nc_u32_e32 v49, v21, v62
	v_add_nc_u32_e32 v21, 0, v106
	v_mad_u64_u32 v[39:40], null, s54, 3, v[112:113]
	v_add_nc_u32_e32 v44, v73, v108
	v_add_nc_u32_e32 v60, v73, v62
	scratch_store_b32 off, v21, off offset:500 ; 4-byte Folded Spill
	v_dual_mov_b32 v22, v1 :: v_dual_add_nc_u32 v21, 0, v107
	v_mov_b32_e32 v23, v1
	v_dual_mov_b32 v24, v1 :: v_dual_add_nc_u32 v61, 4, v132
	scratch_store_b32 off, v21, off offset:504 ; 4-byte Folded Spill
	v_mov_b32_e32 v21, v1
	s_mov_b32 s1, s36
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[52:55], off offset:452 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_clause 0x1f                           ; 212-byte Folded Spill
	scratch_store_b128 off, v[56:59], off offset:468
	scratch_store_b32 off, v117, off offset:100
	scratch_store_b32 off, v50, off offset:104
	scratch_store_b32 off, v46, off offset:108
	scratch_store_b32 off, v36, off offset:112
	scratch_store_b32 off, v116, off offset:116
	scratch_store_b32 off, v114, off offset:120
	scratch_store_b32 off, v109, off offset:124
	scratch_store_b32 off, v131, off offset:128
	scratch_store_b32 off, v133, off offset:132
	scratch_store_b32 off, v132, off offset:136
	scratch_store_b32 off, v130, off offset:140
	scratch_store_b32 off, v136, off offset:144
	scratch_store_b32 off, v134, off offset:148
	scratch_store_b32 off, v138, off offset:152
	scratch_store_b32 off, v140, off offset:156
	scratch_store_b32 off, v142, off offset:160
	scratch_store_b32 off, v137, off offset:164
	scratch_store_b32 off, v144, off offset:168
	scratch_store_b32 off, v141, off offset:172
	scratch_store_b32 off, v143, off offset:176
	scratch_store_b32 off, v147, off offset:180
	scratch_store_b32 off, v45, off offset:184
	scratch_store_b32 off, v158, off offset:188
	scratch_store_b32 off, v160, off offset:192
	scratch_store_b32 off, v93, off offset:196
	scratch_store_b128 off, v[150:153], off offset:200
	scratch_store_b128 off, v[154:157], off offset:216
	scratch_store_b128 off, v[161:164], off offset:232
	scratch_store_b128 off, v[165:168], off offset:248
	scratch_store_b128 off, v[169:172], off offset:264
	scratch_store_b128 off, v[173:176], off offset:280
	s_clause 0x9                            ; 64-byte Folded Spill
	scratch_store_b128 off, v[190:193], off offset:296
	scratch_store_b128 off, v[194:197], off offset:312
	scratch_store_b32 off, v51, off offset:328
	scratch_store_b32 off, v177, off offset:332
	scratch_store_b32 off, v47, off offset:336
	scratch_store_b32 off, v42, off offset:484
	scratch_store_b32 off, v44, off offset:488
	scratch_store_b32 off, v49, off offset:492
	scratch_store_b32 off, v60, off offset:496
	scratch_store_b32 off, v61, off offset:508
.LBB0_1:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_2 Depth 2
	.loc	1 608 39                        ; attention_backward.py:608:39
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:512
	scratch_load_b32 v38, off, off offset:516
	.loc	1 662 34                        ; attention_backward.py:662:34
	s_or_b32 s49, s71, s1
	s_xor_b32 s48, s18, -1
	s_mov_b32 s73, 0
	.loc	1 608 39                        ; attention_backward.py:608:39
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v37, v38, v37
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v37, s49, v37
	scratch_store_b32 off, v37, off offset:16 ; 4-byte Folded Spill
.LBB0_2:                                ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_waitcnt vmcnt(1)
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[39:40], off
	scratch_store_b64 off, v[112:113], off offset:8
	.loc	1 663 37                        ; attention_backward.py:663:37
	scratch_load_b64 v[40:41], off, off     ; 8-byte Folded Reload
	v_lshl_add_u32 v39, s54, 1, v112
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_or_b32 s1, s73, s49
	v_add_nc_u32_e32 v38, s54, v112
	s_mul_i32 s2, s1, s54
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v104, s43 :: v_dual_mov_b32 v101, s40
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v39, s2, v39, 1
	v_add_lshl_u32 v37, s2, v112, 1
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v103, s42
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v38, s2, v38, 1
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v100, s39 :: v_dual_mov_b32 v99, s38
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e64 v39, 0x80000000, v39, s5
	v_cndmask_b32_e64 v37, 0x80000000, v37, s5
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v38, 0x80000000, v38, s5
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v98, s37 :: v_dual_mov_b32 v97, s36
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s1, s1, s55
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v48, v118 :: v_dual_add_nc_u32 v41, s55, v61
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v102, s41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v41, s1, v41, 2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s4
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v40, s2, v40, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v40, 0x80000000, v40, s5
	s_clause 0x3
	buffer_load_b128 v[182:185], v39, s[56:59], 0 offen
	buffer_load_b128 v[178:181], v37, s[56:59], 0 offen
	buffer_load_b128 v[105:108], v38, s[56:59], 0 offen
	buffer_load_b128 v[110:113], v40, s[56:59], 0 offen
	v_add_nc_u32_e32 v37, 0, v109
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b128 v37, v[178:181]
	s_waitcnt vmcnt(1)
	ds_store_b128 v50, v[105:108]
	ds_store_b128 v116, v[182:185]
	s_waitcnt vmcnt(0)
	ds_store_b128 v117, v[110:113]
	v_add_nc_u32_e32 v37, 0, v114
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[118:121], v118
	ds_load_b128 v[52:55], v37
	ds_load_b128 v[56:59], v46
	ds_load_b128 v[114:117], v36
	.loc	1 699 33                        ; attention_backward.py:699:33
	scratch_load_b32 v37, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v39, s1, v61, 2
	v_add_nc_u32_e32 v40, s55, v132
	v_mov_b32_e32 v50, v146
	v_mov_b32_e32 v46, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v39, 0x80000000, v39, s4
	v_add_lshl_u32 v40, s1, v40, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v40, 0x80000000, v40, s4
	.loc	1 699 33                        ; attention_backward.py:699:33
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v37, s73, v37
	v_mov_b32_e32 v36, v35
	v_mov_b32_e32 v35, v123
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[122:129], v[150:157], v[52:59], v[97:104]
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v37, 2, v37
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[52:55], v133
	ds_load_b128 v[56:59], v134
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[122:129], v[161:168], v[114:121], v[122:129]
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v38, v37, s[60:63], 0 offen
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[122:129], v[169:176], v[52:59], v[122:129]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[52:55], v186
	ds_load_b128 v[56:59], v135
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[122:129], v[190:197], v[52:59], v[122:129]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v59, s1, v42, 2
	v_mov_b32_e32 v42, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v64, 0x80000000, v59, s4
	v_add_lshl_u32 v59, s1, v44, 2
	v_mov_b32_e32 v44, v145
	v_cndmask_b32_e64 v73, 0x80000000, v59, s4
	v_add_lshl_u32 v59, s1, v49, 2
	v_mov_b32_e32 v49, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v78, 0x80000000, v59, s4
	v_add_lshl_u32 v59, s1, v60, 2
	v_cndmask_b32_e64 v87, 0x80000000, v59, s4
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v58, s72, v122, -v38
	v_fma_f32 v57, s72, v123, -v38
	v_fma_f32 v109, s72, v124, -v38
	v_fma_f32 v56, s72, v125, -v38
	v_fma_f32 v55, s72, v126, -v38
	v_fma_f32 v54, s72, v127, -v38
	v_fma_f32 v53, s72, v128, -v38
	v_fma_f32 v52, s72, v129, -v38
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v38, s1, v132, 2
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v57, v57
	v_exp_f32_e32 v56, v56
	v_exp_f32_e32 v58, v58
	v_exp_f32_e32 v55, v55
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v38, 0x80000000, v38, s4
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v59, v37, s[64:67], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_b128 v[60:63], v38, s[44:47], 0 offen
	buffer_load_b128 v[65:68], v40, s[44:47], 0 offen
	buffer_load_b128 v[69:72], v39, s[44:47], 0 offen
	buffer_load_b128 v[74:77], v41, s[44:47], 0 offen
	buffer_load_b128 v[37:40], v64, s[44:47], 0 offen
	buffer_load_b128 v[79:82], v78, s[44:47], 0 offen
	buffer_load_b128 v[83:86], v73, s[44:47], 0 offen
	buffer_load_b128 v[89:92], v87, s[44:47], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v94, 0, v131
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v56, 0, v56, s0
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v54, v54
	v_exp_f32_e32 v53, v53
	v_exp_f32_e32 v52, v52
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v54, 0, v54, s0
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(7)
	v_dual_mov_b32 v64, v60 :: v_dual_mov_b32 v87, v61
	s_waitcnt vmcnt(6)
	v_mov_b32_e32 v88, v66
	ds_store_b64 v94, v[64:65]
	ds_store_b64 v136, v[87:88]
	v_dual_mov_b32 v87, v62 :: v_dual_mov_b32 v88, v67
	s_waitcnt vmcnt(5)
	v_dual_mov_b32 v73, v69 :: v_dual_mov_b32 v64, v68
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v78, v37 :: v_dual_mov_b32 v41, v82
	ds_store_b64 v137, v[87:88]
	v_dual_mov_b32 v87, v70 :: v_dual_mov_b32 v88, v75
	ds_store_b64 v138, v[63:64]
	ds_store_b64 v45, v[73:74]
	ds_store_b64 v158, v[87:88]
	v_dual_mov_b32 v87, v71 :: v_dual_mov_b32 v88, v76
	v_dual_mov_b32 v73, v77 :: v_dual_add_nc_u32 v64, 0x800, v0
	v_mov_b32_e32 v45, v198
	ds_store_b64 v160, v[87:88]
	v_dual_mov_b32 v87, v38 :: v_dual_mov_b32 v88, v80
	ds_store_b64 v93, v[72:73]
	ds_store_b64 v51, v[78:79]
	ds_store_b64 v47, v[87:88]
	v_dual_mov_b32 v87, v39 :: v_dual_mov_b32 v88, v81
	v_mov_b32_e32 v51, v139
	v_mov_b32_e32 v93, v135
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v73, 0xc00, v0
	v_dual_mov_b32 v47, v33 :: v_dual_add_nc_u32 v78, 0x1000, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_store_b64 v177, v[87:88]
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v88, v83 :: v_dual_mov_b32 v87, v84
	ds_store_b64 v34, v[40:41]
	s_waitcnt vmcnt(0)
	ds_store_b64 v94, v[88:89] offset:512
	v_dual_mov_b32 v88, v90 :: v_dual_add_nc_u32 v41, 0, v130
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v94, 0x1c00, v0
	v_mov_b32_e32 v34, v189
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_store_b64 v139, v[87:88]
	v_dual_mov_b32 v87, v85 :: v_dual_mov_b32 v88, v91
	ds_store_b64 v140, v[87:88]
	v_dual_mov_b32 v87, v92 :: v_dual_add_nc_u32 v88, 0x1800, v0
	ds_store_b64 v141, v[86:87]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[162:165], v41
	ds_load_b128 v[114:117], v41 offset:4096
	ds_load_b128 v[174:177], v142
	ds_load_b128 v[170:173], v143
	ds_load_b128 v[166:169], v144
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v41, 0, v189
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_load_b128 v[142:145], v145
	ds_load_b128 v[138:141], v146
	ds_load_b128 v[134:137], v147
	ds_load_b128 v[130:133], v187
	ds_load_b128 v[158:161], v33
	ds_load_b128 v[154:157], v95
	ds_load_b128 v[150:153], v96
	ds_load_b128 v[146:149], v149
	ds_load_b128 v[126:129], v188
	ds_load_b128 v[122:125], v43
	ds_load_b128 v[118:121], v198
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v41, v[60:63]
	ds_store_b128 v41, v[69:72] offset:16
	ds_store_b128 v41, v[65:68] offset:256
	ds_store_b128 v41, v[74:77] offset:272
	ds_store_b128 v41, v[37:40] offset:4096
	ds_store_b128 v41, v[83:86] offset:4112
	ds_store_b128 v41, v[79:82] offset:4352
	ds_store_b128 v41, v[89:92] offset:4368
	v_add_nc_u32_e32 v41, 0x400, v0
	v_add_nc_u32_e32 v87, 0x1400, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[242:243], v41 offset1:32
	ds_load_2addr_b32 v[240:241], v41 offset0:64 offset1:96
	ds_load_2addr_b32 v[238:239], v41 offset0:128 offset1:160
	ds_load_2addr_b32 v[236:237], v41 offset0:192 offset1:224
	ds_load_2addr_b32 v[234:235], v64 offset1:32
	ds_load_2addr_b32 v[232:233], v64 offset0:64 offset1:96
	ds_load_2addr_b32 v[230:231], v64 offset0:128 offset1:160
	ds_load_2addr_b32 v[228:229], v64 offset0:192 offset1:224
	ds_load_2addr_b32 v[226:227], v73 offset1:32
	ds_load_2addr_b32 v[224:225], v73 offset0:64 offset1:96
	ds_load_2addr_b32 v[222:223], v73 offset0:128 offset1:160
	ds_load_2addr_b32 v[220:221], v73 offset0:192 offset1:224
	ds_load_2addr_b32 v[218:219], v78 offset1:32
	ds_load_2addr_b32 v[216:217], v78 offset0:64 offset1:96
	ds_load_2addr_b32 v[214:215], v78 offset0:128 offset1:160
	ds_load_2addr_b32 v[212:213], v78 offset0:192 offset1:224
	ds_load_2addr_b32 v[210:211], v87 offset1:32
	v_mov_b32_e32 v95, v208
	ds_load_2addr_b32 v[208:209], v87 offset0:64 offset1:96
	ds_load_2addr_b32 v[206:207], v87 offset0:128 offset1:160
	ds_load_2addr_b32 v[204:205], v87 offset0:192 offset1:224
	ds_load_2addr_b32 v[202:203], v88 offset1:32
	ds_load_2addr_b32 v[200:201], v88 offset0:64 offset1:96
	ds_load_2addr_b32 v[198:199], v88 offset0:128 offset1:160
	ds_load_2addr_b32 v[196:197], v88 offset0:192 offset1:224
	ds_load_2addr_b32 v[194:195], v94 offset1:32
	ds_load_2addr_b32 v[192:193], v94 offset0:64 offset1:96
	ds_load_2addr_b32 v[190:191], v94 offset0:128 offset1:160
	v_mov_b32_e32 v33, v188
	ds_load_2addr_b32 v[188:189], v94 offset0:192 offset1:224
	ds_load_2addr_b32 v[250:251], v0 offset1:32
	ds_load_2addr_b32 v[248:249], v0 offset0:64 offset1:96
	ds_load_2addr_b32 v[246:247], v0 offset0:128 offset1:160
	ds_load_2addr_b32 v[244:245], v0 offset0:192 offset1:224
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v252, v[60:63]
	ds_store_b128 v252, v[69:72] offset:16
	ds_store_b128 v252, v[65:68] offset:272
	ds_store_b128 v252, v[74:77] offset:256
	ds_store_b128 v252, v[37:40] offset:4096
	ds_store_b128 v252, v[83:86] offset:4112
	ds_store_b128 v252, v[79:82] offset:4368
	ds_store_b128 v252, v[89:92] offset:4352
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 40-byte Folded Reload
	scratch_load_b32 v37, off, off offset:20
	scratch_load_b32 v41, off, off offset:40
	scratch_load_b128 v[76:79], off, off offset:356
	scratch_load_b128 v[80:83], off, off offset:372
	v_cmp_o_f32_e64 s18, v219, v219
	v_cmp_o_f32_e64 s19, v217, v217
	v_cmp_o_f32_e64 s20, v215, v215
	v_cmp_o_f32_e64 s21, v213, v213
	v_cmp_o_f32_e64 s25, v205, v205
	v_cmp_o_f32_e64 s26, v203, v203
	v_cmp_o_f32_e64 s27, v201, v201
	v_cmp_o_f32_e64 s31, v193, v193
	v_cmp_o_f32_e64 s23, v209, v209
	v_cmp_o_f32_e64 s22, v211, v211
	v_cmp_o_f32_e64 s24, v207, v207
	v_cmp_o_f32_e64 s28, v199, v199
	v_cmp_o_f32_e64 s29, v197, v197
	v_cmp_o_f32_e64 s30, v195, v195
	v_cmp_o_f32_e64 s33, v191, v191
	v_cmp_o_f32_e64 s34, v189, v189
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v37, 0, v37
	s_waitcnt vmcnt(2)
	ds_load_b128 v[60:63], v41
	ds_load_b128 v[37:40], v37
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s6, v60, v60
	v_cmp_o_f32_e64 s7, v61, v61
	v_cmp_o_f32_e64 s8, v62, v62
	v_cmp_o_f32_e64 s9, v63, v63
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v41, v37, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_cmp_o_f32_e64 s1, v38, v38
	v_cmp_o_f32_e64 s2, v39, v39
	v_cmp_o_f32_e64 s3, v40, v40
	v_add3_u32 v41, v37, v41, 0x7fff
	v_bfe_u32 v37, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, v38, v37, 0x7fff
	v_bfe_u32 v37, v39, 16, 1
	v_add3_u32 v65, v39, v37, 0x7fff
	v_bfe_u32 v37, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v66, v40, v37, 0x7fff
	v_bfe_u32 v37, v60, 16, 1
	v_add3_u32 v67, v60, v37, 0x7fff
	v_bfe_u32 v37, v61, 16, 1
	scratch_load_b32 v60, off, off offset:48 ; 4-byte Folded Reload
	v_add3_u32 v68, v61, v37, 0x7fff
	v_bfe_u32 v37, v62, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v69, v62, v37, 0x7fff
	v_bfe_u32 v37, v63, 16, 1
	v_add3_u32 v70, v63, v37, 0x7fff
	scratch_load_b32 v37, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[60:63], v60
	s_waitcnt vmcnt(0)
	ds_load_b128 v[37:40], v37
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s14, v60, v60
	v_cmp_o_f32_e64 s15, v61, v61
	v_cmp_o_f32_e64 s16, v62, v62
	v_cmp_o_f32_e64 s17, v63, v63
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v71, v37, 16, 1
	v_cmp_o_f32_e64 s10, v37, v37
	v_cmp_o_f32_e64 s11, v38, v38
	v_cmp_o_f32_e64 s12, v39, v39
	v_cmp_o_f32_e64 s13, v40, v40
	v_add3_u32 v37, v37, v71, 0x7fff
	v_bfe_u32 v71, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v64.l, 0x7fff, v37.h, s10
	v_add3_u32 v38, v38, v71, 0x7fff
	v_bfe_u32 v71, v39, 16, 1
	scratch_load_b32 v37, off, off offset:52 ; 4-byte Folded Reload
	v_add3_u32 v39, v39, v71, 0x7fff
	v_bfe_u32 v71, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v65.l, 0x7fff, v39.h, s12
	v_add3_u32 v40, v40, v71, 0x7fff
	v_bfe_u32 v71, v60, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v71, v60, v71, 0x7fff
	v_bfe_u32 v60, v61, 16, 1
	v_cndmask_b16 v66.l, 0x7fff, v71.h, s14
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v72, v61, v60, 0x7fff
	v_bfe_u32 v60, v62, 16, 1
	v_cndmask_b16 v61.l, 0x7fff, v65.h, s2
	v_cndmask_b16 v65.h, 0x7fff, v40.h, s13
	v_cndmask_b16 v61.h, 0x7fff, v66.h, s3
	v_cndmask_b16 v66.h, 0x7fff, v72.h, s15
	v_add3_u32 v73, v62, v60, 0x7fff
	v_bfe_u32 v60, v63, 16, 1
	v_cndmask_b16 v62.l, 0x7fff, v67.h, s6
	v_cndmask_b16 v62.h, 0x7fff, v68.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v67.l, 0x7fff, v73.h, s16
	v_add3_u32 v74, v63, v60, 0x7fff
	v_cndmask_b16 v60.l, 0x7fff, v41.h, vcc_lo
	scratch_load_b32 v41, off, off offset:56 ; 4-byte Folded Reload
	v_cndmask_b16 v60.h, 0x7fff, v64.h, s1
	v_cndmask_b16 v64.h, 0x7fff, v38.h, s11
	v_cndmask_b16 v63.l, 0x7fff, v69.h, s8
	v_cndmask_b16 v63.h, 0x7fff, v70.h, s9
	v_cndmask_b16 v67.h, 0x7fff, v74.h, s17
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_wmma_f32_16x16x16_bf16 v[68:75], v[76:83], v[60:67], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(1)
	ds_load_b128 v[37:40], v37
	s_waitcnt vmcnt(0)
	ds_load_b128 v[60:63], v41
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v41, v37, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_cmp_o_f32_e64 s1, v38, v38
	v_cmp_o_f32_e64 s2, v39, v39
	v_cmp_o_f32_e64 s3, v40, v40
	v_add3_u32 v41, v37, v41, 0x7fff
	v_bfe_u32 v37, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, v38, v37, 0x7fff
	v_bfe_u32 v37, v39, 16, 1
	v_add3_u32 v65, v39, v37, 0x7fff
	v_bfe_u32 v37, v40, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v60, v60
	v_cmp_o_f32_e64 s7, v61, v61
	v_cmp_o_f32_e64 s8, v62, v62
	v_cmp_o_f32_e64 s9, v63, v63
	v_add3_u32 v66, v40, v37, 0x7fff
	v_bfe_u32 v37, v60, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v67, v60, v37, 0x7fff
	v_bfe_u32 v37, v61, 16, 1
	scratch_load_b32 v60, off, off offset:64 ; 4-byte Folded Reload
	v_add3_u32 v76, v61, v37, 0x7fff
	v_bfe_u32 v37, v62, 16, 1
	v_add3_u32 v77, v62, v37, 0x7fff
	v_bfe_u32 v37, v63, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v78, v63, v37, 0x7fff
	scratch_load_b32 v37, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[60:63], v60
	s_waitcnt vmcnt(0)
	ds_load_b128 v[37:40], v37
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s14, v60, v60
	v_cmp_o_f32_e64 s15, v61, v61
	v_cmp_o_f32_e64 s16, v62, v62
	v_cmp_o_f32_e64 s17, v63, v63
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v79, v37, 16, 1
	v_cmp_o_f32_e64 s10, v37, v37
	v_cmp_o_f32_e64 s11, v38, v38
	v_cmp_o_f32_e64 s12, v39, v39
	v_cmp_o_f32_e64 s13, v40, v40
	v_add3_u32 v37, v37, v79, 0x7fff
	v_bfe_u32 v79, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v64.l, 0x7fff, v37.h, s10
	v_add3_u32 v38, v38, v79, 0x7fff
	v_bfe_u32 v79, v39, 16, 1
	scratch_load_b32 v37, off, off offset:68 ; 4-byte Folded Reload
	v_add3_u32 v39, v39, v79, 0x7fff
	v_bfe_u32 v79, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v65.l, 0x7fff, v39.h, s12
	v_add3_u32 v40, v40, v79, 0x7fff
	v_bfe_u32 v79, v60, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v79, v60, v79, 0x7fff
	v_bfe_u32 v60, v61, 16, 1
	v_cndmask_b16 v66.l, 0x7fff, v79.h, s14
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v80, v61, v60, 0x7fff
	v_bfe_u32 v60, v62, 16, 1
	v_cndmask_b16 v61.h, 0x7fff, v66.h, s3
	v_cndmask_b16 v61.l, 0x7fff, v65.h, s2
	v_cndmask_b16 v65.h, 0x7fff, v40.h, s13
	v_cndmask_b16 v66.h, 0x7fff, v80.h, s15
	v_add3_u32 v81, v62, v60, 0x7fff
	v_bfe_u32 v60, v63, 16, 1
	v_cndmask_b16 v62.l, 0x7fff, v67.h, s6
	v_cndmask_b16 v62.h, 0x7fff, v76.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v67.l, 0x7fff, v81.h, s16
	v_add3_u32 v82, v63, v60, 0x7fff
	v_cndmask_b16 v60.l, 0x7fff, v41.h, vcc_lo
	v_cndmask_b16 v63.l, 0x7fff, v77.h, s8
	v_cndmask_b16 v63.h, 0x7fff, v78.h, s9
	scratch_load_b32 v41, off, off offset:72 ; 4-byte Folded Reload
	v_cndmask_b16 v67.h, 0x7fff, v82.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[76:79], off, off offset:388
	scratch_load_b128 v[80:83], off, off offset:404
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v60.h, 0x7fff, v64.h, s1
	v_cndmask_b16 v64.h, 0x7fff, v38.h, s11
	s_waitcnt vmcnt(3)
	ds_load_b128 v[37:40], v37
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[68:75], v[76:83], v[60:67], v[68:75]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[60:63], v41
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v41, v37, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_cmp_o_f32_e64 s1, v38, v38
	v_cmp_o_f32_e64 s2, v39, v39
	v_cmp_o_f32_e64 s3, v40, v40
	v_add3_u32 v41, v37, v41, 0x7fff
	v_bfe_u32 v37, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, v38, v37, 0x7fff
	v_bfe_u32 v37, v39, 16, 1
	v_add3_u32 v65, v39, v37, 0x7fff
	v_bfe_u32 v37, v40, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v60, v60
	v_cmp_o_f32_e64 s7, v61, v61
	v_cmp_o_f32_e64 s8, v62, v62
	v_cmp_o_f32_e64 s9, v63, v63
	v_add3_u32 v66, v40, v37, 0x7fff
	v_bfe_u32 v37, v60, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v67, v60, v37, 0x7fff
	v_bfe_u32 v37, v61, 16, 1
	scratch_load_b32 v60, off, off offset:80 ; 4-byte Folded Reload
	v_add3_u32 v76, v61, v37, 0x7fff
	v_bfe_u32 v37, v62, 16, 1
	v_add3_u32 v77, v62, v37, 0x7fff
	v_bfe_u32 v37, v63, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v78, v63, v37, 0x7fff
	scratch_load_b32 v37, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[60:63], v60
	s_waitcnt vmcnt(0)
	ds_load_b128 v[37:40], v37
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s14, v60, v60
	v_cmp_o_f32_e64 s15, v61, v61
	v_cmp_o_f32_e64 s16, v62, v62
	v_cmp_o_f32_e64 s17, v63, v63
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v79, v37, 16, 1
	v_cmp_o_f32_e64 s10, v37, v37
	v_cmp_o_f32_e64 s11, v38, v38
	v_cmp_o_f32_e64 s12, v39, v39
	v_cmp_o_f32_e64 s13, v40, v40
	v_add3_u32 v37, v37, v79, 0x7fff
	v_bfe_u32 v79, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v64.l, 0x7fff, v37.h, s10
	v_add3_u32 v38, v38, v79, 0x7fff
	v_bfe_u32 v79, v39, 16, 1
	scratch_load_b32 v37, off, off offset:84 ; 4-byte Folded Reload
	v_add3_u32 v39, v39, v79, 0x7fff
	v_bfe_u32 v79, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v65.l, 0x7fff, v39.h, s12
	v_add3_u32 v40, v40, v79, 0x7fff
	v_bfe_u32 v79, v60, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v79, v60, v79, 0x7fff
	v_bfe_u32 v60, v61, 16, 1
	v_cndmask_b16 v66.l, 0x7fff, v79.h, s14
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v80, v61, v60, 0x7fff
	v_bfe_u32 v60, v62, 16, 1
	v_cndmask_b16 v61.h, 0x7fff, v66.h, s3
	v_cndmask_b16 v61.l, 0x7fff, v65.h, s2
	v_cndmask_b16 v65.h, 0x7fff, v40.h, s13
	v_cndmask_b16 v66.h, 0x7fff, v80.h, s15
	v_add3_u32 v81, v62, v60, 0x7fff
	v_bfe_u32 v60, v63, 16, 1
	v_cndmask_b16 v62.l, 0x7fff, v67.h, s6
	v_cndmask_b16 v62.h, 0x7fff, v76.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v67.l, 0x7fff, v81.h, s16
	v_add3_u32 v82, v63, v60, 0x7fff
	v_cndmask_b16 v60.l, 0x7fff, v41.h, vcc_lo
	v_cndmask_b16 v63.l, 0x7fff, v77.h, s8
	v_cndmask_b16 v63.h, 0x7fff, v78.h, s9
	scratch_load_b32 v41, off, off offset:88 ; 4-byte Folded Reload
	v_cndmask_b16 v67.h, 0x7fff, v82.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[76:79], off, off offset:420
	scratch_load_b128 v[80:83], off, off offset:436
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v60.h, 0x7fff, v64.h, s1
	v_cndmask_b16 v64.h, 0x7fff, v38.h, s11
	s_waitcnt vmcnt(3)
	ds_load_b128 v[37:40], v37
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[68:75], v[76:83], v[60:67], v[68:75]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[60:63], v41
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v41, v37, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_cmp_o_f32_e64 s1, v38, v38
	v_cmp_o_f32_e64 s2, v39, v39
	v_cmp_o_f32_e64 s3, v40, v40
	v_add3_u32 v41, v37, v41, 0x7fff
	v_bfe_u32 v37, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, v38, v37, 0x7fff
	v_bfe_u32 v37, v39, 16, 1
	v_add3_u32 v65, v39, v37, 0x7fff
	v_bfe_u32 v37, v40, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v60, v60
	v_cmp_o_f32_e64 s7, v61, v61
	v_cmp_o_f32_e64 s8, v62, v62
	v_cmp_o_f32_e64 s9, v63, v63
	v_add3_u32 v66, v40, v37, 0x7fff
	v_bfe_u32 v37, v60, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v67, v60, v37, 0x7fff
	v_bfe_u32 v37, v61, 16, 1
	scratch_load_b32 v60, off, off offset:96 ; 4-byte Folded Reload
	v_add3_u32 v76, v61, v37, 0x7fff
	v_bfe_u32 v37, v62, 16, 1
	v_add3_u32 v77, v62, v37, 0x7fff
	v_bfe_u32 v37, v63, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v78, v63, v37, 0x7fff
	scratch_load_b32 v37, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[60:63], v60
	s_waitcnt vmcnt(0)
	ds_load_b128 v[37:40], v37
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s14, v60, v60
	v_cmp_o_f32_e64 s15, v61, v61
	v_cmp_o_f32_e64 s16, v62, v62
	v_cmp_o_f32_e64 s17, v63, v63
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v79, v37, 16, 1
	v_cmp_o_f32_e64 s10, v37, v37
	v_cmp_o_f32_e64 s11, v38, v38
	v_cmp_o_f32_e64 s12, v39, v39
	v_cmp_o_f32_e64 s13, v40, v40
	v_add3_u32 v37, v37, v79, 0x7fff
	v_bfe_u32 v79, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v64.l, 0x7fff, v37.h, s10
	v_add3_u32 v38, v38, v79, 0x7fff
	v_bfe_u32 v79, v39, 16, 1
	v_cmp_o_f32_e64 s10, v218, v218
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v39, v39, v79, 0x7fff
	v_bfe_u32 v79, v40, 16, 1
	v_cndmask_b16 v65.l, 0x7fff, v39.h, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v40, v40, v79, 0x7fff
	v_bfe_u32 v79, v60, 16, 1
	v_cmp_o_f32_e64 s12, v210, v210
	v_add3_u32 v79, v60, v79, 0x7fff
	v_bfe_u32 v60, v61, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v66.l, 0x7fff, v79.h, s14
	v_add3_u32 v80, v61, v60, 0x7fff
	v_bfe_u32 v60, v62, 16, 1
	v_cndmask_b16 v61.h, 0x7fff, v66.h, s3
	v_cndmask_b16 v61.l, 0x7fff, v65.h, s2
	v_cndmask_b16 v65.h, 0x7fff, v40.h, s13
	v_cndmask_b16 v66.h, 0x7fff, v80.h, s15
	v_add3_u32 v81, v62, v60, 0x7fff
	v_bfe_u32 v60, v63, 16, 1
	v_cndmask_b16 v62.l, 0x7fff, v67.h, s6
	v_cndmask_b16 v62.h, 0x7fff, v76.h, s7
	v_cmp_o_f32_e64 s13, v206, v206
	v_cndmask_b16 v67.l, 0x7fff, v81.h, s16
	v_add3_u32 v82, v63, v60, 0x7fff
	v_cndmask_b16 v63.l, 0x7fff, v77.h, s8
	v_cndmask_b16 v63.h, 0x7fff, v78.h, s9
	v_cndmask_b16 v60.l, 0x7fff, v41.h, vcc_lo
	v_cndmask_b16 v60.h, 0x7fff, v64.h, s1
	v_cndmask_b16 v67.h, 0x7fff, v82.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[76:79], off, off offset:452
	scratch_load_b128 v[80:83], off, off offset:468
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v64.h, 0x7fff, v38.h, s11
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s11, v214, v214
	v_cmp_o_f32_e64 s14, v202, v202
	v_cmp_o_f32_e64 s16, v194, v194
	v_cmp_o_f32_e64 s15, v198, v198
	v_cmp_o_f32_e64 s17, v190, v190
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[68:75], v[76:83], v[60:67], v[68:75]
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v60, 0, v57, s0
	v_cndmask_b32_e64 v77, 0, v58, s0
	v_cndmask_b32_e64 v78, 0, v55, s0
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v79, v194, 16, 1
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v38, v69, v59
	v_sub_f32_e32 v40, v71, v59
	v_sub_f32_e32 v39, v70, v59
	v_sub_f32_e32 v61, v73, v59
	v_sub_f32_e32 v62, v74, v59
	.loc	1 720 30 is_stmt 0              ; attention_backward.py:720:30
	v_mul_f32_e32 v38, v60, v38
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v37, v68, v59
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v40, v56, v40
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v41, v72, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_sub_f32 v59, v75, v59 :: v_dual_mul_f32 v38, s69, v38
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_dual_mul_f32 v37, v77, v37 :: v_dual_mul_f32 v40, s69, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v41, v78, v41
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v79, v194, v79, 0x7fff
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v57, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 721 38 is_stmt 0              ; attention_backward.py:721:38
	v_mul_f32_e32 v37, s69, v37
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cmp_o_f32_e64 s1, v38, v38
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v41, s69, v41
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cmp_o_f32_e64 s3, v40, v40
	v_add3_u32 v38, v38, v57, 0x7fff
	v_bfe_u32 v58, v37, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_bfe_u32 v55, v41, 16, 1
	v_cmp_o_f32_e64 s6, v41, v41
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v57, v109
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v37, v37, v58, 0x7fff
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e64 v38.l, v182.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v41, v41, v55, 0x7fff
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v55, v54, v61
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v80, v190, 16, 1
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v37.l, 0x7fff, v37.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v77, v77
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v37.h, 0x7fff, v41.h, s6
	.loc	1 722 33                        ; attention_backward.py:722:33
	scratch_load_b32 v41, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v57, 0, v57, s0
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v55, s69, v55
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s6, v56, v56
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v79.h, 0x7fff, v79.h, s16
	v_add3_u32 v80, v190, v80, 0x7fff
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v39, v57, v39
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cmp_o_f32_e64 s7, v55, v55
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s16, v223, v223
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v80.h, 0x7fff, v80.h, s17
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v39, s69, v39
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s17, v221, v221
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v58, v39, 16, 1
	v_cmp_o_f32_e64 s2, v39, v39
	v_add3_u32 v39, v39, v58, 0x7fff
	v_bfe_u32 v58, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v40, v40, v58, 0x7fff
	v_bfe_u32 v58, v55, 16, 1
	v_add3_u32 v61, v55, v58, 0x7fff
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v55, 0, v53, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v53, v55, v62
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v53, s69, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v58, v53, 16, 1
	v_cmp_o_f32_e64 s8, v53, v53
	v_add3_u32 v53, v53, v58, 0x7fff
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v58, 0, v52, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v52, v58, v59
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v52, s69, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v59, v52, 16, 1
	v_cmp_o_f32_e64 s9, v52, v52
	v_add3_u32 v52, v52, v59, 0x7fff
	.loc	1 663 37 is_stmt 1              ; attention_backward.py:663:37
	v_mov_b16_e32 v52.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v82.l, v52.l
	v_mov_b16_e32 v79.l, v52.l
	v_mov_b16_e32 v85.l, v52.l
	v_mov_b16_e64 v190.l, v52.l
	v_mov_b16_e64 v194.l, v52.l
	v_mov_b16_e32 v81.l, v52.l
	v_mov_b16_e32 v83.l, v52.l
	v_mov_b16_e32 v84.l, v52.l
	v_mov_b16_e32 v86.l, v52.l
	v_mov_b16_e32 v80.l, v52.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v59, 0, v41
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v41, v55, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v59, v37
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s1
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v59, v37 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v37.h, 0x7fff, v61.h, s7
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e32 v38.h, v110.l
	v_mov_b16_e64 v110.l, v182.h
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v254, v37
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v37.l, 0x7fff, v39.h, s2
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v254, v37 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v37.h, 0x7fff, v53.h, s8
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s1, v78, v78
	v_cmp_o_f32_e64 s2, v60, v60
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v255, v37
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v37.l, 0x7fff, v40.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v255, v37 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v37.h, 0x7fff, v52.h, s9
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v253, v37
	ds_store_b16_d16_hi v253, v37 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v39, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e32 v37.h, v105.l
	v_mov_b16_e64 v105.l, v178.h
	v_mov_b16_e64 v37.l, v178.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v54, v54
	v_bfe_u32 v40, v56, 16, 1
	v_cmp_o_f32_e64 s7, v55, v55
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b32_e32 v109, v105
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v41, v55, v41, 0x7fff
	v_cmp_o_f32_e64 s8, v58, v58
	v_add3_u32 v40, v56, v40, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v40.l, v52.l
	v_mov_b16_e32 v41.l, v52.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s7
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s9, v222, v222
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s6
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s7, v230, v230
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v53, 0, v39
	ds_load_b128 v[61:64], v53
	ds_load_b128 v[65:68], v95
	ds_load_b128 v[69:72], v36
	ds_load_b128 v[73:76], v35
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v39, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, 0, v39
	ds_store_2addr_b64 v39, v[37:38], v[109:110] offset1:8
	scratch_load_b32 v39, off, off offset:340 ; 4-byte Folded Reload
	v_mov_b16_e32 v37.h, v106.l
	v_mov_b16_e64 v106.l, v179.h
	v_mov_b16_e64 v38.l, v183.l
	v_mov_b16_e32 v38.h, v111.l
	v_mov_b16_e64 v37.l, v179.l
	v_mov_b16_e64 v111.l, v183.h
	v_mov_b32_e32 v110, v106
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v39, v[37:38], v[110:111] offset1:8
	scratch_load_b32 v39, off, off offset:344 ; 4-byte Folded Reload
	v_mov_b16_e32 v37.h, v107.l
	v_mov_b16_e64 v107.l, v180.h
	v_mov_b16_e64 v38.l, v184.l
	v_mov_b16_e32 v38.h, v112.l
	v_mov_b16_e64 v37.l, v180.l
	v_mov_b16_e64 v112.l, v184.h
	v_mov_b32_e32 v111, v107
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v39, v[37:38], v[111:112] offset1:8
	scratch_load_b32 v39, off, off offset:348 ; 4-byte Folded Reload
	v_mov_b16_e32 v38.h, v113.l
	v_mov_b16_e64 v113.l, v185.h
	v_mov_b16_e64 v38.l, v185.l
	v_mov_b16_e64 v37.l, v181.l
	v_mov_b16_e32 v37.h, v108.l
	v_mov_b16_e64 v108.l, v181.h
	v_mov_b32_e32 v109, v113
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v185, v203, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v185, v203, v185, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v185.l, v52.l
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v39, v[37:38], v[108:109] offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:32
	scratch_load_b32 v38, off, off offset:352
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v37, 0, v37
	s_waitcnt vmcnt(0)
	ds_load_b128 v[101:104], v38
	ds_load_b128 v[97:100], v37
	ds_load_b128 v[105:108], v37 offset:2048
	ds_load_b128 v[109:112], v38 offset:2048
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:504
	scratch_load_b32 v37, off, off offset:500
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[97:104], v[61:68], v[25:32]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[105:112], v[61:68], v[17:24]
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	ds_load_b128 v[61:64], v37
	ds_load_b128 v[97:100], v37 offset:2048
	ds_load_b128 v[101:104], v38 offset:2048
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v37, v77, 16, 1
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[65:68], v38
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v37, v77, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v52.h, 0x7fff, v37.h, vcc_lo
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v37, v77, v52
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e32 v77.l, v52.l
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[17:24], v[97:104], v[69:76], v[17:24]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v38, v37, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[61:68], v[69:76], v[25:32]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e32 v63.l, v52.l
	v_mov_b16_e32 v76.l, v52.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v61, v37, v38, 0x7fff
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_bfe_u32 v37, v78, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v70.l, v52.l
	v_mov_b16_e32 v73.l, v52.l
	v_mov_b16_e32 v61.l, v52.l
	v_mov_b16_e32 v64.l, v52.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v37, v78, v37, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v65.l, v52.l
	v_mov_b16_e32 v66.l, v52.l
	v_mov_b16_e32 v67.l, v52.l
	v_mov_b16_e32 v68.l, v52.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v63.h, 0x7fff, v37.h, s1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v69.l, v52.l
	v_mov_b16_e32 v71.l, v52.l
	v_mov_b16_e32 v72.l, v52.l
	v_mov_b16_e32 v74.l, v52.l
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v37, v78, v63
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v78, v198, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v75.l, v52.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v38, v37, 16, 1
	v_cmp_o_f32_e64 s1, v37, v37
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v78, v198, v78, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v198.l, v52.l
	v_mov_b16_e32 v78.l, v52.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v62, v37, v38, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v37, v60, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v62.l, v52.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v78.h, 0x7fff, v78.h, s15
	v_cmp_o_f32_e64 s15, v225, v225
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v37, v60, v37, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v37.l, v52.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s2
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v59, v63 offset:512
	ds_store_b16_d16_hi v254, v37
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v38, v60, v37
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v37, v57, 16, 1
	v_bfe_u32 v60, v58, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v39, v38, 16, 1
	v_cmp_o_f32_e64 s2, v38, v38
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v37, v57, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v60, v58, v60, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v37.l, 0x7fff, v61.h, vcc_lo
	v_add3_u32 v38, v38, v39, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v39, v54, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v248, v248
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v77.h, 0x7fff, v60.h, s8
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s8, v226, v226
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v60.l, v52.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v39, v54, v39, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v39.l, v52.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s3
	v_cmp_o_f32_e64 s3, v57, v57
	v_cndmask_b16 v76.h, 0x7fff, v37.h, s3
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v37.h, 0x7fff, v62.h, s1
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v59, v52
	ds_store_b16_d16_hi v254, v39 offset:512
	ds_store_b16_d16_hi v255, v76
	ds_store_b16_d16_hi v255, v41 offset:512
	ds_store_b16_d16_hi v253, v40
	ds_store_b16_d16_hi v253, v77 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[105:108], v53
	ds_load_b128 v[109:112], v95
	ds_load_b128 v[97:100], v36
	ds_load_b128 v[101:104], v35
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v59, v37
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s2
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v38, v248, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v59, v37 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v59, v244, 16, 1
	v_cmp_o_f32_e64 s1, v244, v244
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v40, v56, v40
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v38, v248, v38, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v41, v55, v41
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v59, v244, v59, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v39, v54, v39
	v_sub_f32_e32 v54, v58, v77
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v60.h, 0x7fff, v38.h, vcc_lo
	v_bfe_u32 v38, v240, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v240, v240
	v_cndmask_b16 v61.h, 0x7fff, v59.h, s1
	v_bfe_u32 v59, v212, 16, 1
	v_cmp_o_f32_e64 s1, v212, v212
	v_add3_u32 v38, v240, v38, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s2, v39, v39
	v_cmp_o_f32_e64 s3, v41, v41
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v59, v212, v59, 0x7fff
	v_bfe_u32 v56, v222, 16, 1
	v_cndmask_b16 v62.h, 0x7fff, v38.h, vcc_lo
	v_bfe_u32 v38, v236, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v236, v236
	v_cndmask_b16 v69.h, 0x7fff, v59.h, s1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s1, v40, v40
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v92, v175, v62
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v38, v236, v38, 0x7fff
	v_bfe_u32 v175, v205, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s6, v54, v54
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v56, v222, v56, 0x7fff
	v_bfe_u32 v58, v214, 16, 1
	v_cndmask_b16 v63.h, 0x7fff, v38.h, vcc_lo
	v_bfe_u32 v38, v232, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v232, v232
	v_bfe_u32 v77, v202, 16, 1
	v_add3_u32 v175, v205, v175, 0x7fff
	v_add3_u32 v58, v214, v58, 0x7fff
	v_add3_u32 v38, v232, v38, 0x7fff
	v_cndmask_b16 v83.h, 0x7fff, v56.h, s9
	v_add3_u32 v77, v202, v77, 0x7fff
	v_bfe_u32 v56, v249, 16, 1
	v_bfe_u32 v59, v210, 16, 1
	v_cndmask_b16 v64.h, 0x7fff, v38.h, vcc_lo
	v_bfe_u32 v38, v228, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v228, v228
	v_cndmask_b16 v85.h, 0x7fff, v58.h, s11
	v_add3_u32 v56, v249, v56, 0x7fff
	v_bfe_u32 v58, v247, 16, 1
	v_add3_u32 v38, v228, v38, 0x7fff
	v_add3_u32 v59, v210, v59, 0x7fff
	v_cndmask_b16 v77.h, 0x7fff, v77.h, s14
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v91, v177, v63
	v_sub_f32_e32 v94, v165, v61
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v65.h, 0x7fff, v38.h, vcc_lo
	v_bfe_u32 v38, v224, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v224, v224
	v_add3_u32 v58, v247, v58, 0x7fff
	v_cmp_o_f32_e64 s14, v227, v227
	v_bfe_u32 v165, v215, 16, 1
	v_add3_u32 v38, v224, v38, 0x7fff
	v_cndmask_b16 v86.h, 0x7fff, v59.h, s12
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v90, v171, v64
	v_mov_b32_e32 v210, v96
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v165, v215, v165, 0x7fff
	v_cndmask_b16 v66.h, 0x7fff, v38.h, vcc_lo
	v_bfe_u32 v38, v220, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v220, v220
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v165.l, v52.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v165.h, 0x7fff, v165.h, s20
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v88, v167, v66
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v38, v220, v38, 0x7fff
	v_bfe_u32 v167, v213, 16, 1
	v_bfe_u32 v171, v209, 16, 1
	v_cmp_o_f32_e64 s9, v237, v237
	v_cmp_o_f32_e64 s11, v233, v233
	v_cndmask_b16 v67.h, 0x7fff, v38.h, vcc_lo
	v_bfe_u32 v38, v216, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v216, v216
	v_cmp_o_f32_e64 s12, v231, v231
	v_add3_u32 v167, v213, v167, 0x7fff
	v_add3_u32 v171, v209, v171, 0x7fff
	v_add3_u32 v38, v216, v38, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v171.l, v52.l
	v_mov_b16_e64 v167.l, v52.l
	v_mov_b16_e32 v77.l, v52.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v198.h, 0x7fff, v171.h, s23
	v_cndmask_b16 v68.h, 0x7fff, v38.h, vcc_lo
	v_bfe_u32 v38, v208, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v208, v208
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v175.l, v52.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v38, v208, v38, 0x7fff
	v_mov_b32_e32 v208, v95
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v95, v163, v60
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v163, v217, 16, 1
	v_cndmask_b16 v70.h, 0x7fff, v38.h, vcc_lo
	v_bfe_u32 v38, v204, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v204, v204
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v163, v217, v163, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v163.l, v52.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v113, v139, v70
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v38, v204, v38, 0x7fff
	v_bfe_u32 v139, v225, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v70.l, v86.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v71.h, 0x7fff, v38.h, vcc_lo
	v_bfe_u32 v38, v200, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v200, v200
	v_add3_u32 v139, v225, v139, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v139.l, v52.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v96, v141, v71
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v38, v200, v38, 0x7fff
	v_bfe_u32 v141, v223, 16, 1
	v_cndmask_b16 v194.h, 0x7fff, v139.h, s15
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s15, v88, v88
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v72.h, 0x7fff, v38.h, vcc_lo
	v_bfe_u32 v38, v196, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v196, v196
	v_add3_u32 v141, v223, v141, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v141.l, v52.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v59, v135, v72
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v38, v196, v38, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v72.l, v77.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v135, v229, 16, 1
	v_cndmask_b16 v196.h, 0x7fff, v163.h, s19
	v_cndmask_b16 v141.h, 0x7fff, v141.h, s16
	v_cndmask_b16 v73.h, 0x7fff, v38.h, vcc_lo
	v_bfe_u32 v38, v192, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v192, v192
	v_add3_u32 v135, v229, v135, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v196.l, v52.l
	v_mov_b16_e64 v135.l, v52.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v38, v192, v38, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v192.l, v52.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v115, v115, v196
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v74.h, 0x7fff, v38.h, vcc_lo
	v_bfe_u32 v38, v188, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v188, v188
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v38, v188, v38, 0x7fff
	v_bfe_u32 v188, v201, 16, 1
	v_cndmask_b16 v75.h, 0x7fff, v38.h, vcc_lo
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v38, v57, v76
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v200, v201, v188, 0x7fff
	v_bfe_u32 v188, v199, 16, 1
	v_bfe_u32 v57, v218, 16, 1
	v_bfe_u32 v76, v206, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v55, v38, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v204, v199, v188, 0x7fff
	v_bfe_u32 v188, v197, 16, 1
	v_add3_u32 v57, v218, v57, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v38, v38, v55, 0x7fff
	v_bfe_u32 v55, v40, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v76, v206, v76, 0x7fff
	v_add3_u32 v201, v197, v188, 0x7fff
	v_bfe_u32 v188, v195, 16, 1
	v_cndmask_b16 v84.h, 0x7fff, v57.h, s10
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v40, v40, v55, 0x7fff
	v_bfe_u32 v55, v39, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v76.h, 0x7fff, v76.h, s13
	v_add3_u32 v205, v195, v188, 0x7fff
	v_bfe_u32 v188, v193, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v76.l, v52.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v39, v39, v55, 0x7fff
	v_bfe_u32 v55, v41, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v57, v137, v73
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v202, v193, v188, 0x7fff
	v_bfe_u32 v188, v191, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s2
	v_add3_u32 v41, v41, v55, 0x7fff
	v_bfe_u32 v55, v54, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v254, v37
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v37.l, 0x7fff, v38.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v254, v37 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v37.h, 0x7fff, v41.h, s3
	v_add3_u32 v54, v54, v55, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v38, v246, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v255, v37
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v37.l, 0x7fff, v40.h, s1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v255, v37 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v37.h, 0x7fff, v54.h, s6
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v253, v37
	ds_store_b16_d16_hi v253, v37 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s1, v246, v246
	v_bfe_u32 v37, v250, 16, 1
	v_add3_u32 v38, v246, v38, 0x7fff
	v_bfe_u32 v39, v242, 16, 1
	v_bfe_u32 v40, v238, 16, 1
	v_bfe_u32 v41, v234, 16, 1
	v_bfe_u32 v54, v230, 16, 1
	v_bfe_u32 v55, v226, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v250, v250
	v_cmp_o_f32_e64 s2, v242, v242
	v_cmp_o_f32_e64 s3, v238, v238
	v_cmp_o_f32_e64 s6, v234, v234
	v_add3_u32 v37, v250, v37, 0x7fff
	v_add3_u32 v39, v242, v39, 0x7fff
	v_add3_u32 v40, v238, v40, 0x7fff
	v_add3_u32 v41, v234, v41, 0x7fff
	v_add3_u32 v54, v230, v54, 0x7fff
	v_add3_u32 v55, v226, v55, 0x7fff
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s1
	v_cmp_o_f32_e64 s1, v249, v249
	v_bfe_u32 v137, v227, 16, 1
	v_add3_u32 v206, v191, v188, 0x7fff
	v_bfe_u32 v188, v189, 16, 1
	v_cndmask_b16 v202.h, 0x7fff, v202.h, s31
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v202.l, v52.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v37.h, 0x7fff, v37.h, vcc_lo
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s2
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s6
	v_cndmask_b16 v81.h, 0x7fff, v54.h, s7
	v_cndmask_b16 v82.h, 0x7fff, v55.h, s8
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s2, v247, v247
	v_add3_u32 v137, v227, v137, 0x7fff
	v_add3_u32 v203, v189, v188, 0x7fff
	v_cndmask_b16 v188.h, 0x7fff, v56.h, s1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v56, v119, v202
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_load_b128 v[177:180], v53
	ds_load_b128 v[181:184], v208
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v66.l, v82.h
	v_mov_b16_e32 v64.l, v41.h
	v_mov_b16_e32 v63.l, v40.h
	v_mov_b16_e32 v62.l, v39.h
	v_mov_b16_e32 v61.l, v38.h
	v_mov_b16_e32 v60.l, v37.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v139.h, 0x7fff, v58.h, s2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v89, v173, v65
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v65.l, v81.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v137.h, 0x7fff, v137.h, s14
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v137.l, v52.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v87, v169, v67
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e32 v67.l, v83.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v54, v133, v75
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v75.l, v80.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v55, v131, v74
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v74.l, v79.h
	v_mov_b16_e32 v73.l, v78.h
	v_mov_b16_e32 v71.l, v76.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v131, v145, v69
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v69.l, v85.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v133, v143, v68
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v68.l, v84.h
	v_wmma_f32_16x16x16_bf16 v[1:8], v[60:67], v[105:112], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v53, v251, 16, 1
	v_bfe_u32 v143, v221, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v251, v251
	v_cmp_o_f32_e64 s3, v245, v245
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[68:75], v[97:104], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v53, v251, v53, 0x7fff
	v_cmp_o_f32_e64 s6, v243, v243
	v_cmp_o_f32_e64 s7, v241, v241
	v_cmp_o_f32_e64 s8, v239, v239
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[60:67], v[177:184], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v60, v245, 16, 1
	v_bfe_u32 v61, v243, 16, 1
	v_bfe_u32 v62, v241, 16, 1
	v_bfe_u32 v63, v239, 16, 1
	v_bfe_u32 v64, v237, 16, 1
	v_bfe_u32 v65, v235, 16, 1
	v_bfe_u32 v66, v233, 16, 1
	v_bfe_u32 v67, v231, 16, 1
	v_add3_u32 v60, v245, v60, 0x7fff
	v_add3_u32 v61, v243, v61, 0x7fff
	v_add3_u32 v62, v241, v62, 0x7fff
	v_add3_u32 v63, v239, v63, 0x7fff
	v_add3_u32 v64, v237, v64, 0x7fff
	v_cmp_o_f32_e64 s10, v235, v235
	v_add3_u32 v65, v235, v65, 0x7fff
	v_add3_u32 v66, v233, v66, 0x7fff
	v_add3_u32 v67, v231, v67, 0x7fff
	v_cmp_o_f32_e64 s13, v229, v229
	v_add3_u32 v143, v221, v143, 0x7fff
	v_bfe_u32 v145, v219, 16, 1
	v_bfe_u32 v169, v211, 16, 1
	v_bfe_u32 v173, v207, 16, 1
	v_cndmask_b16 v189.h, 0x7fff, v60.h, s3
	v_cndmask_b16 v190.h, 0x7fff, v62.h, s7
	v_add3_u32 v145, v219, v145, 0x7fff
	v_add3_u32 v169, v211, v169, 0x7fff
	v_add3_u32 v173, v207, v173, 0x7fff
	v_cndmask_b16 v191.h, 0x7fff, v64.h, s9
	v_cndmask_b16 v192.h, 0x7fff, v66.h, s11
	v_cndmask_b16 v193.h, 0x7fff, v135.h, s13
	v_cndmask_b16 v195.h, 0x7fff, v143.h, s17
	v_cndmask_b16 v197.h, 0x7fff, v167.h, s21
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v188.l, v52.l
	v_mov_b16_e64 v189.l, v52.l
	v_mov_b16_e64 v191.l, v52.l
	v_mov_b16_e64 v193.l, v52.l
	v_mov_b16_e64 v195.l, v52.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v135.h, 0x7fff, v53.h, vcc_lo
	v_cndmask_b16 v143.h, 0x7fff, v61.h, s6
	v_cndmask_b16 v163.h, 0x7fff, v63.h, s8
	v_cndmask_b16 v167.h, 0x7fff, v65.h, s10
	v_cndmask_b16 v171.h, 0x7fff, v67.h, s12
	v_cndmask_b16 v199.h, 0x7fff, v175.h, s25
	v_cndmask_b16 v200.h, 0x7fff, v200.h, s27
	v_cndmask_b16 v201.h, 0x7fff, v201.h, s29
	v_cndmask_b16 v203.h, 0x7fff, v203.h, s34
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v197.l, v52.l
	v_mov_b16_e64 v199.l, v52.l
	v_mov_b16_e64 v200.l, v52.l
	v_mov_b16_e64 v201.l, v52.l
	v_mov_b16_e64 v203.l, v52.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v145.h, 0x7fff, v145.h, s18
	v_cndmask_b16 v169.h, 0x7fff, v169.h, s22
	v_cndmask_b16 v173.h, 0x7fff, v173.h, s24
	v_cndmask_b16 v175.h, 0x7fff, v185.h, s26
	v_cndmask_b16 v185.h, 0x7fff, v204.h, s28
	v_cndmask_b16 v204.h, 0x7fff, v205.h, s30
	v_cndmask_b16 v52.h, 0x7fff, v206.h, s33
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v147, v147, v194
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v194.l, v137.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v153, v153, v193
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v193.l, v171.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v151, v151, v192
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v192.l, v167.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v157, v157, v191
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v191.l, v163.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v155, v155, v190
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v190.l, v143.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v161, v161, v189
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v189.l, v139.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v159, v159, v188
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v188.l, v135.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v173.l, v52.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v149, v149, v195
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v195.l, v141.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v53, v121, v203
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v203.l, v52.h
	v_mov_b16_e64 v202.l, v204.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v58, v125, v201
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v201.l, v185.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v60, v123, v200
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v200.l, v175.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v119, v129, v199
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v199.l, v173.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v121, v127, v198
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v198.l, v169.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v117, v117, v197
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v197.l, v165.h
	v_mov_b16_e64 v196.l, v145.h
	v_wmma_f32_16x16x16_bf16 v[9:16], v[188:195], v[105:112], v[9:16]
	v_mov_b32_e32 v123, v35
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v61, v172, v81 :: v_dual_sub_f32 v62, v166, v82
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e32 v37.l, v52.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[196:203], v[97:104], v[9:16]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v38.l, v52.l
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s12, v61, v61
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v39.l, v52.l
	v_mov_b16_e32 v40.l, v52.l
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[188:195], v[177:184], v[9:16]
	ds_load_b128 v[177:180], v36
	ds_load_b128 v[181:184], v123
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v41.l, v52.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v37, v162, v37 :: v_dual_sub_f32 v38, v164, v38
	v_dual_sub_f32 v39, v174, v39 :: v_dual_sub_f32 v40, v176, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v41, v170, v41
	v_sub_f32_e32 v63, v168, v83
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v64, v37, 16, 1
	v_bfe_u32 v65, v38, 16, 1
	v_bfe_u32 v66, v39, 16, 1
	v_bfe_u32 v67, v40, 16, 1
	v_mov_b32_e32 v189, v34
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_add3_u32 v37, v37, v64, 0x7fff
	v_cmp_o_f32_e64 s2, v38, v38
	v_add3_u32 v38, v38, v65, 0x7fff
	v_bfe_u32 v65, v94, 16, 1
	v_cmp_o_f32_e64 s6, v39, v39
	v_add3_u32 v39, v39, v66, 0x7fff
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[68:75], v[177:184], v[1:8]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v69, v61, 16, 1
	v_bfe_u32 v68, v41, 16, 1
	v_bfe_u32 v66, v92, 16, 1
	v_cmp_o_f32_e64 s8, v40, v40
	v_add3_u32 v40, v40, v67, 0x7fff
	v_add3_u32 v69, v61, v69, 0x7fff
	v_bfe_u32 v61, v89, 16, 1
	v_bfe_u32 v67, v91, 16, 1
	v_cmp_o_f32_e64 s10, v41, v41
	v_add3_u32 v41, v41, v68, 0x7fff
	v_bfe_u32 v68, v90, 16, 1
	v_add3_u32 v70, v89, v61, 0x7fff
	v_bfe_u32 v61, v62, 16, 1
	v_mov_b32_e32 v34, v49
	v_bfe_u32 v64, v95, 16, 1
	v_cmp_o_f32_e64 s1, v95, v95
	v_cmp_o_f32_e64 s3, v94, v94
	v_add3_u32 v71, v62, v61, 0x7fff
	v_bfe_u32 v61, v88, 16, 1
	v_add3_u32 v64, v95, v64, 0x7fff
	v_add3_u32 v65, v94, v65, 0x7fff
	v_cmp_o_f32_e64 s7, v92, v92
	v_add3_u32 v66, v92, v66, 0x7fff
	v_add3_u32 v72, v88, v61, 0x7fff
	v_bfe_u32 v61, v63, 16, 1
	v_cmp_o_f32_e64 s9, v91, v91
	v_add3_u32 v67, v91, v67, 0x7fff
	v_cmp_o_f32_e64 s11, v90, v90
	v_add3_u32 v68, v90, v68, 0x7fff
	v_add3_u32 v73, v63, v61, 0x7fff
	v_bfe_u32 v61, v87, 16, 1
	v_cmp_o_f32_e64 s14, v62, v62
	v_cmp_o_f32_e64 s16, v63, v63
	v_cmp_o_f32_e64 s17, v87, v87
	v_cndmask_b16 v62.l, 0x7fff, v38.h, s2
	v_add3_u32 v74, v87, v61, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v38, v160, v139
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v89, v89
	v_cndmask_b16 v61.l, 0x7fff, v37.h, vcc_lo
	v_cndmask_b16 v61.h, 0x7fff, v64.h, s1
	v_cndmask_b16 v62.h, 0x7fff, v65.h, s3
	v_cndmask_b16 v63.l, 0x7fff, v39.h, s6
	v_cndmask_b16 v63.h, 0x7fff, v66.h, s7
	v_cndmask_b16 v64.l, 0x7fff, v40.h, s8
	v_cndmask_b16 v64.h, 0x7fff, v67.h, s9
	v_cndmask_b16 v65.l, 0x7fff, v41.h, s10
	v_cndmask_b16 v65.h, 0x7fff, v68.h, s11
	v_cndmask_b16 v66.l, 0x7fff, v69.h, s12
	v_cndmask_b16 v66.h, 0x7fff, v70.h, s13
	v_cndmask_b16 v67.l, 0x7fff, v71.h, s14
	v_cndmask_b16 v67.h, 0x7fff, v72.h, s15
	v_cndmask_b16 v68.l, 0x7fff, v73.h, s16
	v_cndmask_b16 v68.h, 0x7fff, v74.h, s17
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v143.l, v52.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v37, v158, v135
	v_sub_f32_e32 v40, v156, v163
	v_sub_f32_e32 v41, v150, v167
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[61:68], v[105:112], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v61, v152, v171 :: v_dual_sub_f32 v62, v146, v137
	v_sub_f32_e32 v39, v154, v143
	v_sub_f32_e32 v63, v148, v141
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v64, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_bfe_u32 v69, v61, 16, 1
	v_cmp_o_f32_e64 s12, v61, v61
	v_bfe_u32 v65, v38, 16, 1
	v_bfe_u32 v66, v39, 16, 1
	v_bfe_u32 v67, v40, 16, 1
	v_add3_u32 v69, v61, v69, 0x7fff
	v_bfe_u32 v61, v153, 16, 1
	v_bfe_u32 v68, v41, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_add3_u32 v37, v37, v64, 0x7fff
	v_bfe_u32 v64, v159, 16, 1
	v_add3_u32 v70, v153, v61, 0x7fff
	v_bfe_u32 v61, v62, 16, 1
	v_cmp_o_f32_e64 s2, v38, v38
	v_add3_u32 v38, v38, v65, 0x7fff
	v_bfe_u32 v65, v161, 16, 1
	v_cmp_o_f32_e64 s6, v39, v39
	v_add3_u32 v71, v62, v61, 0x7fff
	v_bfe_u32 v61, v147, 16, 1
	v_add3_u32 v39, v39, v66, 0x7fff
	v_bfe_u32 v66, v155, 16, 1
	v_cmp_o_f32_e64 s8, v40, v40
	v_add3_u32 v40, v40, v67, 0x7fff
	v_add3_u32 v72, v147, v61, 0x7fff
	v_bfe_u32 v61, v63, 16, 1
	v_cmp_o_f32_e64 s10, v41, v41
	v_add3_u32 v41, v41, v68, 0x7fff
	v_bfe_u32 v68, v151, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v145.l, v52.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v73, v63, v61, 0x7fff
	v_bfe_u32 v61, v149, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v169.l, v52.l
	v_mov_b16_e64 v204.l, v52.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v52, v120, v52
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v67, v157, 16, 1
	v_cmp_o_f32_e64 s1, v159, v159
	v_add3_u32 v64, v159, v64, 0x7fff
	v_cmp_o_f32_e64 s3, v161, v161
	v_add3_u32 v65, v161, v65, 0x7fff
	v_cmp_o_f32_e64 s7, v155, v155
	v_add3_u32 v66, v155, v66, 0x7fff
	v_cmp_o_f32_e64 s9, v157, v157
	v_add3_u32 v67, v157, v67, 0x7fff
	v_cmp_o_f32_e64 s11, v151, v151
	v_add3_u32 v68, v151, v68, 0x7fff
	v_cmp_o_f32_e64 s13, v153, v153
	v_cmp_o_f32_e64 s14, v62, v62
	v_cmp_o_f32_e64 s15, v147, v147
	v_cmp_o_f32_e64 s16, v63, v63
	v_cmp_o_f32_e64 s17, v149, v149
	v_add3_u32 v74, v149, v61, 0x7fff
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[196:203], v[177:184], v[9:16]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v61.l, 0x7fff, v37.h, vcc_lo
	v_cndmask_b16 v61.h, 0x7fff, v64.h, s1
	v_cndmask_b16 v62.l, 0x7fff, v38.h, s2
	v_cndmask_b16 v62.h, 0x7fff, v65.h, s3
	v_cndmask_b16 v63.l, 0x7fff, v39.h, s6
	v_cndmask_b16 v63.h, 0x7fff, v66.h, s7
	v_cndmask_b16 v64.l, 0x7fff, v40.h, s8
	v_cndmask_b16 v64.h, 0x7fff, v67.h, s9
	v_cndmask_b16 v65.l, 0x7fff, v41.h, s10
	v_cndmask_b16 v65.h, 0x7fff, v68.h, s11
	v_cndmask_b16 v66.l, 0x7fff, v69.h, s12
	v_cndmask_b16 v66.h, 0x7fff, v70.h, s13
	v_cndmask_b16 v67.l, 0x7fff, v71.h, s14
	v_cndmask_b16 v67.h, 0x7fff, v72.h, s15
	v_cndmask_b16 v68.l, 0x7fff, v73.h, s16
	v_cndmask_b16 v68.h, 0x7fff, v74.h, s17
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v41, v134, v77
	v_sub_f32_e32 v38, v144, v85
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v59, v59
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v40, v140, v76
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[61:68], v[105:112], v[9:16]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v68, v41, 16, 1
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v61, v136, v78
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s10, v41, v41
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v62, v130, v79
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v57, v57
	v_add3_u32 v41, v41, v68, 0x7fff
	v_bfe_u32 v68, v59, 16, 1
	v_cmp_o_f32_e64 s12, v61, v61
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v37, v142, v84
	v_sub_f32_e32 v39, v138, v86
	v_sub_f32_e32 v63, v132, v80
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v59, v59, v68, 0x7fff
	v_bfe_u32 v68, v61, 16, 1
	v_bfe_u32 v65, v38, 16, 1
	v_bfe_u32 v67, v40, 16, 1
	v_bfe_u32 v64, v37, 16, 1
	v_cmp_o_f32_e64 s2, v38, v38
	v_add3_u32 v68, v61, v68, 0x7fff
	v_bfe_u32 v61, v57, 16, 1
	v_add3_u32 v38, v38, v65, 0x7fff
	v_bfe_u32 v66, v39, 16, 1
	v_cmp_o_f32_e64 s8, v40, v40
	v_add3_u32 v40, v40, v67, 0x7fff
	v_add3_u32 v57, v57, v61, 0x7fff
	v_bfe_u32 v61, v62, 16, 1
	v_bfe_u32 v67, v96, 16, 1
	v_cmp_o_f32_e64 s15, v55, v55
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_add3_u32 v37, v37, v64, 0x7fff
	v_add3_u32 v69, v62, v61, 0x7fff
	v_bfe_u32 v61, v55, 16, 1
	v_cmp_o_f32_e64 s6, v39, v39
	v_add3_u32 v39, v39, v66, 0x7fff
	v_bfe_u32 v66, v113, 16, 1
	v_cmp_o_f32_e64 s9, v96, v96
	v_add3_u32 v55, v55, v61, 0x7fff
	v_bfe_u32 v61, v63, 16, 1
	v_add3_u32 v67, v96, v67, 0x7fff
	v_mov_b32_e32 v96, v210
	v_bfe_u32 v65, v131, 16, 1
	v_cmp_o_f32_e64 s14, v62, v62
	v_add3_u32 v70, v63, v61, 0x7fff
	v_bfe_u32 v61, v54, 16, 1
	v_cndmask_b16 v62.l, 0x7fff, v38.h, s2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v38, v116, v165
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v64, v133, 16, 1
	v_cmp_o_f32_e64 s1, v133, v133
	v_cmp_o_f32_e64 s3, v131, v131
	v_add3_u32 v65, v131, v65, 0x7fff
	v_cmp_o_f32_e64 s7, v113, v113
	v_add3_u32 v64, v133, v64, 0x7fff
	v_add3_u32 v66, v113, v66, 0x7fff
	v_cmp_o_f32_e64 s16, v63, v63
	v_cmp_o_f32_e64 s17, v54, v54
	v_add3_u32 v54, v54, v61, 0x7fff
	v_cndmask_b16 v61.l, 0x7fff, v37.h, vcc_lo
	v_cndmask_b16 v61.h, 0x7fff, v64.h, s1
	v_cndmask_b16 v62.h, 0x7fff, v65.h, s3
	v_cndmask_b16 v63.l, 0x7fff, v39.h, s6
	v_cndmask_b16 v63.h, 0x7fff, v66.h, s7
	v_cndmask_b16 v64.l, 0x7fff, v40.h, s8
	v_cndmask_b16 v64.h, 0x7fff, v67.h, s9
	v_cndmask_b16 v65.l, 0x7fff, v41.h, s10
	v_cndmask_b16 v65.h, 0x7fff, v59.h, s11
	v_cndmask_b16 v66.l, 0x7fff, v68.h, s12
	v_cndmask_b16 v66.h, 0x7fff, v57.h, s13
	v_cndmask_b16 v67.l, 0x7fff, v69.h, s14
	v_cndmask_b16 v67.h, 0x7fff, v55.h, s15
	v_cndmask_b16 v68.l, 0x7fff, v70.h, s16
	v_cndmask_b16 v68.h, 0x7fff, v54.h, s17
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v41, v122, v175 :: v_dual_sub_f32 v54, v124, v185
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v60, v60
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v39, v126, v169
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[61:68], v[97:104], v[1:8]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v63, v41, 16, 1
	v_cmp_o_f32_e64 s10, v41, v41
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v55, v118, v204
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s12, v54, v54
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v40, v128, v173
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v41, v41, v63, 0x7fff
	v_bfe_u32 v63, v60, 16, 1
	v_bfe_u32 v61, v39, 16, 1
	v_cmp_o_f32_e64 s13, v58, v58
	v_bfe_u32 v59, v38, 16, 1
	v_cmp_o_f32_e64 s6, v39, v39
	v_add3_u32 v60, v60, v63, 0x7fff
	v_bfe_u32 v63, v54, 16, 1
	v_add3_u32 v39, v39, v61, 0x7fff
	v_bfe_u32 v61, v121, 16, 1
	v_bfe_u32 v62, v40, 16, 1
	v_mov_b32_e32 v188, v33
	v_add3_u32 v63, v54, v63, 0x7fff
	v_bfe_u32 v54, v58, 16, 1
	v_dual_mov_b32 v198, v45 :: v_dual_mov_b32 v33, v47
	v_mov_b32_e32 v135, v93
	v_mov_b32_e32 v139, v51
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v58, v58, v54, 0x7fff
	v_bfe_u32 v54, v55, 16, 1
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v49, off, off offset:492
	scratch_load_b32 v177, off, off offset:332
	scratch_load_b32 v47, off, off offset:336
	scratch_load_b32 v51, off, off offset:328
	scratch_load_b32 v93, off, off offset:196
	scratch_load_b32 v160, off, off offset:192
	scratch_load_b32 v158, off, off offset:188
	scratch_load_b32 v45, off, off offset:184
	v_cmp_o_f32_e64 s2, v38, v38
	v_add3_u32 v38, v38, v59, 0x7fff
	v_bfe_u32 v59, v117, 16, 1
	v_add3_u32 v64, v55, v54, 0x7fff
	v_bfe_u32 v54, v56, 16, 1
	v_cmp_o_f32_e64 s7, v121, v121
	v_add3_u32 v61, v121, v61, 0x7fff
	v_cmp_o_f32_e64 s8, v40, v40
	v_add3_u32 v40, v40, v62, 0x7fff
	v_add3_u32 v65, v56, v54, 0x7fff
	v_bfe_u32 v54, v52, 16, 1
	s_clause 0x2                            ; 36-byte Folded Reload
	scratch_load_b128 v[161:164], off, off offset:232
	scratch_load_b128 v[165:168], off, off offset:248
	scratch_load_b32 v116, off, off offset:116
	v_mov_b32_e32 v35, v36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[190:193], off, off offset:296
	scratch_load_b128 v[194:197], off, off offset:312
	v_mov_b32_e32 v95, v46
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v143, off, off offset:176
	scratch_load_b32 v137, off, off offset:164
	scratch_load_b32 v147, off, off offset:180
	scratch_load_b32 v144, off, off offset:168
	scratch_load_b32 v142, off, off offset:160
	scratch_load_b32 v140, off, off offset:156
	v_mov_b32_e32 v146, v50
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[150:153], off, off offset:200
	scratch_load_b128 v[154:157], off, off offset:216
	v_mov_b32_e32 v149, v42
	s_clause 0xb                            ; 52-byte Folded Reload
	scratch_load_b32 v42, off, off offset:484
	scratch_load_b32 v141, off, off offset:172
	scratch_load_b32 v109, off, off offset:124
	scratch_load_b32 v138, off, off offset:152
	scratch_load_b32 v134, off, off offset:148
	scratch_load_b32 v136, off, off offset:144
	scratch_load_b32 v130, off, off offset:140
	scratch_load_b32 v132, off, off offset:136
	scratch_load_b32 v133, off, off offset:132
	scratch_load_b32 v131, off, off offset:128
	scratch_load_b64 v[112:113], off, off offset:8
	scratch_load_b32 v50, off, off offset:104
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v37, v114, v145
	v_mov_b32_e32 v145, v44
	s_clause 0x5                            ; 48-byte Folded Reload
	scratch_load_b32 v44, off, off offset:488
	scratch_load_b32 v114, off, off offset:120
	scratch_load_b128 v[169:172], off, off offset:264
	scratch_load_b128 v[173:176], off, off offset:280
	scratch_load_b32 v36, off, off offset:112
	scratch_load_b32 v46, off, off offset:108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v117, v117
	v_add3_u32 v59, v117, v59, 0x7fff
	scratch_load_b32 v117, off, off offset:100 ; 4-byte Folded Reload
	v_cmp_o_f32_e64 s14, v55, v55
	v_cmp_o_f32_e64 s15, v56, v56
	v_add3_u32 v66, v52, v54, 0x7fff
	v_cndmask_b16 v54.l, 0x7fff, v39.h, s6
	v_cndmask_b16 v54.h, 0x7fff, v61.h, s7
	scratch_load_b32 v61, off, off offset:508 ; 4-byte Folded Reload
	v_cndmask_b16 v55.l, 0x7fff, v40.h, s8
	scratch_load_b64 v[39:40], off, off     ; 8-byte Folded Reload
	v_cndmask_b16 v56.h, 0x7fff, v60.h, s11
	scratch_load_b32 v60, off, off offset:496 ; 4-byte Folded Reload
	v_bfe_u32 v57, v37, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_bfe_u32 v62, v119, 16, 1
	v_cmp_o_f32_e64 s16, v52, v52
	v_bfe_u32 v52, v53, 16, 1
	v_add3_u32 v37, v37, v57, 0x7fff
	v_bfe_u32 v57, v115, 16, 1
	v_cmp_o_f32_e64 s1, v115, v115
	v_cmp_o_f32_e64 s9, v119, v119
	v_add3_u32 v62, v119, v62, 0x7fff
	v_cmp_o_f32_e64 s17, v53, v53
	v_add3_u32 v57, v115, v57, 0x7fff
	v_add3_u32 v67, v53, v52, 0x7fff
	v_cndmask_b16 v52.l, 0x7fff, v37.h, vcc_lo
	v_cndmask_b16 v53.l, 0x7fff, v38.h, s2
	v_cndmask_b16 v53.h, 0x7fff, v59.h, s3
	v_cndmask_b16 v52.h, 0x7fff, v57.h, s1
	v_cndmask_b16 v55.h, 0x7fff, v62.h, s9
	v_cndmask_b16 v56.l, 0x7fff, v41.h, s10
	v_cndmask_b16 v57.l, 0x7fff, v63.h, s12
	v_cndmask_b16 v57.h, 0x7fff, v58.h, s13
	v_cndmask_b16 v58.l, 0x7fff, v64.h, s14
	v_cndmask_b16 v58.h, 0x7fff, v65.h, s15
	v_cndmask_b16 v59.l, 0x7fff, v66.h, s16
	v_cndmask_b16 v59.h, 0x7fff, v67.h, s17
	v_mov_b32_e32 v118, v48
	.loc	1 607 13 is_stmt 1              ; attention_backward.py:607:13
	s_add_i32 s1, s73, 32
	s_cmpk_lt_u32 s73, 0x7e0
	s_mov_b32 s73, s1
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[52:59], v[97:104], v[9:16]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ;   in Loop: Header=BB0_1 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	s_movk_i32 s1, 0x800
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_and_not1_b32 vcc_lo, exec_lo, s48
	s_mov_b32 s18, 0
	s_cbranch_vccnz .LBB0_1
; %bb.4:
	.loc	1 550 20                        ; attention_backward.py:550:20
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v64, off, off offset:512
	scratch_load_b32 v33, off, off offset:520
	scratch_load_b32 v34, off, off offset:516
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s5, s51, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s50
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s53, s53, 0xffff
	.loc	1 753 13                        ; attention_backward.py:753:13
	s_waitcnt vmcnt(2)
	v_mul_lo_u32 v43, s54, v64
	.loc	1 550 20                        ; attention_backward.py:550:20
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, v33, v34
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s70, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v47, 2, v33
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v49, v43, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s2, s54, v33
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v46, 6, v33
	v_or_b32_e32 v48, 4, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v50, v43, v47
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v49, v49, s35, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v45, 8, v33
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v51, v43, v48
	v_add_nc_u32_e32 v52, v43, v46
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	v_add_lshl_u32 v50, v50, s35, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v53, v43, v45
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v44, 10, v33
	v_or_b32_e32 v41, 14, v33
	v_or_b32_e32 v42, 12, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v51, v51, s35, 2
	buffer_store_b32 v25, v49, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v50, s2
	v_add_lshl_u32 v49, v52, s35, 2
	v_add_lshl_u32 v50, v53, s35, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v54, v43, v44
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v0, 32, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v55, v43, v42
	v_add_nc_u32_e32 v56, v43, v41
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v51, 0x80000000, v51, s2
	buffer_store_b32 v26, v25, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v49, s2
	v_cndmask_b32_e64 v26, 0x80000000, v50, s2
	v_add_lshl_u32 v52, v54, s35, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v40, 34, v33
	v_cmp_gt_i32_e64 s0, s55, v33
	v_cmp_gt_i32_e64 s1, s55, v0
	v_or_b32_e32 v39, 36, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s3, s54, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v27, v51, s[4:7], 0 offen
	v_add_lshl_u32 v49, v55, s35, 2
	s_clause 0x1
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	v_add_lshl_u32 v25, v56, s35, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v57, v43, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v27, 0x80000000, v52, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v58, v43, v40
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v26, 0x80000000, v49, s2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s3
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s0, vcc_lo, s0
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v59, v43, v39
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v30, v27, s[4:7], 0 offen
	v_add_lshl_u32 v27, v57, s35, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v38, 38, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v28, v58, s35, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v37, 40, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v29, v59, s35, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v36, 42, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v35, 44, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v60, v43, v38
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v61, v43, v37
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v31, v26, s[4:7], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v29, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v62, v43, v36
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x2
	buffer_store_b32 v32, v25, s[4:7], 0 offen
	buffer_store_b32 v17, v27, s[4:7], 0 offen
	buffer_store_b32 v18, v28, s[4:7], 0 offen
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_or_b32_e32 v18, s68, v64
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v34, 46, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v63, v43, v35
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v17, v60, s35, 2
	buffer_store_b32 v19, v26, s[4:7], 0 offen
	v_add_lshl_u32 v19, v61, s35, 2
	v_add_lshl_u32 v25, v62, s35, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v18, s55, v18
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v43, v43, v34
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_add_lshl_u32 v26, v63, s35, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_mov_b32 s54, s6
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v20, v17, s[4:7], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v26, s2
	v_add_lshl_u32 v20, v43, s35, 2
	s_clause 0x1
	buffer_store_b32 v21, v19, s[4:7], 0 offen
	buffer_store_b32 v22, v25, s[4:7], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v19, v18, v33, 2
	s_mov_b32 s55, s7
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v23, v17, s[4:7], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v20, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v20, v18, v47, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v24, v17, s[4:7], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v1, v19, s[52:55], 0 offen
	v_add_lshl_u32 v1, v18, v48, 2
	v_cndmask_b32_e64 v17, 0x80000000, v20, s0
	v_add_lshl_u32 v19, v18, v46, 2
	v_add_lshl_u32 v20, v18, v45, 2
	v_add_lshl_u32 v21, v18, v44, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	buffer_store_b32 v2, v17, s[52:55], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v19, s0
	v_cndmask_b32_e64 v17, 0x80000000, v20, s0
	v_cndmask_b32_e64 v19, 0x80000000, v21, s0
	buffer_store_b32 v3, v1, s[52:55], 0 offen
	v_add_lshl_u32 v1, v18, v42, 2
	s_clause 0x2
	buffer_store_b32 v4, v2, s[52:55], 0 offen
	buffer_store_b32 v5, v17, s[52:55], 0 offen
	buffer_store_b32 v6, v19, s[52:55], 0 offen
	v_add_lshl_u32 v2, v18, v41, 2
	v_add_lshl_u32 v0, v18, v0, 2
	v_add_lshl_u32 v3, v18, v40, 2
	v_add_lshl_u32 v4, v18, v39, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b32 v7, v1, s[52:55], 0 offen
	buffer_store_b32 v8, v2, s[52:55], 0 offen
	buffer_store_b32 v9, v0, s[52:55], 0 offen
	buffer_store_b32 v10, v3, s[52:55], 0 offen
	buffer_store_b32 v11, v4, s[52:55], 0 offen
	v_add_lshl_u32 v0, v18, v38, 2
	v_add_lshl_u32 v1, v18, v37, 2
	v_add_lshl_u32 v2, v18, v36, 2
	v_add_lshl_u32 v3, v18, v35, 2
	v_add_lshl_u32 v4, v18, v34, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b32 v12, v0, s[52:55], 0 offen
	buffer_store_b32 v13, v1, s[52:55], 0 offen
	buffer_store_b32 v14, v2, s[52:55], 0 offen
	buffer_store_b32 v15, v3, s[52:55], 0 offen
	buffer_store_b32 v16, v4, s[52:55], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 528
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
		.amdhsa_next_free_sgpr 74
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 74
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 528
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18940
; TotalNumSgprs: 76
; NumVgprs: 256
; ScratchSize: 528
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 76
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 528
    .sgpr_count:     76
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 131
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
