	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[18:19], s[0:1], 0x74
.Ltmp0:
	.loc	1 536 23 prologue_end           ; attention_backward.py:536:23
	v_and_b32_e32 v33, 7, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v9, 3, v0
	s_clause 0x1
	s_load_b128 s[28:31], s[0:1], 0x0
	s_load_b64 s[12:13], s[0:1], 0x10
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s47, s2, 4
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_lshlrev_b32_e32 v97, 3, v33
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v11, s47, v9
	.loc	1 533 24                        ; attention_backward.py:533:24
	s_lshl_b32 s34, s3, 11
	s_mov_b32 s11, 0x31027000
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_add_i32 s34, s34, s47
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s6, 0x800, v11
	.loc	1 541 32                        ; attention_backward.py:541:32
	s_ashr_i32 s7, s47, 1
	.loc	1 543 26                        ; attention_backward.py:543:26
	s_lshl_b32 s4, s3, 10
	.loc	1 541 32                        ; attention_backward.py:541:32
	v_or_b32_e32 v12, s7, v9
	.loc	1 545 17                        ; attention_backward.py:545:17
	s_add_i32 s7, s7, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
	v_mov_b16_e32 v17.l, 0
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[202:203], null, s18, v9, v[97:98]
	s_mul_i32 s33, s18, s34
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_cmp_gt_i32_e64 s5, s18, v97
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_and_b32 s9, s31, 0xffff
	s_mov_b32 s8, s30
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mul_lo_u32 v22, s19, v9
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s4, s19, v97
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_lshl_add_u32 v219, s18, 3, v202
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_lshl_u32 v1, v202, s33, 1
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s6, s5
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_and_b32 s13, s13, 0xffff
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_bfe_i32 s2, s2, 0x1001b
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_lshl_u32 v2, v219, s33, 1
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_and_b32 v10, 56, v0
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v157, v22, v97
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_lshr_b32 s2, s2, 28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_dual_cndmask_b32 v5, 0x80000000, v2 :: v_dual_lshlrev_b32 v188, 4, v0
	v_lshlrev_b32_e32 v34, 1, v10
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mad_u64_u32 v[9:10], null, s19, s7, v[157:158]
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_clause 0x1
	buffer_load_b128 v[1:4], v1, s[8:11], 0 offen
	buffer_load_b128 v[5:8], v5, s[8:11], 0 offen
	.loc	1 549 23                        ; attention_backward.py:549:23
	v_cmp_gt_i32_e32 vcc_lo, 0x400, v12
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v13, v188, v34
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v96.h, v17.l
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_i32 v36, v0, 4, 1
	v_bfe_u32 v54, v0, 4, 1
	.loc	1 549 22                        ; attention_backward.py:549:22
	s_and_b32 s7, vcc_lo, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v190, 0, v13
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v9, 0x80000000, v9, s7
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_bfe_i32 v38, v0, 3, 1
	s_clause 0x3
	s_load_b32 s35, s[0:1], 0x7c
	s_load_b32 s46, s[0:1], 0x9c
	s_load_b64 s[44:45], s[0:1], 0x58
	s_load_b256 s[36:43], s[0:1], 0x38
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v42.h, v17.l
	v_mov_b16_e32 v44.h, v17.l
	v_mov_b16_e32 v43.h, v17.l
	v_mov_b16_e32 v45.h, v17.l
	v_mov_b16_e32 v41.h, v17.l
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v51.l, v17.l
	v_mov_b16_e32 v53.l, v17.l
	v_mov_b16_e32 v52.l, v17.l
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v194, s47, v54
	v_lshl_add_u32 v101, s19, 4, v22
	v_lshl_add_u32 v100, s19, 3, v22
	s_lshl_b32 s57, s3, 12
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s20, 0
	s_mov_b32 s56, -1
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s58, s35, 0x3fb8aa3b
	.loc	1 603 39                        ; attention_backward.py:603:39
	s_sub_i32 s21, s47, s46
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(1)
	ds_store_b128 v190, v[1:4]
	s_waitcnt vmcnt(0)
	ds_store_b128 v190, v[5:8] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 544 28                        ; attention_backward.py:544:28
	buffer_load_b64 v[23:24], v9, s[12:15], 0 offen
	.loc	1 570 20                        ; attention_backward.py:570:20
	v_add_nc_u32_e32 v1, s2, v11
	s_load_b64 s[12:13], s[0:1], 0x28
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s2, s6, s4
	.loc	1 603 25                        ; attention_backward.py:603:25
	s_max_i32 s1, s21, 0
	s_mov_b32 s52, s40
	.loc	1 570 20                        ; attention_backward.py:570:20
	v_ashrrev_i32_e32 v1, 4, v1
	.loc	1 604 45                        ; attention_backward.py:604:45
	s_and_b32 s40, s1, 0x7fffffe0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s0, 0x800, v194
	s_mov_b32 s48, s38
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_and_b32_e32 v39, 0x370, v188
	.loc	1 568 17                        ; attention_backward.py:568:17
	v_lshl_add_u32 v1, s3, 7, v1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_and_b32_e32 v38, 0x440, v38
	v_and_b32_e32 v36, 0x440, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 568 17                        ; attention_backward.py:568:17
	v_mul_lo_u32 v1, v1, s19
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_xad_u32 v55, v38, v39, 0
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	s_cmpk_lt_i32 s21, 0x800
	s_delay_alu instid0(VALU_DEP_2)
	v_add_lshl_u32 v1, v1, v97, 1
	s_cselect_b32 s59, -1, 0
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s49, s39, 0xffff
	s_and_b32 s53, s41, 0xffff
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_and_b32 s37, s37, 0xffff
	buffer_load_b128 v[18:21], v1, s[12:15], 0 offen
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v102, 15, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v35, 16, v0
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_and_b32_e32 v37, 32, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v7, v1 :: v_dual_lshlrev_b32 v148, 5, v0
	v_dual_mov_b32 v9, v1 :: v_dual_lshlrev_b32 v0, 3, v0
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v10, v1
	v_dual_mov_b32 v12, v1 :: v_dual_lshlrev_b32 v33, 4, v33
	v_dual_mov_b32 v13, v1 :: v_dual_lshlrev_b32 v40, 4, v102
	v_dual_mov_b32 v16, v1 :: v_dual_lshlrev_b32 v47, 8, v102
	v_dual_mov_b32 v26, v1 :: v_dual_lshlrev_b32 v35, 2, v35
	v_dual_mov_b32 v27, v1 :: v_dual_lshlrev_b32 v48, 7, v37
	v_dual_mov_b32 v28, v1 :: v_dual_lshlrev_b32 v49, 1, v102
	v_dual_mov_b32 v29, v1 :: v_dual_and_b32 v0, 48, v0
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshl_or_b32 v33, v102, 7, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or3_b32 v60, v47, v48, v40
	v_or3_b32 v63, v49, v35, v37
	v_xor_b32_e32 v34, v148, v34
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_dual_mov_b32 v31, v1 :: v_dual_add_nc_u32 v56, 0, v33
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v60, off offset:64
	scratch_store_b32 off, v63, off offset:68
	v_lshl_or_b32 v66, v102, 6, v0
	scratch_store_b32 off, v34, off offset:72 ; 4-byte Folded Spill
	v_xad_u32 v103, v33, 16, 0
	v_xad_u32 v104, v33, 32, 0
	v_xad_u32 v105, v33, 48, 0
	v_xad_u32 v107, v33, 64, 0
	v_xad_u32 v85, 0x50, v33, 0
	v_xad_u32 v89, 0x60, v33, 0
	v_xad_u32 v93, 0x70, v33, 0
	v_lshl_or_b32 v87, v37, 6, v33
	v_xor_b32_e32 v0, 16, v34
	v_xor_b32_e32 v33, 0x880, v34
	v_xor_b32_e32 v34, 0x890, v34
	v_xor_b32_e32 v38, 64, v60
	v_xor_b32_e32 v39, 0x50, v60
	v_dual_mov_b32 v25, v1 :: v_dual_lshlrev_b32 v46, 3, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v32, v1 :: v_dual_add_nc_u32 v223, 0, v34
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_lshrrev_b32_e32 v65, 1, v37
	v_lshl_add_u32 v50, v37, 1, 0
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_xor_b32_e32 v36, v36, v40
	v_add3_u32 v197, 0, v37, v49
	v_xor_b32_e32 v37, 48, v60
	v_xor_b32_e32 v47, 0x80, v60
	v_dual_mov_b32 v77, v1 :: v_dual_add_nc_u32 v192, 0, v38
	v_dual_mov_b32 v78, v1 :: v_dual_add_nc_u32 v193, 0, v39
	v_dual_mov_b32 v30, v1 :: v_dual_add_nc_u32 v215, 0, v33
	v_dual_mov_b32 v76, v1 :: v_dual_add_nc_u32 v191, 0, v37
	v_add3_u32 v106, 0, v46, v36
	v_xor_b32_e32 v36, 32, v60
	v_xor_b32_e32 v48, 0x90, v60
	v_mov_b32_e32 v74, v1
	v_xor_b32_e32 v35, 16, v60
	v_xor_b32_e32 v46, 0x70, v60
	v_xor_b32_e32 v49, 0xa0, v60
	v_add_nc_u32_e32 v189, 0, v36
	v_dual_mov_b32 v73, v1 :: v_dual_add_nc_u32 v200, 0, v48
	v_dual_mov_b32 v75, v1 :: v_dual_add_nc_u32 v122, 0, v0
	v_dual_mov_b32 v79, v1 :: v_dual_add_nc_u32 v0, 0, v35
	v_add_nc_u32_e32 v196, 0, v46
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v66, off offset:76
	scratch_store_b32 off, v87, off offset:84
	scratch_store_b32 off, v0, off offset:80
	scratch_store_b32 off, v54, off offset:188
	v_lshl_add_u32 v198, v102, 2, v50
	v_xor_b32_e32 v40, 0x60, v60
	v_xor_b32_e32 v50, 0xb0, v60
	v_xor_b32_e32 v57, 0xc0, v60
	v_xor_b32_e32 v58, 0xd0, v60
	v_xor_b32_e32 v59, 0xe0, v60
	v_xor_b32_e32 v60, 0xf0, v60
	v_xor_b32_e32 v61, 0x90, v63
	v_xor_b32_e32 v62, 0x120, v63
	v_xor_b32_e32 v63, 0x1b0, v63
	v_dual_mov_b32 v80, v1 :: v_dual_add_nc_u32 v195, 0, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v220, 0, v61
	v_xor_b32_e32 v61, 16, v87
	v_xor_b32_e32 v82, 64, v87
	v_xor_b32_e32 v83, 0x50, v87
	v_xor_b32_e32 v98, 0x60, v87
	v_xor_b32_e32 v99, 0x70, v87
	v_xor_b32_e32 v67, 32, v66
	v_xor_b32_e32 v64, 16, v66
	v_xor_b32_e32 v66, 48, v66
	v_mov_b32_e32 v4, v1
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v54, 4, v97
	v_mov_b32_e32 v3, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v6, v1 :: v_dual_add_nc_u32 v225, 0, v66
	v_add_nc_u32_e32 v237, 0, v83
	v_add_nc_u32_e32 v239, v97, v100
	v_add_nc_u32_e32 v123, v54, v100
	v_add_nc_u32_e32 v121, v97, v101
	v_add_nc_u32_e32 v236, 0, v82
	v_add_nc_u32_e32 v238, 0, v98
	.loc	1 556 28                        ; attention_backward.py:556:28
	s_waitcnt vmcnt(1)
	v_lshrrev_b16 v34.l, 4, v23.l
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b64 v[38:39], 24, v[23:24]
	v_lshrrev_b32_e32 v37, 8, v23
	v_lshrrev_b32_e32 v39, 8, v24
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v33.l, v23.h, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v42.l, v34.l, 15
	v_add_nc_u32_e32 v199, 0, v47
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v47, v23, 16, 4
	v_bfe_u32 v48, v23, 8, 4
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v36.l, v37.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v34.l, 4, v37.l
	v_lshrrev_b16 v37.l, 4, v39.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v90, -16, v47
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v33.l
	.loc	1 544 28 is_stmt 1              ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v46, 24, v24
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v33.h, v23.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v35.h, 4, v24.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v91, -16, v48
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v36.h, v39.l, 15
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v39, v47, v90, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v36.l
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_and_b16 v44.l, v37.l, 15
	v_add_nc_u32_e32 v201, 0, v49
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v49, 15, v23
	v_bfe_u32 v0, v24, 24, 4
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v45.l, v35.h, 15
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v35.h, v46.l, 15
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v47, v48, v91, s1
	.loc	1 557 50 is_stmt 0              ; attention_backward.py:557:50
	v_or_b32_e32 v88, -16, v49
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v33.h
	.loc	1 554 72 is_stmt 1              ; attention_backward.py:554:72
	v_and_b16 v34.h, v24.h, 15
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v84, v24, 16, 4
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v43.l, 4, v46.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v46, -16, v0
	.loc	1 557 25 is_stmt 0              ; attention_backward.py:557:25
	v_cndmask_b32_e64 v33, v49, v88, s1
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v35.h
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_bfe_u32 v86, v24, 8, 4
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v92, -16, v84
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_dual_cndmask_b32 v43, 0, v43 :: v_dual_add_nc_u32 v60, 0, v60
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v46, v0, v46, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v34.h
	v_add_nc_u32_e32 v221, 0, v62
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_dual_cndmask_b32 v45, 0, v45 :: v_dual_add_nc_u32 v222, 0, v63
	v_xor_b32_e32 v62, 32, v87
	v_xor_b32_e32 v63, 48, v87
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_alignbit_b32 v40, v24, v23, 24
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v35.l, v24.l, 15
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v87, 15, v24
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v94, -16, v86
	.loc	1 557 25 is_stmt 0              ; attention_backward.py:557:25
	v_cndmask_b32_e64 v49, v84, v92, s1
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v36.h
	.loc	1 554 72 is_stmt 1              ; attention_backward.py:554:72
	v_and_b16 v37.h, v38.l, 15
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v95, -16, v87
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v38.l, 4, v38.l
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v42, 0, v42, vcc_lo
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v40, 15, v40
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v36, v86, v94, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v35.l
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_and_b16 v96.l, v38.l, 15
	v_and_b16 v41.l, v34.l, 15
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v48, -16, v40
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v38, v36
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v0, v87, v95, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v37.h
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_dual_cndmask_b32 v41, 0, v41 :: v_dual_add_nc_u32 v58, 0, v58
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v34, v47
	v_cvt_f32_i32_e32 v35, v39
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v48, v40, v48, s1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v40, v46
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v46, 0, v96, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v39, v49
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v44, 0, v44, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v36, v48
	v_cvt_f32_i32_e32 v37, v0
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v48, -16, v46
	v_add_nc_u32_e32 v213, 0, v50
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_bfe_u32 v50, v23, 20, 4
	v_bfe_u32 v23, v24, 20, 4
	v_add_nc_u32_e32 v214, 0, v57
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v0, -16, v41
	v_or_b32_e32 v24, -16, v43
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v47, 0, v50, vcc_lo
	v_cndmask_b32_e32 v49, 0, v23, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v46
	.loc	1 558 52 is_stmt 0              ; attention_backward.py:558:52
	v_or_b32_e32 v23, -16, v42
	v_or_b32_e32 v86, -16, v44
	v_or_b32_e32 v50, -16, v47
	v_or_b32_e32 v84, -16, v49
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v46, v46, v48, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v47
	v_add_nc_u32_e32 v224, 0, v67
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v87, -16, v45
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v33, v33
	v_add_nc_u32_e32 v234, 0, v62
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v47, v47, v50, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v41
	v_add_nc_u32_e32 v59, 0, v59
	v_mov_b32_e32 v57, v65
	.loc	1 534 24 is_stmt 1              ; attention_backward.py:534:24
	ds_load_b128 v[149:152], v56
	ds_load_b128 v[153:156], v103
	ds_load_b128 v[65:68], v104
	ds_load_b128 v[69:72], v105
	ds_load_b128 v[164:167], v107
	ds_load_b128 v[168:171], v85
	ds_load_b128 v[173:176], v89
	ds_load_b128 v[177:180], v93
	.loc	1 575 27                        ; attention_backward.py:575:27
	s_waitcnt lgkmcnt(0)
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v48, v41, v0, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v42
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	s_barrier
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v51.h, v19.l
	v_mov_b16_e32 v53.h, v21.l
	v_mov_b16_e32 v17.h, v18.l
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v41, v42, v23, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v43
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v42, v48
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v52.h, v20.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v50, v43, v24, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v49
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v43, v47
	v_cvt_f32_i32_e32 v48, v50
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v49, v49, v84, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v44
	v_add_nc_u32_e32 v81, 0, v64
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v47, v49
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v0, v44, v86, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v45
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v44, v46
	ds_store_b128 v55, v[33:36]
	ds_store_b128 v55, v[41:44] offset:128
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v45, v45, v87, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v46, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v106
	ds_load_b128 v[41:44], v106 offset:512
	v_cvt_f32_i32_e32 v45, v45
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v55, v[37:40]
	ds_store_b128 v55, v[45:48] offset:128
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[37:40], v106
	ds_load_b128 v[45:48], v106 offset:512
	v_mad_u64_u32 v[49:50], null, s19, 24, v[22:23]
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_and_b32_e32 v50, 0xffff0000, v18
	v_and_b32_e32 v0, 0xffff0000, v20
	v_and_b32_e32 v18, 0xffff0000, v21
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mad_u64_u32 v[86:87], null, s18, 24, v[202:203]
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v35, v35, v51
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_and_b32_e32 v55, 0xffff0000, v19
	v_add_nc_u32_e32 v61, 0, v61
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_dual_mul_f32 v33, v33, v17 :: v_dual_mul_f32 v34, v34, v50
	v_dual_mul_f32 v42, v42, v50 :: v_dual_add_nc_u32 v235, 0, v63
	v_mul_f32_e32 v43, v43, v51
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v50, v33, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v37, v37, v52
	v_dual_mul_f32 v47, v47, v53 :: v_dual_mul_f32 v38, v38, v0
	v_mul_f32_e32 v40, v40, v18
	v_mul_f32_e32 v46, v46, v0
	v_dual_mul_f32 v36, v36, v55 :: v_dual_mul_f32 v39, v39, v53
	v_dual_mul_f32 v44, v44, v55 :: v_dual_mul_f32 v41, v41, v17
	v_dual_mul_f32 v48, v48, v18 :: v_dual_mul_f32 v45, v45, v52
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_bfe_u32 v82, v47, 16, 1
	v_bfe_u32 v51, v34, 16, 1
	v_bfe_u32 v52, v35, 16, 1
	v_bfe_u32 v53, v36, 16, 1
	v_bfe_u32 v55, v37, 16, 1
	v_bfe_u32 v0, v38, 16, 1
	v_bfe_u32 v17, v39, 16, 1
	v_bfe_u32 v18, v40, 16, 1
	v_bfe_u32 v19, v41, 16, 1
	v_bfe_u32 v20, v42, 16, 1
	v_bfe_u32 v21, v43, 16, 1
	v_bfe_u32 v22, v44, 16, 1
	v_bfe_u32 v24, v46, 16, 1
	v_cmp_o_f32_e64 s16, v47, v47
	v_bfe_u32 v84, v48, 16, 1
	v_add3_u32 v47, v47, v82, 0x7fff
	v_add_nc_u32_e32 v82, v54, v101
	v_bfe_u32 v23, v45, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s1, v34, v34
	v_cmp_o_f32_e64 s2, v35, v35
	v_cmp_o_f32_e64 s3, v36, v36
	v_cmp_o_f32_e64 s6, v37, v37
	v_cmp_o_f32_e64 s7, v38, v38
	v_cmp_o_f32_e64 s8, v39, v39
	v_cmp_o_f32_e64 s9, v40, v40
	v_add3_u32 v33, v33, v50, 0x7fff
	v_add3_u32 v34, v34, v51, 0x7fff
	v_add3_u32 v35, v35, v52, 0x7fff
	v_add3_u32 v36, v36, v53, 0x7fff
	v_add3_u32 v37, v37, v55, 0x7fff
	v_add3_u32 v38, v38, v0, 0x7fff
	v_add3_u32 v39, v39, v17, 0x7fff
	v_add3_u32 v40, v40, v18, 0x7fff
	v_cmp_o_f32_e64 s10, v41, v41
	v_cmp_o_f32_e64 s11, v42, v42
	v_cmp_o_f32_e64 s12, v43, v43
	v_cmp_o_f32_e64 s13, v44, v44
	v_cmp_o_f32_e64 s14, v45, v45
	v_cmp_o_f32_e64 s15, v46, v46
	v_cmp_o_f32_e64 s17, v48, v48
	v_add3_u32 v41, v41, v19, 0x7fff
	v_add3_u32 v42, v42, v20, 0x7fff
	v_add3_u32 v43, v43, v21, 0x7fff
	v_add3_u32 v44, v44, v22, 0x7fff
	v_add3_u32 v45, v45, v23, 0x7fff
	v_add3_u32 v46, v46, v24, 0x7fff
	v_add3_u32 v48, v48, v84, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v33.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s1
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s2
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s3
	v_cndmask_b16 v35.l, 0x7fff, v37.h, s6
	v_cndmask_b16 v35.h, 0x7fff, v38.h, s7
	v_cndmask_b16 v36.l, 0x7fff, v39.h, s8
	v_cndmask_b16 v36.h, 0x7fff, v40.h, s9
	v_cndmask_b16 v37.l, 0x7fff, v41.h, s10
	v_cndmask_b16 v37.h, 0x7fff, v42.h, s11
	v_cndmask_b16 v38.l, 0x7fff, v43.h, s12
	v_cndmask_b16 v38.h, 0x7fff, v44.h, s13
	v_cndmask_b16 v39.l, 0x7fff, v45.h, s14
	v_cndmask_b16 v39.h, 0x7fff, v46.h, s15
	v_cndmask_b16 v40.l, 0x7fff, v47.h, s16
	v_cndmask_b16 v40.h, 0x7fff, v48.h, s17
	.loc	1 717 21 is_stmt 1              ; attention_backward.py:717:21
	ds_store_b128 v190, v[33:36]
	ds_store_b128 v190, v[37:40] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[226:229], v56
	ds_load_b128 v[230:233], v103
	ds_load_b128 v[17:20], v104
	ds_load_b128 v[21:24], v105
	ds_load_b128 v[33:36], v107
	ds_load_b128 v[37:40], v85
	ds_load_b128 v[41:44], v89
	ds_load_b128 v[45:48], v93
	v_add_nc_u32_e32 v83, v97, v49
	v_add_nc_u32_e32 v84, v54, v49
	v_add_nc_u32_e32 v85, 0, v99
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v87, v57, v102
	s_mov_b32 s1, 0
	s_clause 0x7                            ; 104-byte Folded Spill
	scratch_store_b32 off, v102, off offset:184
	scratch_store_b32 off, v57, off offset:192
	scratch_store_b128 off, v[149:152], off offset:88
	scratch_store_b128 off, v[153:156], off offset:104
	scratch_store_b128 off, v[65:68], off offset:120
	scratch_store_b128 off, v[69:72], off offset:136
	scratch_store_b128 off, v[164:167], off offset:152
	scratch_store_b128 off, v[168:171], off offset:168
	s_waitcnt lgkmcnt(3)
	scratch_store_b128 off, v[33:36], off   ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(2)
	scratch_store_b128 off, v[37:40], off offset:16 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[41:44], off offset:32 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[45:48], off offset:48 ; 16-byte Folded Spill
	s_branch .LBB0_2
.LBB0_1:                                ; %Flow270
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 39 is_stmt 0                ; attention_backward.py:0:39
	s_xor_b32 s2, s56, -1
	s_movk_i32 s1, 0x800
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s56, 0
	s_cbranch_vccz .LBB0_6
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s59
	s_cbranch_vccnz .LBB0_1
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 662 34                        ; attention_backward.py:662:34
	s_or_b32 s41, s57, s1
	s_mov_b32 s60, s40
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 34 is_stmt 0                ; attention_backward.py:0:34
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 664 25 is_stmt 1              ; attention_backward.py:664:25
	s_or_b32 s1, s60, s41
	s_waitcnt vmcnt(3)
	v_lshl_add_u32 v35, s18, 4, v202
	s_mul_i32 s2, s1, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s21, s20
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v33, s2, v202, 1
	v_add_lshl_u32 v34, s2, v219, 1
	v_add_lshl_u32 v35, s2, v35, 1
	v_add_lshl_u32 v36, s2, v86, 1
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s22, s20
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e64 v33, 0x80000000, v33, s5
	v_cndmask_b32_e64 v34, 0x80000000, v34, s5
	v_cndmask_b32_e64 v35, 0x80000000, v35, s5
	v_cndmask_b32_e64 v36, 0x80000000, v36, s5
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s23, s20
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x3
	buffer_load_b128 v[105:108], v33, s[28:31], 0 offen
	buffer_load_b128 v[109:112], v34, s[28:31], 0 offen
	buffer_load_b128 v[113:116], v35, s[28:31], 0 offen
	buffer_load_b128 v[117:120], v36, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s50, s30
	s_mov_b32 s51, s31
	v_add_nc_u32_e32 v35, 4, v157
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s1, s1, s19
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s54, s30
	s_mov_b32 s55, s31
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	v_mov_b32_e32 v63, v199
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(3)
	ds_store_b128 v190, v[105:108]
	s_waitcnt vmcnt(2)
	ds_store_b128 v190, v[109:112] offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b128 v190, v[113:116] offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b128 v190, v[117:120] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v104, s27 :: v_dual_mov_b32 v103, s26
	v_dual_mov_b32 v102, s25 :: v_dual_mov_b32 v101, s24
	v_dual_mov_b32 v100, s23 :: v_dual_mov_b32 v99, s22
	v_dual_mov_b32 v98, s21 :: v_dual_mov_b32 v97, s20
	v_mov_b32_e32 v89, v173
	v_dual_mov_b32 v57, v148 :: v_dual_mov_b32 v90, v174
	v_mov_b32_e32 v92, v176
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v35, v35, s1, 2
	v_dual_mov_b32 v91, v175 :: v_dual_mov_b32 v96, v180
	v_dual_mov_b32 v94, v178 :: v_dual_mov_b32 v203, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v37, 0x80000000, v35, s4
	v_add_lshl_u32 v35, s1, v239, 2
	v_mov_b32_e32 v62, v195
	v_cndmask_b32_e64 v41, 0x80000000, v35, s4
	v_add_lshl_u32 v35, s1, v123, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v45, 0x80000000, v35, s4
	v_add_lshl_u32 v35, s1, v121, 2
	v_cndmask_b32_e64 v49, 0x80000000, v35, s4
	v_add_lshl_u32 v35, s1, v82, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v53, 0x80000000, v35, s4
	v_add_lshl_u32 v35, s1, v83, 2
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, 0, v0
	ds_load_b128 v[124:127], v33
	ds_load_b128 v[128:131], v61
	ds_load_b128 v[132:135], v234
	ds_load_b128 v[136:139], v235
	v_or_b32_e32 v33, s41, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 699 33                        ; attention_backward.py:699:33
	v_or_b32_e32 v33, s60, v33
	.loc	1 699 25 is_stmt 0              ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v33, 2, v33
	buffer_load_b32 v34, v33, s[48:51], 0 offen
	.loc	1 671 30 is_stmt 1              ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[140:147], v[149:156], v[124:131], v[97:104]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[124:127], v236
	ds_load_b128 v[128:131], v237
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v152, 0x1800, v198
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[140:147], v[65:72], v[132:139], v[140:147]
	v_dual_mov_b32 v72, v24 :: v_dual_mov_b32 v71, v23
	v_mov_b32_e32 v69, v21
	v_dual_mov_b32 v65, v17 :: v_dual_mov_b32 v68, v20
	v_mov_b32_e32 v70, v22
	v_mov_b32_e32 v66, v18
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[140:147], v[164:171], v[124:131], v[140:147]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[124:127], v238
	ds_load_b128 v[128:131], v85
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[140:147], v[173:180], v[124:131], v[140:147]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v128, 0x1400, v198
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v124, 0x80000000, v35, s4
	v_add_lshl_u32 v35, s1, v84, 2
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v126, 0xc00, v198
	v_add_nc_u32_e32 v127, 0x1000, v198
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v125, 0x80000000, v35, s4
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v247, s58, v140, -v34
	v_fma_f32 v246, s58, v141, -v34
	v_fma_f32 v241, s58, v142, -v34
	v_fma_f32 v242, s58, v143, -v34
	v_fma_f32 v245, s58, v144, -v34
	v_fma_f32 v243, s58, v145, -v34
	v_fma_f32 v244, s58, v146, -v34
	v_fma_f32 v240, s58, v147, -v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v34, s1, v157, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v248, v33, s[52:55], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_b128 v[33:36], v34, s[36:39], 0 offen
	buffer_load_b128 v[37:40], v37, s[36:39], 0 offen
	buffer_load_b128 v[41:44], v41, s[36:39], 0 offen
	buffer_load_b128 v[45:48], v45, s[36:39], 0 offen
	buffer_load_b128 v[49:52], v49, s[36:39], 0 offen
	buffer_load_b128 v[53:56], v53, s[36:39], 0 offen
	buffer_load_b128 v[205:208], v124, s[36:39], 0 offen
	buffer_load_b128 v[209:212], v125, s[36:39], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v124, 0, v148
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b128 v124, v[33:36]
	s_waitcnt vmcnt(6)
	ds_store_b128 v124, v[37:40] offset:16
	s_waitcnt vmcnt(5)
	ds_store_b128 v124, v[41:44] offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b128 v124, v[45:48] offset:2064
	s_waitcnt vmcnt(3)
	ds_store_b128 v124, v[49:52] offset:4096
	s_waitcnt vmcnt(2)
	ds_store_b128 v124, v[53:56] offset:4112
	s_waitcnt vmcnt(1)
	ds_store_b128 v124, v[205:208] offset:6144
	s_waitcnt vmcnt(0)
	ds_store_b128 v124, v[209:212] offset:6160
	v_add_nc_u32_e32 v124, 0x400, v198
	v_add_nc_u32_e32 v125, 0x800, v198
	v_add_nc_u32_e32 v153, 0x1c00, v198
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[150:151], v124 offset1:32
	ds_load_2addr_b32 v[156:157], v124 offset0:64 offset1:96
	ds_load_2addr_b32 v[148:149], v124 offset0:128 offset1:160
	ds_load_2addr_b32 v[158:159], v124 offset0:192 offset1:224
	ds_load_2addr_b32 v[146:147], v125 offset1:32
	ds_load_2addr_b32 v[160:161], v125 offset0:64 offset1:96
	ds_load_2addr_b32 v[144:145], v125 offset0:128 offset1:160
	ds_load_2addr_b32 v[162:163], v125 offset0:192 offset1:224
	ds_load_2addr_b32 v[142:143], v126 offset1:32
	ds_load_2addr_b32 v[164:165], v126 offset0:64 offset1:96
	ds_load_2addr_b32 v[140:141], v126 offset0:128 offset1:160
	ds_load_2addr_b32 v[166:167], v126 offset0:192 offset1:224
	ds_load_2addr_b32 v[138:139], v127 offset1:32
	ds_load_2addr_b32 v[168:169], v127 offset0:64 offset1:96
	ds_load_2addr_b32 v[136:137], v127 offset0:128 offset1:160
	ds_load_2addr_b32 v[170:171], v127 offset0:192 offset1:224
	ds_load_2addr_b32 v[134:135], v128 offset1:32
	v_mov_b32_e32 v93, v177
	v_mov_b32_e32 v95, v179
	ds_load_2addr_b32 v[172:173], v128 offset0:64 offset1:96
	ds_load_2addr_b32 v[132:133], v128 offset0:128 offset1:160
	ds_load_2addr_b32 v[174:175], v128 offset0:192 offset1:224
	ds_load_2addr_b32 v[130:131], v152 offset1:32
	ds_load_2addr_b32 v[176:177], v152 offset0:64 offset1:96
	ds_load_2addr_b32 v[128:129], v152 offset0:128 offset1:160
	ds_load_2addr_b32 v[178:179], v152 offset0:192 offset1:224
	ds_load_2addr_b32 v[126:127], v153 offset1:32
	ds_load_2addr_b32 v[180:181], v153 offset0:64 offset1:96
	ds_load_2addr_b32 v[124:125], v153 offset0:128 offset1:160
	ds_load_2addr_b32 v[182:183], v153 offset0:192 offset1:224
	ds_load_2addr_b32 v[154:155], v198 offset1:32
	ds_load_2addr_b32 v[184:185], v198 offset0:64 offset1:96
	ds_load_2addr_b32 v[152:153], v198 offset0:128 offset1:160
	ds_load_2addr_b32 v[186:187], v198 offset0:192 offset1:224
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:72 ; 4-byte Folded Reload
	v_bfe_u32 v255, v125, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v255, v125, v255, 0x7fff
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v249, 0, v0
	ds_store_b128 v249, v[33:36]
	ds_store_b128 v249, v[49:52] offset:4096
	ds_store_b128 v122, v[37:40]
	ds_store_b128 v122, v[53:56] offset:4096
	ds_store_b128 v215, v[41:44]
	ds_store_b128 v215, v[205:208] offset:4096
	ds_store_b128 v223, v[45:48]
	ds_store_b128 v223, v[209:212] offset:4096
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:64 ; 4-byte Folded Reload
	v_bfe_u32 v55, v142, 16, 1
	v_bfe_u32 v56, v140, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v55, v142, v55, 0x7fff
	v_add3_u32 v56, v140, v56, 0x7fff
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, 0, v0
	scratch_load_b32 v0, off, off offset:80 ; 4-byte Folded Reload
	ds_load_b128 v[33:36], v33
	s_waitcnt vmcnt(0)
	ds_load_b128 v[37:40], v0
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v41, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s1, v34, v34
	v_cmp_o_f32_e64 s2, v35, v35
	v_cmp_o_f32_e64 s3, v36, v36
	v_add3_u32 v41, v33, v41, 0x7fff
	v_bfe_u32 v33, v34, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v205.l, 0x7fff, v41.h, vcc_lo
	v_add3_u32 v42, v34, v33, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v205.h, 0x7fff, v42.h, s1
	v_add3_u32 v43, v35, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v37, v37
	v_cmp_o_f32_e64 s7, v38, v38
	v_cmp_o_f32_e64 s8, v39, v39
	v_cmp_o_f32_e64 s9, v40, v40
	v_add3_u32 v44, v36, v33, 0x7fff
	v_bfe_u32 v33, v37, 16, 1
	v_cndmask_b16 v206.l, 0x7fff, v43.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v206.h, 0x7fff, v44.h, s3
	v_add3_u32 v45, v37, v33, 0x7fff
	v_bfe_u32 v33, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v207.l, 0x7fff, v45.h, s6
	v_add3_u32 v46, v38, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v207.h, 0x7fff, v46.h, s7
	v_add3_u32 v47, v39, v33, 0x7fff
	v_bfe_u32 v33, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v208.l, 0x7fff, v47.h, s8
	v_add3_u32 v48, v40, v33, 0x7fff
	ds_load_b128 v[33:36], v189
	ds_load_b128 v[37:40], v191
	v_cndmask_b16 v208.h, 0x7fff, v48.h, s9
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v49, v33, 16, 1
	v_cmp_o_f32_e64 s10, v33, v33
	v_cmp_o_f32_e64 s11, v34, v34
	v_cmp_o_f32_e64 s12, v35, v35
	v_cmp_o_f32_e64 s13, v36, v36
	v_add3_u32 v33, v33, v49, 0x7fff
	v_bfe_u32 v49, v34, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s14, v37, v37
	v_cmp_o_f32_e64 s15, v38, v38
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v40, v40
	v_add3_u32 v34, v34, v49, 0x7fff
	v_bfe_u32 v49, v35, 16, 1
	v_cndmask_b16 v209.l, 0x7fff, v33.h, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v209.h, 0x7fff, v34.h, s11
	v_add3_u32 v35, v35, v49, 0x7fff
	v_bfe_u32 v49, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v210.l, 0x7fff, v35.h, s12
	v_add3_u32 v36, v36, v49, 0x7fff
	v_bfe_u32 v49, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v210.h, 0x7fff, v36.h, s13
	v_add3_u32 v37, v37, v49, 0x7fff
	v_bfe_u32 v49, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v211.l, 0x7fff, v37.h, s14
	v_add3_u32 v38, v38, v49, 0x7fff
	v_bfe_u32 v49, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v211.h, 0x7fff, v38.h, s15
	v_add3_u32 v39, v39, v49, 0x7fff
	v_bfe_u32 v49, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v212.l, 0x7fff, v39.h, s16
	v_add3_u32 v40, v40, v49, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v212.h, 0x7fff, v40.h, s17
	ds_load_b128 v[33:36], v192
	ds_load_b128 v[37:40], v193
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_wmma_f32_16x16x16_bf16 v[97:104], v[226:233], v[205:212], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v41, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s1, v34, v34
	v_cmp_o_f32_e64 s2, v35, v35
	v_cmp_o_f32_e64 s3, v36, v36
	v_add3_u32 v41, v33, v41, 0x7fff
	v_bfe_u32 v33, v34, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v37, v37
	v_cmp_o_f32_e64 s7, v38, v38
	v_cmp_o_f32_e64 s8, v39, v39
	v_cmp_o_f32_e64 s9, v40, v40
	v_add3_u32 v42, v34, v33, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	v_cndmask_b16 v205.l, 0x7fff, v41.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v205.h, 0x7fff, v42.h, s1
	v_add3_u32 v43, v35, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v206.l, 0x7fff, v43.h, s2
	v_add3_u32 v44, v36, v33, 0x7fff
	v_bfe_u32 v33, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v206.h, 0x7fff, v44.h, s3
	v_add3_u32 v45, v37, v33, 0x7fff
	v_bfe_u32 v33, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v207.l, 0x7fff, v45.h, s6
	v_add3_u32 v46, v38, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v207.h, 0x7fff, v46.h, s7
	v_add3_u32 v47, v39, v33, 0x7fff
	v_bfe_u32 v33, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v208.l, 0x7fff, v47.h, s8
	v_add3_u32 v48, v40, v33, 0x7fff
	ds_load_b128 v[33:36], v195
	ds_load_b128 v[37:40], v196
	v_cndmask_b16 v208.h, 0x7fff, v48.h, s9
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v49, v33, 16, 1
	v_cmp_o_f32_e64 s10, v33, v33
	v_cmp_o_f32_e64 s11, v34, v34
	v_cmp_o_f32_e64 s12, v35, v35
	v_cmp_o_f32_e64 s13, v36, v36
	v_add3_u32 v33, v33, v49, 0x7fff
	v_bfe_u32 v49, v34, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s14, v37, v37
	v_cmp_o_f32_e64 s15, v38, v38
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v40, v40
	v_add3_u32 v34, v34, v49, 0x7fff
	v_bfe_u32 v49, v35, 16, 1
	v_cndmask_b16 v209.l, 0x7fff, v33.h, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v209.h, 0x7fff, v34.h, s11
	v_add3_u32 v35, v35, v49, 0x7fff
	v_bfe_u32 v49, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v210.l, 0x7fff, v35.h, s12
	v_add3_u32 v36, v36, v49, 0x7fff
	v_bfe_u32 v49, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v210.h, 0x7fff, v36.h, s13
	v_add3_u32 v37, v37, v49, 0x7fff
	v_bfe_u32 v49, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v211.l, 0x7fff, v37.h, s14
	v_add3_u32 v38, v38, v49, 0x7fff
	v_bfe_u32 v49, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v211.h, 0x7fff, v38.h, s15
	v_add3_u32 v39, v39, v49, 0x7fff
	v_bfe_u32 v49, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v212.l, 0x7fff, v39.h, s16
	v_add3_u32 v40, v40, v49, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v212.h, 0x7fff, v40.h, s17
	ds_load_b128 v[33:36], v199
	ds_load_b128 v[37:40], v200
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_wmma_f32_16x16x16_bf16 v[97:104], v[17:24], v[205:212], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v41, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s1, v34, v34
	v_cmp_o_f32_e64 s2, v35, v35
	v_cmp_o_f32_e64 s3, v36, v36
	v_add3_u32 v41, v33, v41, 0x7fff
	v_bfe_u32 v33, v34, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v37, v37
	v_cmp_o_f32_e64 s7, v38, v38
	v_cmp_o_f32_e64 s8, v39, v39
	v_cmp_o_f32_e64 s9, v40, v40
	v_add3_u32 v42, v34, v33, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	v_cndmask_b16 v205.l, 0x7fff, v41.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v205.h, 0x7fff, v42.h, s1
	v_add3_u32 v43, v35, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v206.l, 0x7fff, v43.h, s2
	v_add3_u32 v44, v36, v33, 0x7fff
	v_bfe_u32 v33, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v206.h, 0x7fff, v44.h, s3
	v_add3_u32 v45, v37, v33, 0x7fff
	v_bfe_u32 v33, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v207.l, 0x7fff, v45.h, s6
	v_add3_u32 v46, v38, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v207.h, 0x7fff, v46.h, s7
	v_add3_u32 v47, v39, v33, 0x7fff
	v_bfe_u32 v33, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v208.l, 0x7fff, v47.h, s8
	v_add3_u32 v48, v40, v33, 0x7fff
	ds_load_b128 v[33:36], v201
	ds_load_b128 v[37:40], v213
	v_cndmask_b16 v208.h, 0x7fff, v48.h, s9
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v49, v33, 16, 1
	v_cmp_o_f32_e64 s10, v33, v33
	v_cmp_o_f32_e64 s11, v34, v34
	v_cmp_o_f32_e64 s12, v35, v35
	v_cmp_o_f32_e64 s13, v36, v36
	v_add3_u32 v33, v33, v49, 0x7fff
	v_bfe_u32 v49, v34, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s14, v37, v37
	v_cmp_o_f32_e64 s15, v38, v38
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v40, v40
	v_add3_u32 v34, v34, v49, 0x7fff
	v_bfe_u32 v49, v35, 16, 1
	v_cndmask_b16 v209.l, 0x7fff, v33.h, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v209.h, 0x7fff, v34.h, s11
	v_add3_u32 v35, v35, v49, 0x7fff
	v_bfe_u32 v49, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v210.l, 0x7fff, v35.h, s12
	v_add3_u32 v36, v36, v49, 0x7fff
	v_bfe_u32 v49, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v210.h, 0x7fff, v36.h, s13
	v_add3_u32 v37, v37, v49, 0x7fff
	v_bfe_u32 v49, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v211.l, 0x7fff, v37.h, s14
	v_add3_u32 v38, v38, v49, 0x7fff
	v_bfe_u32 v49, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v211.h, 0x7fff, v38.h, s15
	v_add3_u32 v39, v39, v49, 0x7fff
	v_bfe_u32 v49, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v212.l, 0x7fff, v39.h, s16
	v_add3_u32 v40, v40, v49, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v212.h, 0x7fff, v40.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[33:36], off, off
	scratch_load_b128 v[37:40], off, off offset:16
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[33:40], v[205:212], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[33:36], v214
	ds_load_b128 v[37:40], v58
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v41, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s1, v34, v34
	v_cmp_o_f32_e64 s2, v35, v35
	v_cmp_o_f32_e64 s3, v36, v36
	v_add3_u32 v41, v33, v41, 0x7fff
	v_bfe_u32 v33, v34, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v37, v37
	v_cmp_o_f32_e64 s7, v38, v38
	v_cmp_o_f32_e64 s8, v39, v39
	v_cmp_o_f32_e64 s9, v40, v40
	v_add3_u32 v42, v34, v33, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	v_cndmask_b16 v205.l, 0x7fff, v41.h, vcc_lo
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v41, s60, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v205.h, 0x7fff, v42.h, s1
	v_add3_u32 v43, v35, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v41, s46, v41
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v42, 2, v194
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v206.l, 0x7fff, v43.h, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v44, v36, v33, 0x7fff
	v_bfe_u32 v33, v37, 16, 1
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s1, v42, v41
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v42, 4, v194
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e32 vcc_lo, v194, v41
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v206.h, 0x7fff, v44.h, s3
	v_add3_u32 v45, v37, v33, 0x7fff
	v_bfe_u32 v33, v38, 16, 1
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s2, v42, v41
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v42, 6, v194
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v207.l, 0x7fff, v45.h, s6
	v_add3_u32 v46, v38, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s3, v42, v41
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v42, 8, v194
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s1, s0, s1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v207.h, 0x7fff, v46.h, s7
	v_add3_u32 v47, v39, v33, 0x7fff
	v_bfe_u32 v33, v40, 16, 1
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s6, v42, v41
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v42, 10, v194
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s2, s0, s2
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v208.l, 0x7fff, v47.h, s8
	v_add3_u32 v48, v40, v33, 0x7fff
	ds_load_b128 v[33:36], v59
	ds_load_b128 v[37:40], v60
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s7, v42, v41
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v42, 12, v194
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s3, s0, s3
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v208.h, 0x7fff, v48.h, s9
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s6, s0, s6
	s_and_b32 s7, s0, s7
	.loc	1 676 30 is_stmt 0              ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s8, v42, v41
	.loc	1 514 23 is_stmt 1              ; attention_backward.py:514:23
	v_or_b32_e32 v42, 14, v194
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s8, s0, s8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 676 30 is_stmt 0              ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s9, v42, v41
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v247
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s9, s0, s9
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v49, v33, 16, 1
	v_cmp_o_f32_e64 s10, v33, v33
	v_cmp_o_f32_e64 s11, v34, v34
	v_cmp_o_f32_e64 s12, v35, v35
	v_cmp_o_f32_e64 s13, v36, v36
	v_add3_u32 v33, v33, v49, 0x7fff
	v_bfe_u32 v49, v34, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s14, v37, v37
	v_cmp_o_f32_e64 s15, v38, v38
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v40, v40
	v_add3_u32 v34, v34, v49, 0x7fff
	v_bfe_u32 v49, v35, 16, 1
	v_cndmask_b16 v209.l, 0x7fff, v33.h, s10
	v_cmp_o_f32_e64 s10, v138, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v209.h, 0x7fff, v34.h, s11
	v_add3_u32 v35, v35, v49, 0x7fff
	v_bfe_u32 v49, v36, 16, 1
	v_cmp_o_f32_e64 s11, v136, v136
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v210.l, 0x7fff, v35.h, s12
	v_add3_u32 v36, v36, v49, 0x7fff
	v_bfe_u32 v49, v37, 16, 1
	v_cmp_o_f32_e64 s12, v134, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v210.h, 0x7fff, v36.h, s13
	v_add3_u32 v37, v37, v49, 0x7fff
	v_bfe_u32 v49, v38, 16, 1
	v_cmp_o_f32_e64 s13, v132, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v211.l, 0x7fff, v37.h, s14
	v_add3_u32 v38, v38, v49, 0x7fff
	v_bfe_u32 v49, v39, 16, 1
	v_cmp_o_f32_e64 s14, v130, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v211.h, 0x7fff, v38.h, s15
	v_add3_u32 v39, v39, v49, 0x7fff
	v_bfe_u32 v49, v40, 16, 1
	v_cmp_o_f32_e64 s15, v128, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v212.l, 0x7fff, v39.h, s16
	v_add3_u32 v40, v40, v49, 0x7fff
	v_cmp_o_f32_e64 s16, v126, v126
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v212.h, 0x7fff, v40.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[33:36], off, off offset:32
	scratch_load_b128 v[37:40], off, off offset:48
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s17, v124, v124
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[33:40], v[205:212], v[97:104]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v40, v104, v248
	v_sub_f32_e32 v33, v97, v248
	s_delay_alu instid0(VALU_DEP_3)
	v_sub_f32_e32 v34, v98, v248
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v98, 0, v41, vcc_lo
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v36, v100, v248
	v_sub_f32_e32 v35, v99, v248
	v_sub_f32_e32 v38, v102, v248
	v_sub_f32_e32 v37, v101, v248
	.loc	1 720 30 is_stmt 0              ; attention_backward.py:720:30
	v_mul_f32_e32 v33, v98, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38 is_stmt 1              ; attention_backward.py:721:38
	v_mul_f32_e32 v33, s35, v33
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v41, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v33, v41, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v246
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v246, 0, v0
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v33.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v97, 0, v41, s1
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_dual_sub_f32 v39, v103, v248 :: v_dual_mul_f32 v34, v97, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v34, s35, v34
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v41, v34, 16, 1
	v_cmp_o_f32_e64 s1, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v34, v34, v41, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v241
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v241, 0, v41, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v35, v241, v35
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v35, s35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v41, v35, 16, 1
	v_cmp_o_f32_e64 s2, v35, v35
	v_add3_u32 v35, v35, v41, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v242
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v242, 0, v41, s3
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v36, v242, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v36, s35, v36
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v41, v36, 16, 1
	v_cmp_o_f32_e64 s3, v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v36, v36, v41, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v245
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v99, 0, v41, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v37, v99, v37
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v37, s35, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v41, v37, 16, 1
	v_cmp_o_f32_e64 s6, v37, v37
	v_add3_u32 v37, v37, v41, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v243
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.h, 0x7fff, v37.h, s6
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v246, v33
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s1, v99, v99
	v_cmp_o_f32_e64 s6, v242, v242
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v246, v33 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v243, 0, v41, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v38, v243, v38
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v38, s35, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v41, v38, 16, 1
	v_cmp_o_f32_e64 s7, v38, v38
	v_add3_u32 v38, v38, v41, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v244
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.h, 0x7fff, v38.h, s7
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v220, v33
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v35.h, s2
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s2, v97, v97
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v220, v33 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v244, 0, v41, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v39, v244, v39
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s7, v244, v244
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v39, s35, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v41, v39, 16, 1
	v_cmp_o_f32_e64 s8, v39, v39
	v_add3_u32 v39, v39, v41, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v240
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.h, 0x7fff, v39.h, s8
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v221, v33
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v36.h, s3
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v243, v243
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v221, v33 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v245, 0, v41, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v40, v245, v40
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s8, v245, v245
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v40, s35, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v41, v40, 16, 1
	v_cmp_o_f32_e64 s9, v40, v40
	v_add3_u32 v40, v40, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v33.h, 0x7fff, v40.h, s9
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	ds_store_b16 v222, v33
	ds_store_b16_d16_hi v222, v33 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_nc_u32_e32 v33, 0, v188
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s9, v140, v140
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v240, 0, v0
	ds_load_b128 v[205:208], v240
	ds_load_b128 v[209:212], v81
	ds_load_b128 v[247:250], v224
	ds_load_b128 v[251:254], v225
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v33, v[105:108]
	ds_store_b128 v33, v[109:112] offset:1024
	ds_store_b128 v33, v[113:116] offset:2048
	ds_store_b128 v33, v[117:120] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v101, v197 offset:256
	ds_load_u16_d16 v100, v197
	ds_load_u16_d16 v102, v197 offset:512
	ds_load_u16_d16 v103, v197 offset:768
	ds_load_u16_d16 v104, v197 offset:1024
	ds_load_u16_d16 v106, v197 offset:1536
	ds_load_u16_d16 v105, v197 offset:1280
	ds_load_u16_d16 v112, v197 offset:1088
	ds_load_u16_d16 v111, v197 offset:832
	ds_load_u16_d16 v107, v197 offset:1792
	ds_load_u16_d16 v33, v197 offset:2048
	ds_load_u16_d16 v34, v197 offset:2304
	ds_load_u16_d16 v35, v197 offset:2560
	ds_load_u16_d16 v37, v197 offset:3072
	ds_load_u16_d16 v43, v197 offset:2624
	ds_load_u16_d16 v42, v197 offset:2368
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v112, v197 offset:1216
	ds_load_u16_d16_hi v102, v197 offset:640
	ds_load_u16_d16_hi v103, v197 offset:896
	ds_load_u16_d16_hi v104, v197 offset:1152
	ds_load_u16_d16 v113, v197 offset:1344
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v43, v197 offset:2752
	ds_load_u16_d16_hi v106, v197 offset:1664
	ds_load_u16_d16_hi v105, v197 offset:1408
	ds_load_u16_d16 v108, v197 offset:64
	ds_load_u16_d16_hi v101, v197 offset:384
	ds_load_u16_d16_hi v100, v197 offset:128
	ds_load_u16_d16 v110, v197 offset:576
	ds_load_u16_d16 v109, v197 offset:320
	ds_load_u16_d16_hi v107, v197 offset:1920
	ds_load_u16_d16 v114, v197 offset:1600
	ds_load_u16_d16 v41, v197 offset:2112
	ds_load_u16_d16 v115, v197 offset:1856
	ds_load_u16_d16_hi v111, v197 offset:960
	ds_load_u16_d16 v40, v197 offset:3840
	ds_load_u16_d16 v38, v197 offset:3328
	ds_load_u16_d16 v36, v197 offset:2816
	ds_load_u16_d16 v39, v197 offset:3584
	ds_load_u16_d16 v48, v197 offset:3904
	ds_load_u16_d16 v45, v197 offset:3136
	ds_load_u16_d16 v47, v197 offset:3648
	ds_load_u16_d16 v46, v197 offset:3392
	ds_load_u16_d16_hi v37, v197 offset:3200
	ds_load_u16_d16 v44, v197 offset:2880
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v42, v197 offset:2496
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v113, v197 offset:1472
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v114, v197 offset:1728
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v115, v197 offset:1984
	ds_load_u16_d16_hi v33, v197 offset:2176
	ds_load_u16_d16_hi v41, v197 offset:2240
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v38, v197 offset:3456
	ds_load_u16_d16_hi v34, v197 offset:2432
	ds_load_u16_d16_hi v35, v197 offset:2688
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v36, v197 offset:2944
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v39, v197 offset:3712
	ds_load_u16_d16_hi v40, v197 offset:3968
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v48, v197 offset:4032
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v44, v197 offset:3008
	ds_load_u16_d16_hi v45, v197 offset:3264
	ds_load_u16_d16_hi v47, v197 offset:3776
	ds_load_u16_d16_hi v46, v197 offset:3520
	ds_load_u16_d16_hi v108, v197 offset:192
	ds_load_u16_d16_hi v110, v197 offset:704
	ds_load_u16_d16_hi v109, v197 offset:448
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[100:107], v[205:212], v[25:32]
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v116, v134, 16, 1
	v_bfe_u32 v117, v132, 16, 1
	v_bfe_u32 v118, v130, 16, 1
	v_bfe_u32 v119, v128, 16, 1
	v_bfe_u32 v120, v126, 16, 1
	v_add3_u32 v116, v134, v116, 0x7fff
	v_add3_u32 v117, v132, v117, 0x7fff
	v_add3_u32 v118, v130, v118, 0x7fff
	v_add3_u32 v119, v128, v119, 0x7fff
	v_add3_u32 v120, v126, v120, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[33:40], v[247:254], v[25:32]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v33, v98, 16, 1
	v_bfe_u32 v36, v244, 16, 1
	v_bfe_u32 v37, v245, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v38, v162, 16, 1
	v_bfe_u32 v39, v164, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v33, v98, v33, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[73:80], v[108:115], v[205:212], v[73:80]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_mov_b16_e32 v113.l, 0
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v36, v244, v36, 0x7fff
	v_add3_u32 v37, v245, v37, 0x7fff
	v_cndmask_b16 v113.h, 0x7fff, v33.h, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v38, v162, v38, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v100.l, v113.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v52.h, 0x7fff, v36.h, s7
	v_cndmask_b16 v53.h, 0x7fff, v37.h, s8
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v33, v98, v113
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v36, v158, 16, 1
	v_bfe_u32 v37, v160, 16, 1
	v_add3_u32 v39, v164, v39, 0x7fff
	v_bfe_u32 v40, v166, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v34, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v36, v158, v36, 0x7fff
	v_add3_u32 v37, v160, v37, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[73:80], v[41:48], v[247:254], v[73:80]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v98, v33, v34, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v33, v99, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v40, v166, v40, 0x7fff
	v_bfe_u32 v41, v168, 16, 1
	v_bfe_u32 v43, v172, 16, 1
	v_bfe_u32 v44, v174, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v33, v99, v33, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v45, v176, 16, 1
	v_add3_u32 v41, v168, v41, 0x7fff
	v_add3_u32 v43, v172, v43, 0x7fff
	v_add3_u32 v44, v174, v44, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v100.h, 0x7fff, v33.h, s1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v45, v176, v45, 0x7fff
	v_bfe_u32 v46, v178, 16, 1
	v_bfe_u32 v47, v180, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v50.l, v113.l
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v33, v99, v100
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_bfe_u32 v48, v182, 16, 1
	v_add3_u32 v46, v178, v46, 0x7fff
	v_add3_u32 v47, v180, v47, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v51.l, v113.l
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v34, v33, 16, 1
	v_cmp_o_f32_e64 s1, v33, v33
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v49.l, v113.l
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_bfe_u32 v42, v170, 16, 1
	v_add3_u32 v48, v182, v48, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v99, v33, v34, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v33, v97, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v40.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v42, v170, v42, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v52.l, v113.l
	v_mov_b16_e32 v53.l, v113.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v33, v97, v33, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v33.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v205, v124, 16, 1
	v_cmp_o_f32_e64 s7, v144, v144
	v_cmp_o_f32_e64 s8, v142, v142
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s2
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v246, v100 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v114, v138, 16, 1
	v_bfe_u32 v115, v136, 16, 1
	v_add3_u32 v205, v124, v205, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v34, v97, v33
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v220, v33
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v33, v241, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v36.l, v113.l
	v_mov_b16_e32 v37.l, v113.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v35, v34, 16, 1
	v_cmp_o_f32_e64 s2, v34, v34
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v33, v241, v33, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v98.h, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v184, v184
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v34, v34, v35, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v35, v243, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v38.l, v113.l
	v_mov_b16_e32 v39.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v114, v138, v114, 0x7fff
	v_add3_u32 v115, v136, v115, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v35, v243, v35, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v199.h, 0x7fff, v55.h, s8
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v41.l, v113.l
	v_mov_b16_e32 v42.l, v113.l
	v_mov_b16_e32 v43.l, v113.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v49.h, 0x7fff, v35.h, s3
	v_bfe_u32 v35, v242, 16, 1
	v_cmp_o_f32_e64 s3, v241, v241
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v44.l, v113.l
	v_mov_b16_e32 v45.l, v113.l
	v_mov_b16_e32 v46.l, v113.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v35, v242, v35, 0x7fff
	v_cndmask_b16 v50.h, 0x7fff, v33.h, s3
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.h, 0x7fff, v99.h, s1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s1, v186, v186
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v47.l, v113.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v51.h, 0x7fff, v35.h, s6
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v246, v113
	ds_store_b16_d16_hi v220, v49 offset:512
	ds_store_b16_d16_hi v221, v50
	ds_store_b16_d16_hi v221, v52 offset:512
	ds_store_b16_d16_hi v222, v51
	ds_store_b16_d16_hi v222, v53 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[105:108], v240
	ds_load_b128 v[109:112], v81
	ds_load_b128 v[97:100], v224
	ds_load_b128 v[101:104], v225
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v246, v33
	ds_store_b16_d16_hi v246, v33 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s2
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v34, v184, 16, 1
	v_bfe_u32 v35, v186, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v50, v241, v50 :: v_dual_sub_f32 v51, v242, v51
	v_sub_f32_e32 v49, v243, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v34, v184, v34, 0x7fff
	v_add3_u32 v35, v186, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v54, v50, 16, 1
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_dual_sub_f32 v52, v244, v52 :: v_dual_sub_f32 v53, v245, v53
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v33.h, 0x7fff, v34.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s1
	v_bfe_u32 v35, v156, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v156, v156
	v_cmp_o_f32_e64 s1, v170, v170
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s2, v49, v49
	v_cmp_o_f32_e64 s3, v52, v52
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v35, v156, v35, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v35.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s1
	v_cndmask_b16 v241.h, 0x7fff, v205.h, s17
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v48.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v35.h, 0x7fff, v35.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v158, v158
	v_cndmask_b16 v248.h, 0x7fff, v114.h, s10
	v_cndmask_b16 v247.h, 0x7fff, v115.h, s11
	v_cndmask_b16 v246.h, 0x7fff, v116.h, s12
	v_cndmask_b16 v245.h, 0x7fff, v117.h, s13
	v_cndmask_b16 v36.h, 0x7fff, v36.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v160, v160
	v_cndmask_b16 v244.h, 0x7fff, v118.h, s14
	v_cndmask_b16 v243.h, 0x7fff, v119.h, s15
	v_cndmask_b16 v242.h, 0x7fff, v120.h, s16
	v_bfe_u32 v55, v181, 16, 1
	v_cndmask_b16 v37.h, 0x7fff, v37.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v162, v162
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v250.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s8, v143, v143
	v_add3_u32 v55, v181, v55, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v55.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v38.h, 0x7fff, v38.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v164, v164
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v249.l, v113.l
	v_mov_b16_e64 v251.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s10, v139, v139
	v_cmp_o_f32_e64 s11, v137, v137
	v_cndmask_b16 v39.h, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v166, v166
	v_cmp_o_f32_e64 s12, v135, v135
	v_cmp_o_f32_e64 s13, v133, v133
	v_cmp_o_f32_e64 s14, v131, v131
	v_cmp_o_f32_e64 s15, v129, v129
	v_cndmask_b16 v40.h, 0x7fff, v40.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v168, v168
	v_mov_b32_e32 v67, v19
	v_dual_mov_b32 v17, v226 :: v_dual_mov_b32 v18, v227
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s1, v51, v51
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v41.h, 0x7fff, v41.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v172, v172
	v_mov_b32_e32 v22, v231
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s6, v53, v53
	v_dual_mov_b32 v19, v228 :: v_dual_mov_b32 v20, v229
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v43.h, 0x7fff, v43.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v174, v174
	v_dual_mov_b32 v23, v232 :: v_dual_mov_b32 v24, v233
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v166, v40
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s16, v127, v127
	v_cndmask_b16 v44.h, 0x7fff, v44.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v176, v176
	v_dual_mov_b32 v195, v188 :: v_dual_sub_f32 v188, v162, v38
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v172, v172, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_sub_f32_e32 v166, v174, v44
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v45.h, 0x7fff, v45.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v178, v178
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v44.l, v245.h
	v_mov_b16_e64 v43.l, v246.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v170, v170, v42
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v42.l, v247.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v46.h, 0x7fff, v46.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v180, v180
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v168, v168, v41
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v41.l, v248.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s17, v125, v125
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v162, v178, v46
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v47.h, 0x7fff, v47.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v182, v182
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v46.l, v243.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v252.l, v113.l
	v_mov_b16_e64 v253.l, v113.l
	v_mov_b16_e64 v254.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v48.h, 0x7fff, v48.h, vcc_lo
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	v_add3_u32 v50, v50, v54, 0x7fff
	v_bfe_u32 v54, v51, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v113.h, 0x7fff, v255.h, s17
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v199.l, v113.l
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s17, v0, v0
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v216.l, v113.l
	.loc	1 728 34 is_stmt 1              ; attention_backward.py:728:34
	v_add3_u32 v51, v51, v54, 0x7fff
	v_bfe_u32 v54, v49, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v217.l, v113.l
	v_mov_b16_e64 v218.l, v113.l
	v_mov_b16_e64 v248.l, v113.l
	v_mov_b16_e64 v247.l, v113.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v49, v49, v54, 0x7fff
	v_bfe_u32 v54, v52, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v246.l, v113.l
	v_mov_b16_e64 v245.l, v113.l
	v_mov_b16_e64 v244.l, v113.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v34.l, 0x7fff, v49.h, s2
	v_add3_u32 v52, v52, v54, 0x7fff
	v_bfe_u32 v54, v53, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v220, v33
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v50.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v220, v34 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v34.l, 0x7fff, v52.h, s3
	v_add3_u32 v53, v53, v54, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v49, v154, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v221, v33
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v51.h, s1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v221, v34 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v34.l, 0x7fff, v53.h, s6
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v50, v152, 16, 1
	v_bfe_u32 v51, v150, 16, 1
	v_bfe_u32 v52, v148, 16, 1
	v_bfe_u32 v53, v146, 16, 1
	v_bfe_u32 v54, v144, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v154, v154
	v_cmp_o_f32_e64 s1, v152, v152
	v_cmp_o_f32_e64 s2, v150, v150
	v_cmp_o_f32_e64 s3, v148, v148
	v_cmp_o_f32_e64 s6, v146, v146
	v_add3_u32 v49, v154, v49, 0x7fff
	v_add3_u32 v50, v152, v50, 0x7fff
	v_add3_u32 v51, v150, v51, 0x7fff
	v_add3_u32 v52, v148, v52, 0x7fff
	v_add3_u32 v53, v146, v53, 0x7fff
	v_add3_u32 v54, v144, v54, 0x7fff
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v222, v33
	ds_store_b16 v222, v34 offset:512
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v33.l, v113.l
	v_mov_b16_e32 v34.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v249.h, 0x7fff, v49.h, vcc_lo
	v_cndmask_b16 v250.h, 0x7fff, v50.h, s1
	v_cndmask_b16 v251.h, 0x7fff, v51.h, s2
	v_cndmask_b16 v252.h, 0x7fff, v52.h, s3
	v_cndmask_b16 v253.h, 0x7fff, v53.h, s6
	v_cndmask_b16 v254.h, 0x7fff, v54.h, s7
	v_dual_mov_b32 v21, v230 :: v_dual_sub_f32 v184, v184, v33
	v_mov_b32_e32 v226, v200
	v_cndmask_b16 v200.h, 0x7fff, v56.h, s9
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[205:208], v240
	ds_load_b128 v[209:212], v81
	v_dual_mov_b32 v231, v59 :: v_dual_sub_f32 v186, v186, v34
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v40.l, v200.h
	v_mov_b32_e32 v59, v191
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v191, v164, v39
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v39.l, v199.h
	v_mov_b16_e64 v38.l, v254.h
	v_mov_b32_e32 v227, v201
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v201, v160, v37
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v37.l, v253.h
	v_mov_b32_e32 v230, v58
	v_dual_mov_b32 v58, v189 :: v_dual_sub_f32 v189, v158, v36
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v164, v176, v45
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v36.l, v252.h
	v_mov_b32_e32 v233, v61
	v_mov_b32_e32 v61, v193
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v193, v156, v35
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v35.l, v251.h
	v_mov_b16_e64 v34.l, v250.h
	v_mov_b16_e64 v33.l, v249.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v158, v182, v48
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v48.l, v241.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v160, v180, v47
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v47.l, v242.h
	v_mov_b16_e64 v45.l, v244.h
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[105:112], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v185, v185
	v_bfe_u32 v49, v169, 16, 1
	v_bfe_u32 v51, v173, 16, 1
	v_bfe_u32 v52, v175, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[97:104], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v53, v177, 16, 1
	v_add3_u32 v49, v169, v49, 0x7fff
	v_add3_u32 v51, v173, v51, 0x7fff
	v_add3_u32 v52, v175, v52, 0x7fff
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[205:212], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v33, v185, 16, 1
	v_bfe_u32 v35, v157, 16, 1
	v_bfe_u32 v36, v159, 16, 1
	v_bfe_u32 v37, v161, 16, 1
	v_bfe_u32 v38, v163, 16, 1
	v_add3_u32 v33, v185, v33, 0x7fff
	v_add3_u32 v35, v157, v35, 0x7fff
	v_add3_u32 v36, v159, v36, 0x7fff
	v_add3_u32 v37, v161, v37, 0x7fff
	v_add3_u32 v38, v163, v38, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v33.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v157, v157
	v_bfe_u32 v39, v165, 16, 1
	v_bfe_u32 v40, v167, 16, 1
	v_bfe_u32 v34, v187, 16, 1
	v_add3_u32 v53, v177, v53, 0x7fff
	v_cndmask_b16 v35.h, 0x7fff, v35.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v159, v159
	v_add3_u32 v39, v165, v39, 0x7fff
	v_add3_u32 v40, v167, v40, 0x7fff
	v_bfe_u32 v54, v179, 16, 1
	v_cmp_o_f32_e64 s1, v187, v187
	v_cndmask_b16 v36.h, 0x7fff, v36.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v161, v161
	v_add3_u32 v34, v187, v34, 0x7fff
	v_bfe_u32 v50, v171, 16, 1
	v_add3_u32 v54, v179, v54, 0x7fff
	v_bfe_u32 v56, v183, 16, 1
	v_cndmask_b16 v37.h, 0x7fff, v37.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v163, v163
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s1
	v_cmp_o_f32_e64 s1, v171, v171
	v_add3_u32 v50, v171, v50, 0x7fff
	v_add3_u32 v56, v183, v56, 0x7fff
	v_cndmask_b16 v38.h, 0x7fff, v38.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v165, v165
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v33.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v34.l, v113.l
	v_mov_b16_e32 v35.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v39.h, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v167, v167
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v36.l, v113.l
	v_mov_b16_e32 v37.l, v113.l
	v_mov_b16_e32 v38.l, v113.l
	v_mov_b16_e32 v39.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v40.h, 0x7fff, v40.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v169, v169
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v40.l, v113.l
	v_mov_b16_e32 v49.l, v113.l
	v_mov_b16_e32 v50.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v174, v185, v33
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v49.h, 0x7fff, v49.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v173, v173
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v176, v187, v34 :: v_dual_sub_f32 v187, v165, v39
	v_dual_sub_f32 v178, v157, v35 :: v_dual_sub_f32 v185, v163, v38
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v51.h, 0x7fff, v51.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v175, v175
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v182, v161, v37 :: v_dual_mov_b32 v229, v214
	v_sub_f32_e32 v156, v169, v49
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e32 v51.l, v113.l
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v52.h, 0x7fff, v52.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v177, v177
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v180, v159, v36
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e32 v52.l, v113.l
	v_mov_b16_e32 v53.l, v113.l
	v_mov_b16_e32 v54.l, v113.l
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v53.h, 0x7fff, v53.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v179, v179
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v240, v167, v40
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e32 v56.l, v113.l
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_bfe_u32 v157, v155, 16, 1
	v_bfe_u32 v159, v153, 16, 1
	v_cndmask_b16 v54.h, 0x7fff, v54.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v181, v181
	v_bfe_u32 v161, v151, 16, 1
	v_bfe_u32 v163, v149, 16, 1
	v_bfe_u32 v165, v147, 16, 1
	v_bfe_u32 v167, v145, 16, 1
	v_cndmask_b16 v55.h, 0x7fff, v55.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v183, v183
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v120, v171, v50
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v169, v143, 16, 1
	v_bfe_u32 v171, v141, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v119, v173, v51
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v56.h, 0x7fff, v56.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v118, v175, v52 :: v_dual_sub_f32 v117, v177, v53
	v_dual_sub_f32 v116, v179, v54 :: v_dual_sub_f32 v115, v181, v55
	s_delay_alu instid0(VALU_DEP_3)
	v_sub_f32_e32 v114, v183, v56
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v155, v155
	v_cmp_o_f32_e64 s1, v153, v153
	v_cmp_o_f32_e64 s2, v151, v151
	v_cmp_o_f32_e64 s3, v149, v149
	v_cmp_o_f32_e64 s6, v147, v147
	v_cmp_o_f32_e64 s7, v145, v145
	v_cmp_o_f32_e64 s9, v141, v141
	v_add3_u32 v157, v155, v157, 0x7fff
	v_add3_u32 v159, v153, v159, 0x7fff
	v_add3_u32 v161, v151, v161, 0x7fff
	v_add3_u32 v163, v149, v163, 0x7fff
	v_add3_u32 v165, v147, v165, 0x7fff
	v_add3_u32 v167, v145, v167, 0x7fff
	v_add3_u32 v169, v143, v169, 0x7fff
	v_add3_u32 v171, v141, v171, 0x7fff
	v_bfe_u32 v173, v139, 16, 1
	v_bfe_u32 v175, v137, 16, 1
	v_bfe_u32 v177, v135, 16, 1
	v_bfe_u32 v179, v133, 16, 1
	v_bfe_u32 v181, v131, 16, 1
	v_bfe_u32 v183, v129, 16, 1
	v_mov_b32_e32 v64, v196
	v_bfe_u32 v196, v127, 16, 1
	v_add3_u32 v173, v139, v173, 0x7fff
	v_add3_u32 v175, v137, v175, 0x7fff
	v_add3_u32 v177, v135, v177, 0x7fff
	v_add3_u32 v179, v133, v179, 0x7fff
	v_add3_u32 v181, v131, v181, 0x7fff
	v_add3_u32 v183, v129, v183, 0x7fff
	v_add3_u32 v196, v127, v196, 0x7fff
	v_mov_b32_e32 v232, v60
	v_mov_b32_e32 v60, v192
	v_cndmask_b16 v192.h, 0x7fff, v157.h, vcc_lo
	v_mov_b32_e32 v228, v213
	v_cndmask_b16 v213.h, 0x7fff, v159.h, s1
	v_cndmask_b16 v214.h, 0x7fff, v161.h, s2
	v_mov_b32_e32 v204, v122
	v_mov_b32_e32 v122, v215
	v_cndmask_b16 v215.h, 0x7fff, v163.h, s3
	v_cndmask_b16 v216.h, 0x7fff, v165.h, s6
	v_cndmask_b16 v217.h, 0x7fff, v167.h, s7
	v_cndmask_b16 v218.h, 0x7fff, v169.h, s8
	v_cndmask_b16 v171.h, 0x7fff, v171.h, s9
	v_cndmask_b16 v169.h, 0x7fff, v173.h, s10
	v_cndmask_b16 v167.h, 0x7fff, v175.h, s11
	v_cndmask_b16 v165.h, 0x7fff, v177.h, s12
	v_cndmask_b16 v163.h, 0x7fff, v179.h, s13
	v_cndmask_b16 v161.h, 0x7fff, v181.h, s14
	v_cndmask_b16 v159.h, 0x7fff, v183.h, s15
	v_cndmask_b16 v157.h, 0x7fff, v196.h, s16
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v40.l, v171.h
	v_mov_b16_e64 v39.l, v218.h
	v_mov_b16_e64 v38.l, v217.h
	v_mov_b16_e64 v37.l, v216.h
	v_mov_b16_e64 v36.l, v215.h
	v_mov_b16_e64 v35.l, v214.h
	v_mov_b16_e64 v34.l, v213.h
	v_mov_b16_e64 v33.l, v192.h
	v_mov_b16_e32 v56.l, v113.h
	v_mov_b16_e64 v55.l, v157.h
	v_mov_b16_e64 v54.l, v159.h
	v_mov_b16_e64 v53.l, v161.h
	v_mov_b16_e64 v52.l, v163.h
	v_mov_b16_e64 v51.l, v165.h
	v_mov_b16_e64 v50.l, v167.h
	v_mov_b16_e64 v49.l, v169.h
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[105:112], v[9:16]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v200.l, v113.l
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v188, v188
	v_cmp_o_f32_e64 s1, v184, v184
	v_cmp_o_f32_e64 s3, v186, v186
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[49:56], v[97:104], v[9:16]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s7, v193, v193
	v_cmp_o_f32_e64 s9, v189, v189
	v_cmp_o_f32_e64 s11, v201, v201
	v_cmp_o_f32_e64 s15, v191, v191
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[205:212], v[9:16]
	ds_load_b128 v[33:36], v224
	ds_load_b128 v[37:40], v225
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v192.l, v113.l
	v_mov_b16_e64 v213.l, v113.l
	v_mov_b16_e64 v214.l, v113.l
	v_mov_b16_e64 v215.l, v113.l
	v_mov_b16_e64 v171.l, v113.l
	v_mov_b16_e64 v243.l, v113.l
	v_mov_b16_e64 v242.l, v113.l
	v_mov_b16_e64 v241.l, v113.l
	v_mov_b16_e64 v163.l, v113.l
	v_mov_b16_e64 v159.l, v113.l
	v_mov_b16_e64 v169.l, v113.l
	v_mov_b16_e64 v167.l, v113.l
	v_mov_b16_e64 v165.l, v113.l
	v_mov_b16_e64 v161.l, v113.l
	v_mov_b16_e64 v157.l, v113.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[33:40], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v43, v144, v254
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[49:56], v[33:40], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v33, v154, v249
	v_sub_f32_e32 v35, v152, v250
	v_sub_f32_e32 v37, v150, v251
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v44, v43, 16, 1
	v_cmp_o_f32_e64 s12, v43, v43
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v39, v148, v252 :: v_dual_mov_b32 v148, v57
	v_sub_f32_e32 v45, v142, v199
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v43, v43, v44, 0x7fff
	v_bfe_u32 v44, v188, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v41, v146, v253
	v_sub_f32_e32 v47, v140, v200
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v34, v33, 16, 1
	v_bfe_u32 v36, v35, 16, 1
	v_add3_u32 v44, v188, v44, 0x7fff
	v_mov_b32_e32 v188, v195
	v_bfe_u32 v38, v37, 16, 1
	v_bfe_u32 v40, v39, 16, 1
	v_bfe_u32 v42, v41, 16, 1
	v_bfe_u32 v46, v45, 16, 1
	v_bfe_u32 v48, v47, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_add3_u32 v33, v33, v34, 0x7fff
	v_bfe_u32 v34, v184, 16, 1
	v_cmp_o_f32_e64 s2, v35, v35
	v_add3_u32 v35, v35, v36, 0x7fff
	v_bfe_u32 v36, v186, 16, 1
	v_cmp_o_f32_e64 s6, v37, v37
	v_add3_u32 v37, v37, v38, 0x7fff
	v_bfe_u32 v38, v193, 16, 1
	v_cmp_o_f32_e64 s8, v39, v39
	v_add3_u32 v39, v39, v40, 0x7fff
	v_bfe_u32 v40, v189, 16, 1
	v_cmp_o_f32_e64 s10, v41, v41
	v_add3_u32 v41, v41, v42, 0x7fff
	v_bfe_u32 v42, v201, 16, 1
	v_cmp_o_f32_e64 s14, v45, v45
	v_add3_u32 v45, v45, v46, 0x7fff
	v_bfe_u32 v46, v191, 16, 1
	v_cmp_o_f32_e64 s16, v47, v47
	v_add3_u32 v47, v47, v48, 0x7fff
	v_bfe_u32 v48, v0, 16, 1
	v_add3_u32 v34, v184, v34, 0x7fff
	v_add3_u32 v36, v186, v36, 0x7fff
	v_add3_u32 v38, v193, v38, 0x7fff
	v_add3_u32 v40, v189, v40, 0x7fff
	v_add3_u32 v42, v201, v42, 0x7fff
	v_add3_u32 v46, v191, v46, 0x7fff
	v_add3_u32 v0, v0, v48, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v33.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s1
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s2
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s3
	v_cndmask_b16 v35.l, 0x7fff, v37.h, s6
	v_cndmask_b16 v35.h, 0x7fff, v38.h, s7
	v_cndmask_b16 v36.l, 0x7fff, v39.h, s8
	v_cndmask_b16 v36.h, 0x7fff, v40.h, s9
	v_cndmask_b16 v37.l, 0x7fff, v41.h, s10
	v_cndmask_b16 v37.h, 0x7fff, v42.h, s11
	v_cndmask_b16 v38.l, 0x7fff, v43.h, s12
	v_cndmask_b16 v38.h, 0x7fff, v44.h, s13
	v_cndmask_b16 v39.l, 0x7fff, v45.h, s14
	v_cndmask_b16 v39.h, 0x7fff, v46.h, s15
	v_cndmask_b16 v40.l, 0x7fff, v47.h, s16
	v_cndmask_b16 v40.h, 0x7fff, v0.h, s17
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v0, v155, v192 :: v_dual_mov_b32 v193, v61
	v_mov_b32_e32 v61, v233
	v_mov_b32_e32 v189, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[105:112], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v33, v153, v213
	v_dual_mov_b32 v213, v228 :: v_dual_sub_f32 v34, v151, v214
	v_dual_mov_b32 v58, v230 :: v_dual_mov_b32 v199, v63
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v41, v33, 16, 1
	v_cmp_o_f32_e64 s2, v33, v33
	v_mov_b32_e32 v201, v227
	v_dual_mov_b32 v191, v59 :: v_dual_mov_b32 v200, v226
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v41, v33, v41, 0x7fff
	v_bfe_u32 v33, v176, 16, 1
	v_dual_mov_b32 v59, v231 :: v_dual_mov_b32 v192, v60
	v_mov_b32_e32 v60, v232
	v_dual_mov_b32 v214, v229 :: v_dual_mov_b32 v233, v24
	v_add3_u32 v42, v176, v33, 0x7fff
	v_bfe_u32 v33, v34, 16, 1
	v_dual_mov_b32 v232, v23 :: v_dual_mov_b32 v229, v20
	v_dual_mov_b32 v231, v22 :: v_dual_mov_b32 v230, v21
	v_dual_mov_b32 v227, v18 :: v_dual_mov_b32 v228, v19
	v_mov_b32_e32 v226, v17
	v_dual_mov_b32 v17, v65 :: v_dual_mov_b32 v22, v70
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v35, v149, v215
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v43, v34, v33, 0x7fff
	v_bfe_u32 v33, v178, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v36, v147, v216 :: v_dual_sub_f32 v39, v141, v171
	v_dual_mov_b32 v24, v72 :: v_dual_mov_b32 v215, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v44, v178, v33, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	v_dual_mov_b32 v122, v204 :: v_dual_sub_f32 v37, v145, v217
	v_bfe_u32 v40, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_add3_u32 v45, v35, v33, 0x7fff
	v_bfe_u32 v33, v180, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v38, v143, v218
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v0, v0, v40, 0x7fff
	v_bfe_u32 v40, v174, 16, 1
	v_cmp_o_f32_e64 s1, v174, v174
	v_add3_u32 v46, v180, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	v_cmp_o_f32_e64 s3, v176, v176
	v_add3_u32 v40, v174, v40, 0x7fff
	v_cmp_o_f32_e64 s7, v178, v178
	v_cmp_o_f32_e64 s9, v180, v180
	v_add3_u32 v47, v36, v33, 0x7fff
	v_bfe_u32 v33, v182, 16, 1
	v_dual_mov_b32 v180, v96 :: v_dual_mov_b32 v179, v95
	v_mov_b32_e32 v177, v93
	v_cmp_o_f32_e64 s6, v34, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v48, v182, v33, 0x7fff
	v_bfe_u32 v33, v37, 16, 1
	v_cmp_o_f32_e64 s8, v35, v35
	v_cmp_o_f32_e64 s10, v36, v36
	v_cmp_o_f32_e64 s11, v182, v182
	v_cmp_o_f32_e64 s12, v37, v37
	v_add3_u32 v49, v37, v33, 0x7fff
	v_bfe_u32 v33, v185, 16, 1
	v_cmp_o_f32_e64 s13, v185, v185
	v_cmp_o_f32_e64 s14, v38, v38
	v_cmp_o_f32_e64 s15, v187, v187
	v_cmp_o_f32_e64 s16, v39, v39
	v_add3_u32 v50, v185, v33, 0x7fff
	v_bfe_u32 v33, v38, 16, 1
	v_cmp_o_f32_e64 s17, v240, v240
	v_cndmask_b16 v34.l, 0x7fff, v41.h, s2
	v_cndmask_b16 v34.h, 0x7fff, v42.h, s3
	v_cndmask_b16 v35.l, 0x7fff, v43.h, s6
	v_add3_u32 v51, v38, v33, 0x7fff
	v_bfe_u32 v33, v187, 16, 1
	v_cndmask_b16 v35.h, 0x7fff, v44.h, s7
	v_cndmask_b16 v36.l, 0x7fff, v45.h, s8
	v_cndmask_b16 v36.h, 0x7fff, v46.h, s9
	v_cndmask_b16 v37.l, 0x7fff, v47.h, s10
	v_add3_u32 v52, v187, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	v_cndmask_b16 v37.h, 0x7fff, v48.h, s11
	v_cndmask_b16 v38.l, 0x7fff, v49.h, s12
	v_cndmask_b16 v38.h, 0x7fff, v50.h, s13
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v42, v128, v243
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v53, v39, v33, 0x7fff
	v_bfe_u32 v33, v240, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v51.h, s14
	v_cndmask_b16 v39.h, 0x7fff, v52.h, s15
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v44, v126, v242
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v40.l, 0x7fff, v53.h, s16
	v_add3_u32 v54, v240, v33, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v40.h, s1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v138, v248
	v_sub_f32_e32 v46, v124, v241
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v40.h, 0x7fff, v54.h, s17
	v_bfe_u32 v43, v42, 16, 1
	v_bfe_u32 v45, v44, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_bfe_u32 v47, v46, 16, 1
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[105:112], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v136, v247
	v_sub_f32_e32 v36, v134, v246
	v_sub_f32_e32 v38, v132, v245
	v_sub_f32_e32 v40, v130, v244
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v33, v0, 16, 1
	v_bfe_u32 v35, v34, 16, 1
	v_bfe_u32 v37, v36, 16, 1
	v_bfe_u32 v39, v38, 16, 1
	v_bfe_u32 v41, v40, 16, 1
	v_add3_u32 v0, v0, v33, 0x7fff
	v_bfe_u32 v33, v168, 16, 1
	v_cmp_o_f32_e64 s2, v34, v34
	v_add3_u32 v34, v34, v35, 0x7fff
	v_bfe_u32 v35, v170, 16, 1
	v_cmp_o_f32_e64 s6, v36, v36
	v_add3_u32 v36, v36, v37, 0x7fff
	v_bfe_u32 v37, v172, 16, 1
	v_cmp_o_f32_e64 s8, v38, v38
	v_add3_u32 v38, v38, v39, 0x7fff
	v_bfe_u32 v39, v166, 16, 1
	v_cmp_o_f32_e64 s10, v40, v40
	v_add3_u32 v40, v40, v41, 0x7fff
	v_bfe_u32 v41, v164, 16, 1
	v_cmp_o_f32_e64 s12, v42, v42
	v_add3_u32 v42, v42, v43, 0x7fff
	v_bfe_u32 v43, v162, 16, 1
	v_cmp_o_f32_e64 s14, v44, v44
	v_add3_u32 v44, v44, v45, 0x7fff
	v_bfe_u32 v45, v160, 16, 1
	v_cmp_o_f32_e64 s16, v46, v46
	v_add3_u32 v46, v46, v47, 0x7fff
	v_bfe_u32 v47, v158, 16, 1
	v_cmp_o_f32_e64 s1, v168, v168
	v_add3_u32 v33, v168, v33, 0x7fff
	v_cmp_o_f32_e64 s3, v170, v170
	v_add3_u32 v35, v170, v35, 0x7fff
	v_cmp_o_f32_e64 s7, v172, v172
	v_add3_u32 v37, v172, v37, 0x7fff
	v_cmp_o_f32_e64 s9, v166, v166
	v_add3_u32 v39, v166, v39, 0x7fff
	v_cmp_o_f32_e64 s11, v164, v164
	v_add3_u32 v41, v164, v41, 0x7fff
	v_cmp_o_f32_e64 s13, v162, v162
	v_add3_u32 v43, v162, v43, 0x7fff
	v_cmp_o_f32_e64 s15, v160, v160
	v_add3_u32 v45, v160, v45, 0x7fff
	v_cmp_o_f32_e64 s17, v158, v158
	v_add3_u32 v47, v158, v47, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s1
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s2
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s3
	v_cndmask_b16 v35.l, 0x7fff, v36.h, s6
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s7
	v_cndmask_b16 v36.l, 0x7fff, v38.h, s8
	v_cndmask_b16 v36.h, 0x7fff, v39.h, s9
	v_cndmask_b16 v37.l, 0x7fff, v40.h, s10
	v_cndmask_b16 v37.h, 0x7fff, v41.h, s11
	v_cndmask_b16 v38.l, 0x7fff, v42.h, s12
	v_cndmask_b16 v38.h, 0x7fff, v43.h, s13
	v_cndmask_b16 v39.l, 0x7fff, v44.h, s14
	v_cndmask_b16 v39.h, 0x7fff, v45.h, s15
	v_cndmask_b16 v40.l, 0x7fff, v46.h, s16
	v_cndmask_b16 v40.h, 0x7fff, v47.h, s17
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v139, v169
	v_dual_mov_b32 v18, v66 :: v_dual_mov_b32 v21, v69
	v_mov_b32_e32 v19, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[97:104], v[1:8]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v40, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_dual_mov_b32 v20, v68 :: v_dual_mov_b32 v23, v71
	v_dual_mov_b32 v174, v90 :: v_dual_sub_f32 v33, v137, v167
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v0, v0, v40, 0x7fff
	v_bfe_u32 v40, v156, 16, 1
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v135, v165
	s_clause 0x3                            ; 64-byte Folded Reload
	scratch_load_b128 v[164:167], off, off offset:152
	scratch_load_b128 v[168:171], off, off offset:168
	scratch_load_b128 v[65:68], off, off offset:120
	scratch_load_b128 v[69:72], off, off offset:136
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v156, v156
	v_add3_u32 v40, v156, v40, 0x7fff
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[149:152], off, off offset:88
	scratch_load_b128 v[153:156], off, off offset:104
	v_bfe_u32 v41, v33, 16, 1
	v_cmp_o_f32_e64 s2, v33, v33
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v35, v133, v163 :: v_dual_sub_f32 v36, v131, v161
	v_sub_f32_e32 v37, v129, v159
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v41, v33, v41, 0x7fff
	v_bfe_u32 v33, v120, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v38, v127, v157
	v_sub_f32_e32 v39, v125, v113
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v120, v120
	v_cmp_o_f32_e64 s6, v34, v34
	v_add3_u32 v42, v120, v33, 0x7fff
	v_bfe_u32 v33, v34, 16, 1
	v_cmp_o_f32_e64 s7, v119, v119
	v_cmp_o_f32_e64 s8, v35, v35
	v_cmp_o_f32_e64 s9, v118, v118
	v_cmp_o_f32_e64 s10, v36, v36
	v_add3_u32 v43, v34, v33, 0x7fff
	v_bfe_u32 v33, v119, 16, 1
	v_cmp_o_f32_e64 s11, v117, v117
	v_cmp_o_f32_e64 s12, v37, v37
	v_cmp_o_f32_e64 s13, v116, v116
	v_cmp_o_f32_e64 s14, v38, v38
	v_add3_u32 v44, v119, v33, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	v_cmp_o_f32_e64 s15, v115, v115
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v114, v114
	v_cndmask_b16 v34.l, 0x7fff, v41.h, s2
	v_add3_u32 v45, v35, v33, 0x7fff
	v_bfe_u32 v33, v118, 16, 1
	v_cndmask_b16 v34.h, 0x7fff, v42.h, s3
	v_cndmask_b16 v35.l, 0x7fff, v43.h, s6
	v_cndmask_b16 v35.h, 0x7fff, v44.h, s7
	v_dual_mov_b32 v196, v64 :: v_dual_mov_b32 v195, v62
	v_add3_u32 v46, v118, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	v_dual_mov_b32 v178, v94 :: v_dual_mov_b32 v175, v91
	v_dual_mov_b32 v176, v92 :: v_dual_mov_b32 v173, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v47, v36, v33, 0x7fff
	v_bfe_u32 v33, v117, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v45.h, s8
	v_cndmask_b16 v36.h, 0x7fff, v46.h, s9
	v_mov_b32_e32 v157, v203
	v_add3_u32 v48, v117, v33, 0x7fff
	v_bfe_u32 v33, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v49, v37, v33, 0x7fff
	v_bfe_u32 v33, v116, 16, 1
	v_cndmask_b16 v37.l, 0x7fff, v47.h, s10
	v_cndmask_b16 v37.h, 0x7fff, v48.h, s11
	v_add3_u32 v50, v116, v33, 0x7fff
	v_bfe_u32 v33, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v51, v38, v33, 0x7fff
	v_bfe_u32 v33, v115, 16, 1
	v_cndmask_b16 v38.l, 0x7fff, v49.h, s12
	v_cndmask_b16 v38.h, 0x7fff, v50.h, s13
	v_add3_u32 v52, v115, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v53, v39, v33, 0x7fff
	v_bfe_u32 v33, v114, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v51.h, s14
	v_cndmask_b16 v39.h, 0x7fff, v52.h, s15
	v_cndmask_b16 v40.l, 0x7fff, v53.h, s16
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v54, v114, v33, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v40.h, s1
	.loc	1 607 13 is_stmt 1              ; attention_backward.py:607:13
	s_add_i32 s1, s60, 32
	s_cmpk_lt_u32 s60, 0x7e0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v40.h, 0x7fff, v54.h, s17
	s_mov_b32 s60, s1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[97:104], v[9:16]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %Flow
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	s_clause 0x3                            ; 64-byte Folded Reload
	scratch_load_b128 v[33:36], off, off
	scratch_load_b128 v[37:40], off, off offset:16
	scratch_load_b128 v[41:44], off, off offset:32
	scratch_load_b128 v[45:48], off, off offset:48
	s_branch .LBB0_1
.LBB0_6:
	.loc	1 550 20 is_stmt 1              ; attention_backward.py:550:20
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v64, off, off offset:184
	scratch_load_b32 v33, off, off offset:188
	scratch_load_b32 v34, off, off offset:192
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s5, s43, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s42
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s46, s6
	.loc	1 759 13                        ; attention_backward.py:759:13
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v18, s34, v64
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s47, v64
	.loc	1 550 20                        ; attention_backward.py:550:20
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, v33, v34
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v43, s18, v64
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_mov_b32 s47, s7
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v18, s19, v18
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v0
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v0, 32, v33
	v_or_b32_e32 v47, 2, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s2, s18, v33
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v46, 6, v33
	v_or_b32_e32 v48, 4, v33
	v_cmp_gt_i32_e64 s1, s19, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s3, s18, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v57, v43, v0
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v0, v18, v0, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v49, v43, v33
	v_add_nc_u32_e32 v50, v43, v47
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v45, 8, v33
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v51, v43, v48
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v49, v49, s33, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v52, v43, v46
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v50, v50, s33, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v53, v43, v45
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v44, 10, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v41, 14, v33
	v_or_b32_e32 v42, 12, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v51, v51, s33, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v54, v43, v44
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v25, v49, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v50, s2
	v_add_lshl_u32 v49, v52, s33, 2
	v_add_lshl_u32 v50, v53, s33, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v55, v43, v42
	v_add_nc_u32_e32 v56, v43, v41
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v51, 0x80000000, v51, s2
	buffer_store_b32 v26, v25, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v49, s2
	v_cndmask_b32_e64 v26, 0x80000000, v50, s2
	v_add_lshl_u32 v52, v54, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v40, 34, v33
	v_cmp_gt_i32_e64 s0, s19, v33
	v_or_b32_e32 v39, 36, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v27, v51, s[4:7], 0 offen
	v_add_lshl_u32 v49, v55, s33, 2
	s_clause 0x1
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	v_add_lshl_u32 v25, v56, s33, 2
	v_cndmask_b32_e64 v27, 0x80000000, v52, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v58, v43, v40
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v38, 38, v33
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
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v37, 40, v33
	v_or_b32_e32 v36, 42, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v30, v27, s[4:7], 0 offen
	v_add_lshl_u32 v27, v57, s33, 2
	v_add_lshl_u32 v28, v58, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v35, 44, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v60, v43, v38
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v29, v59, s33, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v61, v43, v37
	v_add_nc_u32_e32 v62, v43, v36
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v34, 46, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v63, v43, v35
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v31, v26, s[4:7], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v29, s2
	v_add_lshl_u32 v17, v60, s33, 2
	v_add_lshl_u32 v19, v61, s33, 2
	s_clause 0x2
	buffer_store_b32 v32, v25, s[4:7], 0 offen
	buffer_store_b32 v73, v27, s[4:7], 0 offen
	buffer_store_b32 v74, v28, s[4:7], 0 offen
	v_add_lshl_u32 v25, v62, s33, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v43, v43, v34
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v75, v26, s[4:7], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_add_lshl_u32 v26, v63, s33, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	v_add_lshl_u32 v20, v43, s33, 2
	buffer_store_b32 v76, v17, s[4:7], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v26, s2
	s_clause 0x1
	buffer_store_b32 v77, v19, s[4:7], 0 offen
	buffer_store_b32 v78, v25, s[4:7], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v19, v18, v33, 2
	v_add_lshl_u32 v21, v18, v44, 2
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v79, v17, s[4:7], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v20, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	v_add_lshl_u32 v20, v18, v47, 2
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v80, v17, s[4:7], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v1, v19, s[44:47], 0 offen
	v_add_lshl_u32 v1, v18, v48, 2
	v_cndmask_b32_e64 v17, 0x80000000, v20, s0
	v_add_lshl_u32 v19, v18, v46, 2
	v_add_lshl_u32 v20, v18, v45, 2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	buffer_store_b32 v2, v17, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v19, s0
	v_cndmask_b32_e64 v17, 0x80000000, v20, s0
	v_cndmask_b32_e64 v19, 0x80000000, v21, s0
	buffer_store_b32 v3, v1, s[44:47], 0 offen
	v_add_lshl_u32 v1, v18, v42, 2
	s_clause 0x2
	buffer_store_b32 v4, v2, s[44:47], 0 offen
	buffer_store_b32 v5, v17, s[44:47], 0 offen
	buffer_store_b32 v6, v19, s[44:47], 0 offen
	v_add_lshl_u32 v2, v18, v41, 2
	v_add_lshl_u32 v3, v18, v40, 2
	v_add_lshl_u32 v4, v18, v39, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_clause 0x4
	buffer_store_b32 v7, v1, s[44:47], 0 offen
	buffer_store_b32 v8, v2, s[44:47], 0 offen
	buffer_store_b32 v9, v0, s[44:47], 0 offen
	buffer_store_b32 v10, v3, s[44:47], 0 offen
	buffer_store_b32 v11, v4, s[44:47], 0 offen
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
	buffer_store_b32 v12, v0, s[44:47], 0 offen
	buffer_store_b32 v13, v1, s[44:47], 0 offen
	buffer_store_b32 v14, v2, s[44:47], 0 offen
	buffer_store_b32 v15, v3, s[44:47], 0 offen
	buffer_store_b32 v16, v4, s[44:47], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 200
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
		.amdhsa_next_free_sgpr 61
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 61
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 200
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17752
; TotalNumSgprs: 63
; NumVgprs: 256
; ScratchSize: 200
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 63
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 200
    .sgpr_count:     63
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 49
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
