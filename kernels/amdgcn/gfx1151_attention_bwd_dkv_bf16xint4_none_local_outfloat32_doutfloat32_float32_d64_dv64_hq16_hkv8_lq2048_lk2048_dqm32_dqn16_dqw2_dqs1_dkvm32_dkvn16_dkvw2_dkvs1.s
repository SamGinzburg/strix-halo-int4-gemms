	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[18:19], s[0:1], 0x74
.Ltmp0:
	.loc	1 536 23 prologue_end           ; attention_backward.py:536:23
	v_and_b32_e32 v34, 7, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v9, 3, v0
	s_clause 0x1
	s_load_b128 s[28:31], s[0:1], 0x0
	s_load_b64 s[12:13], s[0:1], 0x10
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s46, s2, 4
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_lshlrev_b32_e32 v69, 3, v34
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v11, s46, v9
	.loc	1 533 24                        ; attention_backward.py:533:24
	s_lshl_b32 s34, s3, 11
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_lshlrev_b32_e32 v40, 4, v0
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_add_i32 s34, s34, s46
	s_mov_b32 s11, 0x31027000
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s6, 0x800, v11
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 541 32                        ; attention_backward.py:541:32
	s_ashr_i32 s7, s46, 1
	.loc	1 543 26                        ; attention_backward.py:543:26
	s_lshl_b32 s4, s3, 10
	.loc	1 541 32                        ; attention_backward.py:541:32
	v_or_b32_e32 v12, s7, v9
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_mov_b16_e32 v72.l, 0
	.loc	1 545 17                        ; attention_backward.py:545:17
	s_add_i32 s7, s7, s4
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_bfe_i32 s2, s2, 0x1001b
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[203:204], null, s18, v9, v[69:70]
	s_mul_i32 s33, s18, s34
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_cmp_gt_i32_e64 s5, s18, v69
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_and_b32 s9, s31, 0xffff
	s_mov_b32 s8, s30
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mul_lo_u32 v33, s19, v9
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_lshr_b32 s2, s2, 28
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_lshl_add_u32 v2, s18, 3, v203
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_lshl_u32 v1, v203, s33, 1
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s6, s5
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s4, s19, v69
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v73.h, v72.l
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:128
	scratch_store_b32 off, v40, off offset:132
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_lshl_u32 v2, v2, s33, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_mov_b32 s14, s10
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v10, 56, v0
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_mov_b32 s15, s11
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v5, 0x80000000, v2, vcc_lo
	.loc	1 549 23                        ; attention_backward.py:549:23
	v_cmp_gt_i32_e32 vcc_lo, 0x400, v12
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_clause 0x1
	buffer_load_b128 v[1:4], v1, s[8:11], 0 offen
	buffer_load_b128 v[5:8], v5, s[8:11], 0 offen
	v_lshlrev_b32_e32 v35, 1, v10
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v202, v33, v69
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_and_b32 s13, s13, 0xffff
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_i32 v37, v0, 4, 1
	v_bfe_u32 v52, v0, 4, 1
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v13, v40, v35
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mad_u64_u32 v[9:10], null, s19, s7, v[202:203]
	.loc	1 549 22                        ; attention_backward.py:549:22
	s_and_b32 s7, vcc_lo, s4
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_bfe_i32 v39, v0, 3, 1
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v190, 0, v13
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v41.h, v72.l
	v_mov_b16_e32 v45.h, v72.l
	s_clause 0x2
	s_load_b32 s35, s[0:1], 0x7c
	s_load_b64 s[22:23], s[0:1], 0x94
	s_load_b64 s[44:45], s[0:1], 0x58
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v9, 0x80000000, v9, s7
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v43.h, v72.l
	s_clause 0x1
	s_load_b256 s[36:43], s[0:1], 0x38
	s_load_b32 s21, s[0:1], 0x9c
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v76.l, v72.l
	v_lshl_add_u32 v84, s19, 4, v33
	v_mov_b16_e32 v74.l, v72.l
	v_mov_b16_e32 v75.l, v72.l
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v42.h, v72.l
	v_mov_b16_e32 v44.h, v72.l
	s_lshl_b32 s56, s3, 12
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v106, s46, v52
	s_mov_b32 s20, 0
	s_mov_b32 s47, -1
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(1)
	ds_store_b128 v190, v[1:4]
	s_waitcnt vmcnt(0)
	ds_store_b128 v190, v[5:8] offset:1024
	.loc	1 570 20                        ; attention_backward.py:570:20
	v_add_nc_u32_e32 v1, s2, v11
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 544 28                        ; attention_backward.py:544:28
	buffer_load_b64 v[70:71], v9, s[12:15], 0 offen
	s_load_b64 s[12:13], s[0:1], 0x28
	.loc	1 570 20                        ; attention_backward.py:570:20
	v_ashrrev_i32_e32 v1, 4, v1
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s2, s6, s4
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s1, s46, s22
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_add_i32 s57, s23, s21
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s1, s1, s21
	.loc	1 568 17                        ; attention_backward.py:568:17
	v_lshl_add_u32 v1, s3, 7, v1
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s1, s1, 16
	s_mov_b32 s52, s40
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s0, 0x800, v106
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v244, 8, v106
	.loc	1 568 17                        ; attention_backward.py:568:17
	v_mul_lo_u32 v1, v1, s19
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v245, 10, v106
	v_or_b32_e32 v246, 12, v106
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_mul_f32 s58, s35, 0x3fb8aa3b
	s_mov_b32 s48, s38
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v34, 4, v34
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_and_b32_e32 v37, 0x440, v37
	v_and_b32_e32 v39, 0x440, v39
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_add_lshl_u32 v1, v1, v69, 1
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_sub_i32 s2, s46, s57
	.loc	1 589 24 is_stmt 0              ; attention_backward.py:589:24
	s_max_i32 s2, s2, 0
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	buffer_load_b128 v[65:68], v1, s[12:15], 0 offen
	v_mov_b32_e32 v1, 0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v101, 15, v0
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_and_b32_e32 v38, 32, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v36, 16, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v9, v1 :: v_dual_lshlrev_b32 v148, 5, v0
	v_dual_mov_b32 v11, v1 :: v_dual_lshlrev_b32 v0, 3, v0
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v13, v1
	v_dual_mov_b32 v14, v1 :: v_dual_lshlrev_b32 v49, 7, v38
	v_dual_mov_b32 v25, v1 :: v_dual_lshlrev_b32 v46, 4, v101
	v_dual_mov_b32 v27, v1 :: v_dual_lshlrev_b32 v48, 8, v101
	v_mov_b32_e32 v4, v1
	v_dual_mov_b32 v12, v1 :: v_dual_lshlrev_b32 v47, 3, v38
	v_dual_mov_b32 v17, v1 :: v_dual_and_b32 v0, 48, v0
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshl_or_b32 v34, v101, 7, v34
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_xor_b32_e32 v37, v37, v46
	v_or3_b32 v188, v48, v49, v46
	v_xor_b32_e32 v191, v148, v35
	v_mov_b32_e32 v5, v1
	v_dual_mov_b32 v29, v1 :: v_dual_lshlrev_b32 v36, 2, v36
	v_dual_mov_b32 v31, v1 :: v_dual_lshlrev_b32 v50, 1, v101
	v_lshl_or_b32 v62, v101, 6, v0
	v_add3_u32 v83, 0, v47, v37
	v_lshl_or_b32 v63, v38, 6, v34
	v_xor_b32_e32 v0, 16, v191
	v_xor_b32_e32 v35, 0x890, v191
	v_xor_b32_e32 v37, 32, v188
	v_mov_b32_e32 v8, v1
	v_dual_mov_b32 v15, v1 :: v_dual_and_b32 v40, 0x370, v40
	v_dual_mov_b32 v26, v1 :: v_dual_add_nc_u32 v123, 0, v0
	v_dual_mov_b32 v28, v1 :: v_dual_add_nc_u32 v93, 0, v35
	v_dual_mov_b32 v23, v1 :: v_dual_add_nc_u32 v0, 0, v37
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_lshrrev_b32_e32 v102, 1, v38
	v_lshl_add_u32 v51, v38, 1, 0
	v_or3_b32 v189, v50, v36, v38
	v_add3_u32 v197, 0, v38, v50
	v_xor_b32_e32 v38, 48, v188
	v_xor_b32_e32 v35, 48, v63
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v52, off offset:216
	scratch_store_b32 off, v0, off offset:136
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_xad_u32 v77, v39, v40, 0
	v_xor_b32_e32 v39, 64, v188
	v_add_nc_u32_e32 v0, 0, v38
	v_add_nc_u32_e32 v243, 0, v35
	v_xor_b32_e32 v40, 0x50, v188
	v_xor_b32_e32 v37, 0x50, v63
	v_dual_mov_b32 v16, v1 :: v_dual_add_nc_u32 v103, 0, v34
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xad_u32 v104, v34, 16, 0
	v_xad_u32 v105, v34, 32, 0
	v_xad_u32 v81, v34, 48, 0
	v_xad_u32 v78, v34, 64, 0
	v_xad_u32 v79, 0x50, v34, 0
	v_xad_u32 v89, 0x60, v34, 0
	v_xad_u32 v80, 0x70, v34, 0
	v_xor_b32_e32 v34, 0x880, v191
	v_xor_b32_e32 v38, 0x60, v63
	v_mov_b32_e32 v19, v1
	v_xor_b32_e32 v36, 16, v188
	v_xor_b32_e32 v46, 0x60, v188
	v_xor_b32_e32 v47, 0x70, v188
	v_add_nc_u32_e32 v194, 0, v34
	v_xor_b32_e32 v34, 32, v63
	v_mov_b32_e32 v30, v1
	v_dual_mov_b32 v21, v1 :: v_dual_add_nc_u32 v64, 0, v36
	v_xor_b32_e32 v48, 0x80, v188
	v_xor_b32_e32 v54, 0xe0, v188
	v_add_nc_u32_e32 v192, 0, v46
	v_add_nc_u32_e32 v193, 0, v47
	v_xor_b32_e32 v36, 64, v63
	v_lshl_add_u32 v46, s19, 3, v33
	v_mad_u64_u32 v[97:98], null, s19, 24, v[33:34]
	v_mov_b32_e32 v2, v1
	v_dual_mov_b32 v32, v1 :: v_dual_add_nc_u32 v195, 0, v48
	v_dual_mov_b32 v24, v1 :: v_dual_add_nc_u32 v239, 0, v54
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v99, 4, v69
	.loc	1 597 45                        ; attention_backward.py:597:45
	s_and_b32 s40, s2, 0x7fffffe0
	v_xor_b32_e32 v57, 0x120, v189
	v_xor_b32_e32 v59, 16, v62
	v_xor_b32_e32 v61, 48, v62
	v_lshl_add_u32 v198, v101, 2, v51
	v_xor_b32_e32 v51, 0xb0, v188
	v_xor_b32_e32 v53, 0xd0, v188
	v_xor_b32_e32 v55, 0xf0, v188
	v_xor_b32_e32 v56, 0x90, v189
	.loc	1 534 24                        ; attention_backward.py:534:24
	ds_load_b128 v[149:152], v103
	ds_load_b128 v[153:156], v104
	ds_load_b128 v[157:160], v105
	ds_load_b128 v[161:164], v81
	ds_load_b128 v[165:168], v78
	ds_load_b128 v[169:172], v79
	ds_load_b128 v[173:176], v89
	ds_load_b128 v[177:180], v80
	v_xor_b32_e32 v58, 0x1b0, v189
	v_xor_b32_e32 v60, 32, v62
	v_mov_b32_e32 v3, v1
	v_xor_b32_e32 v49, 0x90, v188
	v_xor_b32_e32 v50, 0xa0, v188
	v_xor_b32_e32 v52, 0xc0, v188
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v20, v1
	v_dual_mov_b32 v22, v1 :: v_dual_add_nc_u32 v49, 0, v49
	v_add_nc_u32_e32 v235, 0, v50
	v_add_nc_u32_e32 v237, 0, v52
	.loc	1 556 28                        ; attention_backward.py:556:28
	s_waitcnt vmcnt(1)
	v_lshrrev_b16 v35.h, 4, v71.l
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v33.l, v70.h, 15
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v47, v70, 16, 4
	v_bfe_u32 v48, v70, 8, 4
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v33.h, v70.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v45.l, v35.h, 15
	v_add_nc_u32_e32 v0, 0, v39
	v_xor_b32_e32 v39, 0x70, v63
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v92, -16, v47
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_dual_cndmask_b32 v45, 0, v45 :: v_dual_and_b32 v86, 15, v70
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v40
	.loc	1 590 24                        ; attention_backward.py:590:24
	v_med3_i32 v40, s1, 0, 0x800
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v33.l
	.loc	1 557 50 is_stmt 0              ; attention_backward.py:557:50
	v_or_b32_e32 v95, -16, v48
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_bfe_u32 v87, v71, 24, 4
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v63
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v94, -16, v86
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v88, v71, 16, 4
	v_bfe_u32 v90, v71, 8, 4
	.loc	1 600 19                        ; attention_backward.py:600:19
	v_readfirstlane_b32 s2, v40
	v_add_nc_u32_e32 v241, 0, v0
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_alignbit_b32 v40, v71, v70, 24
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v96, -16, v88
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v35.l, v71.l, 15
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v91, 15, v71
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v98, -16, v90
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v40, 15, v40
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v76.h, v68.l
	v_add_nc_u32_e32 v0, 0, v37
	v_mov_b16_e32 v72.h, v65.l
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v37, 8, v70
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v74.h, v66.l
	v_add_nc_u32_e32 v54, 0, v36
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v38
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v36.l, v37.l, 15
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v75.h, v67.l
	v_add_nc_u32_e32 v242, 0, v34
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v34.l, 4, v70.l
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v39
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b64 v[38:39], 24, v[70:71]
	v_lshrrev_b32_e32 v39, 8, v71
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v42.l, v34.l, 15
	v_lshrrev_b16 v34.l, 4, v37.l
	.loc	1 600 19                        ; attention_backward.py:600:19
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, v69, v46
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v36.h, v39.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v37.l, 4, v39.l
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v39, v47, v92, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v36.l
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, v99, v46
	.loc	1 544 28 is_stmt 1              ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v46, 24, v71
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v34.h, v71.h, 15
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v47, v48, v95, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v33.h
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v100, -16, v91
	.loc	1 554 72 is_stmt 1              ; attention_backward.py:554:72
	v_and_b16 v35.h, v46.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v43.l, 4, v46.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v46, -16, v87
	.loc	1 557 25 is_stmt 0              ; attention_backward.py:557:25
	v_cndmask_b32_e64 v33, v86, v94, s1
	.loc	1 554 72 is_stmt 1              ; attention_backward.py:554:72
	v_and_b16 v37.h, v38.l, 15
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v35.h
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v38.l, 4, v38.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v48, -16, v40
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_bfe_u32 v70, v70, 20, 4
	v_bfe_u32 v71, v71, 20, 4
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v46, v87, v46, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v34.h
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_and_b16 v73.l, v38.l, 15
	v_and_b16 v41.l, v34.l, 15
	v_and_b16 v44.l, v37.l, 15
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_dual_cndmask_b32 v42, 0, v42 :: v_dual_add_nc_u32 v221, 0, v57
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v86, v88, v96, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v36.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_dual_cndmask_b32 v44, 0, v44 :: v_dual_add_nc_u32 v223, 0, v59
	v_add_nc_u32_e32 v225, 0, v61
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v34, v47
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v36, v90, v98, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v35.l
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e32 v47, 0, v70, vcc_lo
	v_cndmask_b32_e32 v41, 0, v41, vcc_lo
	v_cndmask_b32_e32 v43, 0, v43, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v38, v36
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v87, v91, v100, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v37.h
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e32 v70, 0, v71, vcc_lo
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v71, -16, v47
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v35, v39
	v_cvt_f32_i32_e32 v39, v86
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v48, v40, v48, s1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v40, v46
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v46, 0, v73, vcc_lo
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v73, -16, v41
	v_or_b32_e32 v86, -16, v42
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v36, v48
	v_cvt_f32_i32_e32 v37, v87
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v48, -16, v46
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v46
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v87, -16, v43
	v_or_b32_e32 v88, -16, v70
	v_or_b32_e32 v90, -16, v44
	v_or_b32_e32 v91, -16, v45
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v46, v46, v48, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v47
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 534 24                        ; attention_backward.py:534:24
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	.loc	1 575 27                        ; attention_backward.py:575:27
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v47, v47, v71, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v41
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_and_b32_e32 v66, 0xffff0000, v66
	v_and_b32_e32 v68, 0xffff0000, v68
	v_add_nc_u32_e32 v96, v69, v97
	.loc	1 600 19                        ; attention_backward.py:600:19
	s_add_i32 s2, s2, 31
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v48, v41, v73, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v42
	v_add_nc_u32_e32 v236, 0, v51
	v_add_nc_u32_e32 v0, v99, v84
	.loc	1 600 17 is_stmt 1              ; attention_backward.py:600:17
	s_and_b32 s1, s2, 0x1fe0
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v57, 2, v106
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v41, v42, v86, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v43
	v_add_nc_u32_e32 v238, 0, v53
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v42, v48
	.loc	1 598 24                        ; attention_backward.py:598:24
	s_min_u32 s59, s1, 0x800
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v71, v43, v87, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v70
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v43, v47
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v95, 6, v106
	v_or_b32_e32 v92, 14, v106
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v48, v71
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v70, v70, v88, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v44
	v_add_nc_u32_e32 v240, 0, v55
	.loc	1 608 39 is_stmt 1              ; attention_backward.py:608:39
	v_or_b32_e32 v94, v102, v101
	s_cmp_lt_u32 s40, s59
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v47, v70
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v73, v44, v90, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v45
	v_add_nc_u32_e32 v220, 0, v56
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v44, v46
	ds_store_b128 v77, v[33:36]
	ds_store_b128 v77, v[41:44] offset:128
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v45, v45, v91, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v46, v73
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v83
	ds_load_b128 v[41:44], v83 offset:512
	v_cvt_f32_i32_e32 v45, v45
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v77, v[37:40]
	ds_store_b128 v77, v[45:48] offset:128
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[37:40], v83
	ds_load_b128 v[45:48], v83 offset:512
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_and_b32_e32 v65, 0xffff0000, v65
	v_add_nc_u32_e32 v222, 0, v58
	v_add_nc_u32_e32 v224, 0, v60
	v_add_nc_u32_e32 v90, v69, v84
	.loc	1 600 17                        ; attention_backward.py:600:17
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v56, v99, v97
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v58, 4, v106
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_dual_mul_f32 v36, v36, v66 :: v_dual_and_b32 v67, 0xffff0000, v67
	v_dual_mul_f32 v34, v34, v65 :: v_dual_mul_f32 v33, v33, v72
	v_mul_f32_e32 v35, v35, v74
	v_dual_mul_f32 v41, v41, v72 :: v_dual_mul_f32 v42, v42, v65
	v_mul_f32_e32 v43, v43, v74
	v_dual_mul_f32 v44, v44, v66 :: v_dual_mul_f32 v37, v37, v75
	v_dual_mul_f32 v38, v38, v67 :: v_dual_mul_f32 v39, v39, v76
	v_dual_mul_f32 v40, v40, v68 :: v_dual_mul_f32 v45, v45, v75
	v_dual_mul_f32 v46, v46, v67 :: v_dual_mul_f32 v47, v47, v76
	v_mul_f32_e32 v48, v48, v68
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v65, v33, 16, 1
	v_bfe_u32 v66, v34, 16, 1
	v_bfe_u32 v67, v35, 16, 1
	v_bfe_u32 v68, v36, 16, 1
	v_bfe_u32 v69, v37, 16, 1
	v_bfe_u32 v70, v38, 16, 1
	v_bfe_u32 v71, v39, 16, 1
	v_bfe_u32 v72, v40, 16, 1
	v_bfe_u32 v73, v41, 16, 1
	v_bfe_u32 v60, v42, 16, 1
	v_bfe_u32 v61, v43, 16, 1
	v_bfe_u32 v76, v44, 16, 1
	v_bfe_u32 v77, v45, 16, 1
	v_bfe_u32 v74, v46, 16, 1
	v_bfe_u32 v84, v47, 16, 1
	v_bfe_u32 v86, v48, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s1, v34, v34
	v_cmp_o_f32_e64 s2, v35, v35
	v_cmp_o_f32_e64 s3, v36, v36
	v_cmp_o_f32_e64 s6, v37, v37
	v_cmp_o_f32_e64 s7, v38, v38
	v_cmp_o_f32_e64 s8, v39, v39
	v_cmp_o_f32_e64 s9, v40, v40
	v_add3_u32 v33, v33, v65, 0x7fff
	v_add3_u32 v34, v34, v66, 0x7fff
	v_add3_u32 v35, v35, v67, 0x7fff
	v_add3_u32 v36, v36, v68, 0x7fff
	v_add3_u32 v37, v37, v69, 0x7fff
	v_add3_u32 v38, v38, v70, 0x7fff
	v_add3_u32 v39, v39, v71, 0x7fff
	v_add3_u32 v40, v40, v72, 0x7fff
	v_cmp_o_f32_e64 s10, v41, v41
	v_cmp_o_f32_e64 s11, v42, v42
	v_cmp_o_f32_e64 s12, v43, v43
	v_cmp_o_f32_e64 s13, v44, v44
	v_cmp_o_f32_e64 s14, v45, v45
	v_cmp_o_f32_e64 s15, v46, v46
	v_cmp_o_f32_e64 s16, v47, v47
	v_cmp_o_f32_e64 s17, v48, v48
	v_add3_u32 v41, v41, v73, 0x7fff
	v_add3_u32 v42, v42, v60, 0x7fff
	v_add3_u32 v43, v43, v61, 0x7fff
	v_add3_u32 v44, v44, v76, 0x7fff
	v_add3_u32 v45, v45, v77, 0x7fff
	v_add3_u32 v46, v46, v74, 0x7fff
	v_add3_u32 v47, v47, v84, 0x7fff
	v_add3_u32 v48, v48, v86, 0x7fff
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
	ds_load_b128 v[33:36], v103
	ds_load_b128 v[37:40], v104
	ds_load_b128 v[41:44], v105
	ds_load_b128 v[45:48], v81
	ds_load_b128 v[65:68], v78
	ds_load_b128 v[69:72], v79
	ds_load_b128 v[81:84], v89
	ds_load_b128 v[85:88], v80
	v_mad_u64_u32 v[73:74], null, s18, 24, v[203:204]
	s_cselect_b32 s60, -1, 0
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s49, s39, 0xffff
	s_and_b32 s53, s41, 0xffff
	s_and_b32 s37, s37, 0xffff
	s_sub_i32 s41, s21, s22
	s_mov_b32 s1, 0
	s_clause 0x4                            ; 44-byte Folded Spill
	scratch_store_b32 off, v106, off offset:208
	scratch_store_b32 off, v101, off offset:212
	scratch_store_b32 off, v102, off offset:220
	scratch_store_b128 off, v[149:152], off offset:152
	scratch_store_b128 off, v[153:156], off offset:168
	s_waitcnt lgkmcnt(7)
	scratch_store_b128 off, v[33:36], off   ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(6)
	scratch_store_b128 off, v[37:40], off offset:16 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(5)
	scratch_store_b128 off, v[41:44], off offset:32 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(4)
	scratch_store_b128 off, v[45:48], off offset:48 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(3)
	scratch_store_b128 off, v[65:68], off offset:64 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(2)
	scratch_store_b128 off, v[69:72], off offset:80 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[81:84], off offset:96 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[85:88], off offset:112 ; 16-byte Folded Spill
	s_branch .LBB0_2
.LBB0_1:                                ; %Flow272
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 21 is_stmt 0                ; attention_backward.py:0:21
	s_xor_b32 s2, s47, -1
	s_movk_i32 s1, 0x800
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s47, 0
	s_cbranch_vccz .LBB0_6
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s60
	s_cbranch_vccnz .LBB0_1
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 662 34                        ; attention_backward.py:662:34
	s_or_b32 s61, s56, s1
	s_mov_b32 s62, s40
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 663 37                        ; attention_backward.py:663:37
	scratch_load_b32 v0, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_add_i32 s1, s62, s61
	s_waitcnt vmcnt(8)
	v_lshl_add_u32 v35, s18, 4, v203
	s_mul_i32 s2, s1, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s21, s20
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v33, s2, v203, 1
	v_add_lshl_u32 v36, s2, v73, 1
	v_add_lshl_u32 v35, s2, v35, 1
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e64 v33, 0x80000000, v33, s5
	v_cndmask_b32_e64 v36, 0x80000000, v36, s5
	v_cndmask_b32_e64 v35, 0x80000000, v35, s5
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s1, s1, s19
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s50, s30
	s_mov_b32 s51, s31
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s54, s30
	s_mov_b32 s55, s31
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_waitcnt vmcnt(3)
	v_dual_mov_b32 v65, v173 :: v_dual_mov_b32 v68, v176
	v_dual_mov_b32 v71, v179 :: v_dual_add_nc_u32 v196, 0, v191
	v_dual_mov_b32 v67, v175 :: v_dual_mov_b32 v70, v178
	v_dual_mov_b32 v69, v177 :: v_dual_mov_b32 v72, v180
	v_mov_b32_e32 v204, v93
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v104, s27
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v74, v157 :: v_dual_mov_b32 v103, s26
	v_dual_mov_b32 v102, s25 :: v_dual_mov_b32 v101, s24
	v_dual_mov_b32 v100, s23 :: v_dual_mov_b32 v99, s22
	v_dual_mov_b32 v98, s21 :: v_dual_mov_b32 v97, s20
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v81, v164 :: v_dual_mov_b32 v82, v165
	v_dual_mov_b32 v83, v166 :: v_dual_mov_b32 v84, v167
	v_dual_mov_b32 v85, v168 :: v_dual_mov_b32 v86, v169
	v_dual_mov_b32 v87, v170 :: v_dual_mov_b32 v88, v171
	v_dual_mov_b32 v89, v172 :: v_dual_mov_b32 v66, v174
	v_dual_mov_b32 v79, v162 :: v_dual_mov_b32 v80, v163
	v_mov_b32_e32 v77, v160
	v_dual_mov_b32 v75, v158 :: v_dual_mov_b32 v76, v159
	v_mov_b32_e32 v78, v161
	v_dual_mov_b32 v121, v73 :: v_dual_mov_b32 v122, v94
	v_mov_b32_e32 v91, v56
	v_mov_b32_e32 v61, v49
	v_mov_b32_e32 v59, v193
	v_mov_b32_e32 v55, v188
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v34, s2, v0, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v34, 0x80000000, v34, s5
	s_clause 0x3
	buffer_load_b128 v[105:108], v33, s[28:31], 0 offen
	buffer_load_b128 v[109:112], v34, s[28:31], 0 offen
	buffer_load_b128 v[113:116], v35, s[28:31], 0 offen
	buffer_load_b128 v[117:120], v36, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
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
	scratch_load_b32 v0, off, off offset:184 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v33, 0, v63
	ds_load_b128 v[124:127], v33
	ds_load_b128 v[128:131], v241
	ds_load_b128 v[132:135], v242
	ds_load_b128 v[136:139], v243
	v_add_nc_u32_e32 v35, 4, v202
	v_or_b32_e32 v33, s61, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v35, v35, s1, 2
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_add_lshl_u32 v33, v33, s62, 2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v37, 0x80000000, v35, s4
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v34, v33, s[48:51], 0 offen
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[140:147], v[149:156], v[124:131], v[97:104]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[124:127], v54
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v152, 0x1800, v198
	v_add_nc_u32_e32 v153, 0x1c00, v198
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[140:147], v[157:164], v[132:139], v[140:147]
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(1)
	ds_load_b128 v[128:131], v0
	scratch_load_b32 v0, off, off offset:188 ; 4-byte Folded Reload
	v_dual_mov_b32 v73, v54 :: v_dual_mov_b32 v54, v148
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[140:147], v[165:172], v[124:131], v[140:147]
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	ds_load_b128 v[124:127], v0
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[128:131], v0
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v0, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[140:147], v[173:180], v[124:131], v[140:147]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v128, 0x1400, v198
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v254, s58, v140, -v34
	v_fma_f32 v253, s58, v141, -v34
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v248, s58, v142, -v34
	v_fma_f32 v249, s58, v143, -v34
	v_fma_f32 v252, s58, v144, -v34
	v_fma_f32 v250, s58, v145, -v34
	v_fma_f32 v251, s58, v146, -v34
	v_fma_f32 v247, s58, v147, -v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v34, s1, v202, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v35, s1, v0, 2
	scratch_load_b32 v0, off, off offset:200 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v41, 0x80000000, v35, s4
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v35, s1, v0, 2
	scratch_load_b32 v0, off, off offset:204 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v45, 0x80000000, v35, s4
	v_add_lshl_u32 v35, s1, v90, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v124, 0x80000000, v35, s4
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v35, s1, v0, 2
	v_cndmask_b32_e64 v125, 0x80000000, v35, s4
	v_add_lshl_u32 v35, s1, v96, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v126, 0x80000000, v35, s4
	v_add_lshl_u32 v35, s1, v56, 2
	v_mov_b32_e32 v56, v189
	v_cndmask_b32_e64 v127, 0x80000000, v35, s4
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v255, v33, s[52:55], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_b128 v[33:36], v34, s[36:39], 0 offen
	buffer_load_b128 v[37:40], v37, s[36:39], 0 offen
	buffer_load_b128 v[41:44], v41, s[36:39], 0 offen
	buffer_load_b128 v[45:48], v45, s[36:39], 0 offen
	buffer_load_b128 v[205:208], v124, s[36:39], 0 offen
	buffer_load_b128 v[209:212], v125, s[36:39], 0 offen
	buffer_load_b128 v[226:229], v126, s[36:39], 0 offen
	buffer_load_b128 v[230:233], v127, s[36:39], 0 offen
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
	ds_store_b128 v124, v[205:208] offset:4096
	s_waitcnt vmcnt(2)
	ds_store_b128 v124, v[209:212] offset:4112
	s_waitcnt vmcnt(1)
	ds_store_b128 v124, v[226:229] offset:6144
	s_waitcnt vmcnt(0)
	ds_store_b128 v124, v[230:233] offset:6160
	v_add_nc_u32_e32 v124, 0x400, v198
	v_add_nc_u32_e32 v126, 0xc00, v198
	v_add_nc_u32_e32 v125, 0x800, v198
	v_add_nc_u32_e32 v127, 0x1000, v198
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
	ds_store_b128 v196, v[33:36]
	ds_store_b128 v196, v[205:208] offset:4096
	ds_store_b128 v123, v[37:40]
	ds_store_b128 v123, v[209:212] offset:4096
	ds_store_b128 v194, v[41:44]
	ds_store_b128 v194, v[226:229] offset:4096
	ds_store_b128 v93, v[45:48]
	ds_store_b128 v93, v[230:233] offset:4096
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:136 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v33, 0, v188
	ds_load_b128 v[33:36], v33
	ds_load_b128 v[37:40], v64
	v_mov_b32_e32 v93, v123
	v_mov_b32_e32 v123, v92
	v_bfe_u32 v188, v127, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v188, v127, v188, 0x7fff
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
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v208.h, 0x7fff, v48.h, s9
	s_waitcnt vmcnt(0)
	ds_load_b128 v[33:36], v0
	scratch_load_b32 v0, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v196, v33, 16, 1
	v_cmp_o_f32_e64 s10, v33, v33
	v_cmp_o_f32_e64 s11, v34, v34
	v_cmp_o_f32_e64 s12, v35, v35
	v_cmp_o_f32_e64 s13, v36, v36
	v_add3_u32 v33, v33, v196, 0x7fff
	v_bfe_u32 v196, v34, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v209.l, 0x7fff, v33.h, s10
	v_add3_u32 v34, v34, v196, 0x7fff
	v_bfe_u32 v196, v35, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v209.h, 0x7fff, v34.h, s11
	v_add3_u32 v35, v35, v196, 0x7fff
	v_bfe_u32 v196, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v210.l, 0x7fff, v35.h, s12
	v_add3_u32 v36, v36, v196, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v210.h, 0x7fff, v36.h, s13
	s_waitcnt vmcnt(0)
	ds_load_b128 v[37:40], v0
	scratch_load_b32 v0, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v196, v37, 16, 1
	v_cmp_o_f32_e64 s14, v37, v37
	v_cmp_o_f32_e64 s15, v38, v38
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v40, v40
	v_add3_u32 v37, v37, v196, 0x7fff
	v_bfe_u32 v196, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v211.l, 0x7fff, v37.h, s14
	v_add3_u32 v38, v38, v196, 0x7fff
	v_bfe_u32 v196, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v211.h, 0x7fff, v38.h, s15
	v_add3_u32 v39, v39, v196, 0x7fff
	v_bfe_u32 v196, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v212.l, 0x7fff, v39.h, s16
	v_add3_u32 v40, v40, v196, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v212.h, 0x7fff, v40.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[33:36], off, off
	scratch_load_b128 v[37:40], off, off offset:16
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[33:40], v[205:212], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[33:36], v0
	scratch_load_b32 v0, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
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
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v206.l, 0x7fff, v43.h, s2
	v_add3_u32 v44, v36, v33, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v206.h, 0x7fff, v44.h, s3
	s_waitcnt vmcnt(0)
	ds_load_b128 v[37:40], v0
	scratch_load_b32 v0, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v33, v37, 16, 1
	v_cmp_o_f32_e64 s6, v37, v37
	v_cmp_o_f32_e64 s7, v38, v38
	v_cmp_o_f32_e64 s8, v39, v39
	v_cmp_o_f32_e64 s9, v40, v40
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
	ds_load_b128 v[33:36], v192
	ds_load_b128 v[37:40], v193
	v_cndmask_b16 v208.h, 0x7fff, v48.h, s9
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v196, v33, 16, 1
	v_cmp_o_f32_e64 s10, v33, v33
	v_cmp_o_f32_e64 s11, v34, v34
	v_cmp_o_f32_e64 s12, v35, v35
	v_cmp_o_f32_e64 s13, v36, v36
	v_add3_u32 v33, v33, v196, 0x7fff
	v_bfe_u32 v196, v34, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s14, v37, v37
	v_cmp_o_f32_e64 s15, v38, v38
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v40, v40
	v_add3_u32 v34, v34, v196, 0x7fff
	v_bfe_u32 v196, v35, 16, 1
	v_cndmask_b16 v209.l, 0x7fff, v33.h, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v209.h, 0x7fff, v34.h, s11
	v_add3_u32 v35, v35, v196, 0x7fff
	v_bfe_u32 v196, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v210.l, 0x7fff, v35.h, s12
	v_add3_u32 v36, v36, v196, 0x7fff
	v_bfe_u32 v196, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v210.h, 0x7fff, v36.h, s13
	v_add3_u32 v37, v37, v196, 0x7fff
	v_bfe_u32 v196, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v211.l, 0x7fff, v37.h, s14
	v_add3_u32 v38, v38, v196, 0x7fff
	v_bfe_u32 v196, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v211.h, 0x7fff, v38.h, s15
	v_add3_u32 v39, v39, v196, 0x7fff
	v_bfe_u32 v196, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v212.l, 0x7fff, v39.h, s16
	v_add3_u32 v40, v40, v196, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v212.h, 0x7fff, v40.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[33:36], off, off offset:32
	scratch_load_b128 v[37:40], off, off offset:48
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[33:40], v[205:212], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[33:36], v195
	ds_load_b128 v[37:40], v49
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
	ds_load_b128 v[33:36], v235
	ds_load_b128 v[37:40], v236
	v_cndmask_b16 v208.h, 0x7fff, v48.h, s9
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v196, v33, 16, 1
	v_cmp_o_f32_e64 s10, v33, v33
	v_cmp_o_f32_e64 s11, v34, v34
	v_cmp_o_f32_e64 s12, v35, v35
	v_cmp_o_f32_e64 s13, v36, v36
	v_add3_u32 v33, v33, v196, 0x7fff
	v_bfe_u32 v196, v34, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s14, v37, v37
	v_cmp_o_f32_e64 s15, v38, v38
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v40, v40
	v_add3_u32 v34, v34, v196, 0x7fff
	v_bfe_u32 v196, v35, 16, 1
	v_cndmask_b16 v209.l, 0x7fff, v33.h, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v209.h, 0x7fff, v34.h, s11
	v_add3_u32 v35, v35, v196, 0x7fff
	v_bfe_u32 v196, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v210.l, 0x7fff, v35.h, s12
	v_add3_u32 v36, v36, v196, 0x7fff
	v_bfe_u32 v196, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v210.h, 0x7fff, v36.h, s13
	v_add3_u32 v37, v37, v196, 0x7fff
	v_bfe_u32 v196, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v211.l, 0x7fff, v37.h, s14
	v_add3_u32 v38, v38, v196, 0x7fff
	v_bfe_u32 v196, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v211.h, 0x7fff, v38.h, s15
	v_add3_u32 v39, v39, v196, 0x7fff
	v_bfe_u32 v196, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v212.l, 0x7fff, v39.h, s16
	v_add3_u32 v40, v40, v196, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v212.h, 0x7fff, v40.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[33:36], off, off offset:64
	scratch_load_b128 v[37:40], off, off offset:80
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[33:40], v[205:212], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[33:36], v237
	ds_load_b128 v[37:40], v238
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
	v_or_b32_e32 v41, s62, v94
	v_mov_b32_e32 v94, v58
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v205.h, 0x7fff, v42.h, s1
	v_add3_u32 v43, v35, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	v_add_nc_u32_e32 v42, s41, v41
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v41, s57, v41
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s62, s62, 32
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v206.l, 0x7fff, v43.h, s2
	v_add3_u32 v44, v36, v33, 0x7fff
	v_bfe_u32 v33, v37, 16, 1
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v0, v42
	v_cmp_ge_i32_e64 s1, v57, v42
	v_cmp_ge_i32_e64 s2, v58, v42
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v206.h, 0x7fff, v44.h, s3
	v_add3_u32 v45, v37, v33, 0x7fff
	v_bfe_u32 v33, v38, 16, 1
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s3, v95, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v207.l, 0x7fff, v45.h, s6
	v_add3_u32 v46, v38, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s6, v244, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v207.h, 0x7fff, v46.h, s7
	v_add3_u32 v47, v39, v33, 0x7fff
	v_bfe_u32 v33, v40, 16, 1
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s7, v245, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v208.l, 0x7fff, v47.h, s8
	v_add3_u32 v48, v40, v33, 0x7fff
	ds_load_b128 v[33:36], v239
	ds_load_b128 v[37:40], v240
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s8, v246, v42
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v208.h, 0x7fff, v48.h, s9
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s9, v92, v42
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v196, v33, 16, 1
	v_cmp_o_f32_e64 s10, v33, v33
	v_cmp_o_f32_e64 s11, v34, v34
	v_cmp_o_f32_e64 s12, v35, v35
	v_cmp_o_f32_e64 s13, v36, v36
	v_add3_u32 v33, v33, v196, 0x7fff
	v_bfe_u32 v196, v34, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s14, v37, v37
	v_cmp_o_f32_e64 s15, v38, v38
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v40, v40
	v_add3_u32 v34, v34, v196, 0x7fff
	v_bfe_u32 v196, v35, 16, 1
	v_cndmask_b16 v209.l, 0x7fff, v33.h, s10
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s10, v0, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v209.h, 0x7fff, v34.h, s11
	v_add3_u32 v35, v35, v196, 0x7fff
	v_bfe_u32 v196, v36, 16, 1
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s11, v57, v41
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s10, vcc_lo, s10
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v210.l, 0x7fff, v35.h, s12
	v_add3_u32 v36, v36, v196, 0x7fff
	v_bfe_u32 v196, v37, 16, 1
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s12, v58, v41
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 vcc_lo, s0, s10
	s_and_b32 s1, s1, s11
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v210.h, 0x7fff, v36.h, s13
	v_add3_u32 v37, v37, v196, 0x7fff
	v_bfe_u32 v196, v38, 16, 1
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s13, v95, v41
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s1, s0, s1
	s_and_b32 s2, s2, s12
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v211.l, 0x7fff, v37.h, s14
	v_add3_u32 v38, v38, v196, 0x7fff
	v_bfe_u32 v196, v39, 16, 1
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s14, v244, v41
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s2, s0, s2
	s_and_b32 s3, s3, s13
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v211.h, 0x7fff, v38.h, s15
	v_add3_u32 v39, v39, v196, 0x7fff
	v_bfe_u32 v196, v40, 16, 1
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s15, v245, v41
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s3, s0, s3
	s_and_b32 s6, s6, s14
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v212.l, 0x7fff, v39.h, s16
	v_add3_u32 v40, v40, v196, 0x7fff
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s16, v246, v41
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s6, s0, s6
	s_and_b32 s7, s7, s15
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_bfe_u32 v196, v140, 16, 1
	v_cndmask_b16 v212.h, 0x7fff, v40.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[33:36], off, off offset:96
	scratch_load_b128 v[37:40], off, off offset:112
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s17, v92, v41
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v254
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s7, s0, s7
	s_and_b32 s8, s8, s16
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s8, s0, s8
	s_and_b32 s9, s9, s17
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_barrier
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s9, s0, s9
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s10, v138, v138
	v_cmp_o_f32_e64 s11, v136, v136
	v_cmp_o_f32_e64 s12, v134, v134
	v_cmp_o_f32_e64 s13, v132, v132
	v_cmp_o_f32_e64 s14, v130, v130
	v_cmp_o_f32_e64 s15, v128, v128
	v_cmp_o_f32_e64 s16, v126, v126
	v_cmp_o_f32_e64 s17, v124, v124
	v_add3_u32 v196, v140, v196, 0x7fff
	v_dual_mov_b32 v58, v63 :: v_dual_mov_b32 v63, v64
	v_mov_b32_e32 v64, v62
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_u32 s62, s59
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[33:40], v[205:212], v[97:104]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v33, v97, v255
	v_sub_f32_e32 v36, v100, v255
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v34, v98, v255
	v_dual_sub_f32 v35, v99, v255 :: v_dual_cndmask_b32 v98, 0, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_sub_f32 v40, v104, v255 :: v_dual_mul_f32 v33, v98, v33
	v_dual_sub_f32 v38, v102, v255 :: v_dual_mul_f32 v33, s35, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v41, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_add3_u32 v33, v33, v41, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v253
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v33.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v97, 0, v41, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_dual_sub_f32 v39, v103, v255 :: v_dual_mul_f32 v34, v97, v34
	v_dual_sub_f32 v37, v101, v255 :: v_dual_mul_f32 v34, s35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v41, v34, 16, 1
	v_cmp_o_f32_e64 s1, v34, v34
	v_add3_u32 v34, v34, v41, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v248
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v248, 0, v41, s2
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v35, v248, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v35, s35, v35
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v41, v35, 16, 1
	v_cmp_o_f32_e64 s2, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v35, v35, v41, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v249
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v249, 0, v41, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v253, 0, v189
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v189, v125, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v36, v249, v36
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v189, v125, v189, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v36, s35, v36
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v41, v36, 16, 1
	v_cmp_o_f32_e64 s3, v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v36, v36, v41, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v252
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
	v_exp_f32_e32 v41, v250
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.h, 0x7fff, v37.h, s6
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v253, v33
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s1, v99, v99
	v_cmp_o_f32_e64 s6, v249, v249
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v253, v33 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v250, 0, v41, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v38, v250, v38
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v38, s35, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v41, v38, 16, 1
	v_cmp_o_f32_e64 s7, v38, v38
	v_add3_u32 v38, v38, v41, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v251
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
	v_cndmask_b32_e64 v251, 0, v41, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v39, v251, v39
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s7, v251, v251
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v39, s35, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v41, v39, 16, 1
	v_cmp_o_f32_e64 s8, v39, v39
	v_add3_u32 v39, v39, v41, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v247
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v247, 0, v62
	v_mov_b32_e32 v62, v192
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.h, 0x7fff, v39.h, s8
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v221, v33
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v36.h, s3
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v250, v250
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v221, v33 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v252, 0, v41, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v40, v252, v40
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s8, v252, v252
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
	ds_load_b128 v[205:208], v247
	ds_load_b128 v[209:212], v223
	ds_load_b128 v[226:229], v224
	ds_load_b128 v[230:233], v225
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s9, v140, v140
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v196.h, 0x7fff, v196.h, s9
	v_cmp_o_f32_e64 s9, v141, v141
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, 0, v0
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
	v_bfe_u32 v120, v142, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v120, v142, v120, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[33:40], v[226:233], v[25:32]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v33, v98, 16, 1
	v_bfe_u32 v37, v252, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v39, v164, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v36, v251, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v38, v162, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v33, v98, v33, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[17:24], v[108:115], v[205:212], v[17:24]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_mov_b16_e32 v113.l, 0
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v37, v252, v37, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v39, v164, v39, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v113.h, 0x7fff, v33.h, vcc_lo
	v_add3_u32 v36, v251, v36, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v118.l, v113.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v118.h, 0x7fff, v37.h, s8
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v100.l, v113.l
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v33, v98, v113
	.loc	1 732 54 is_stmt 1              ; attention_backward.py:732:54
	v_mov_b16_e32 v39.l, v113.l
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v116.l, v113.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v117.h, 0x7fff, v36.h, s7
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v36, v158, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v34, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v37, v160, 16, 1
	v_add3_u32 v38, v162, v38, 0x7fff
	v_add3_u32 v36, v158, v36, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v98, v33, v34, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v33, v99, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v37, v160, v37, 0x7fff
	v_bfe_u32 v40, v166, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[17:24], v[41:48], v[226:233], v[17:24]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v41, v168, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v33, v99, v33, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v43, v172, 16, 1
	v_add3_u32 v40, v166, v40, 0x7fff
	v_bfe_u32 v44, v174, 16, 1
	v_add3_u32 v41, v168, v41, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v100.h, 0x7fff, v33.h, s1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v43, v172, v43, 0x7fff
	v_bfe_u32 v45, v176, 16, 1
	v_add3_u32 v44, v174, v44, 0x7fff
	v_bfe_u32 v46, v178, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v33, v99, v100
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v47, v180, 16, 1
	v_add3_u32 v45, v176, v45, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v115.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v46, v178, v46, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v34, v33, 16, 1
	v_cmp_o_f32_e64 s1, v33, v33
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v47, v180, v47, 0x7fff
	v_bfe_u32 v48, v182, 16, 1
	v_bfe_u32 v42, v170, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v99, v33, v34, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v33, v97, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v114.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v48, v182, v48, 0x7fff
	v_add3_u32 v42, v170, v42, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v117.l, v113.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v33, v97, v33, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v33.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v205, v138, 16, 1
	v_bfe_u32 v206, v136, 16, 1
	v_bfe_u32 v207, v134, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s2
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v253, v100 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v208, v132, 16, 1
	v_bfe_u32 v209, v130, 16, 1
	v_bfe_u32 v210, v128, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v34, v97, v33
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v220, v33
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v33, v248, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v211, v126, 16, 1
	v_bfe_u32 v212, v124, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v35, v34, 16, 1
	v_cmp_o_f32_e64 s2, v34, v34
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v33, v248, v33, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v98.h, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v184, v184
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v34, v34, v35, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v35, v250, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s7, v144, v144
	v_cmp_o_f32_e64 s8, v142, v142
	v_add3_u32 v205, v138, v205, 0x7fff
	v_add3_u32 v206, v136, v206, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v35, v250, v35, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v207, v134, v207, 0x7fff
	v_add3_u32 v208, v132, v208, 0x7fff
	v_add3_u32 v209, v130, v209, 0x7fff
	v_add3_u32 v210, v128, v210, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v114.h, 0x7fff, v35.h, s3
	v_bfe_u32 v35, v249, 16, 1
	v_cmp_o_f32_e64 s3, v248, v248
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v211, v126, v211, 0x7fff
	v_add3_u32 v212, v124, v212, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v36.l, v113.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v35, v249, v35, 0x7fff
	v_cndmask_b16 v115.h, 0x7fff, v33.h, s3
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.h, 0x7fff, v99.h, s1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s1, v186, v186
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v37.l, v113.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v116.h, 0x7fff, v35.h, s6
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v253, v113
	ds_store_b16_d16_hi v220, v114 offset:512
	ds_store_b16_d16_hi v221, v115
	ds_store_b16_d16_hi v221, v117 offset:512
	ds_store_b16_d16_hi v222, v116
	ds_store_b16_d16_hi v222, v118 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[105:108], v247
	ds_load_b128 v[109:112], v223
	ds_load_b128 v[97:100], v224
	ds_load_b128 v[101:104], v225
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v35, v186, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v116, v249, v116
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v253, v33
	ds_store_b16_d16_hi v253, v33 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s2
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v34, v184, 16, 1
	v_add3_u32 v35, v186, v35, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v115, v248, v115 :: v_dual_sub_f32 v114, v250, v114
	v_sub_f32_e32 v117, v251, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v34, v184, v34, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v118, v252, v118
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v119, v115, 16, 1
	v_cmp_o_f32_e64 s2, v114, v114
	v_cmp_o_f32_e64 s3, v117, v117
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v33.h, 0x7fff, v34.h, vcc_lo
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s1
	v_bfe_u32 v35, v156, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v156, v156
	v_cmp_o_f32_e64 s1, v170, v170
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s6, v118, v118
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v38.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v35, v156, v35, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v35.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s1, v116, v116
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v40.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v35.h, 0x7fff, v35.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v158, v158
	v_cndmask_b16 v218.h, 0x7fff, v120.h, s8
	v_cndmask_b16 v255.h, 0x7fff, v205.h, s10
	v_cndmask_b16 v254.h, 0x7fff, v206.h, s11
	v_cndmask_b16 v253.h, 0x7fff, v207.h, s12
	v_cndmask_b16 v36.h, 0x7fff, v36.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v160, v160
	v_cndmask_b16 v252.h, 0x7fff, v208.h, s13
	v_cndmask_b16 v251.h, 0x7fff, v209.h, s14
	v_cndmask_b16 v250.h, 0x7fff, v210.h, s15
	v_cndmask_b16 v249.h, 0x7fff, v211.h, s16
	v_cndmask_b16 v37.h, 0x7fff, v37.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v162, v162
	v_cndmask_b16 v248.h, 0x7fff, v212.h, s17
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v41.l, v113.l
	v_mov_b16_e32 v42.l, v113.l
	v_mov_b16_e32 v43.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v38.h, 0x7fff, v38.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v164, v164
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v44.l, v113.l
	v_mov_b16_e32 v45.l, v113.l
	v_mov_b16_e32 v46.l, v113.l
	v_mov_b16_e32 v47.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v39.h, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v166, v166
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v48.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v192, v162, v38 :: v_dual_sub_f32 v201, v160, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v200, v164, v39
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v40.h, 0x7fff, v40.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v168, v168
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v39.l, v218.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v158, v36
	v_dual_mov_b32 v92, v57 :: v_dual_sub_f32 v219, v166, v40
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v41.h, 0x7fff, v41.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v172, v172
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v40.l, v196.h
	v_mov_b32_e32 v57, v191
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v191, v156, v35 :: v_dual_sub_f32 v170, v170, v42
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v43.h, 0x7fff, v43.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v174, v174
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v42.l, v254.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v168, v168, v41
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v41.l, v255.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v172, v172, v43
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v44.h, 0x7fff, v44.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v176, v176
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v43.l, v253.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v228.l, v113.l
	v_mov_b16_e64 v230.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v166, v174, v44
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v45.h, 0x7fff, v45.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v178, v178
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v44.l, v252.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v232.l, v113.l
	v_mov_b16_e64 v226.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v164, v176, v45
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v46.h, 0x7fff, v46.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v180, v180
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v45.l, v251.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v227.l, v113.l
	v_mov_b16_e64 v229.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v162, v178, v46
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v47.h, 0x7fff, v47.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v182, v182
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v46.l, v250.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v231.l, v113.l
	v_mov_b16_e64 v233.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v160, v180, v47
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v48.h, 0x7fff, v48.h, vcc_lo
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e32 vcc_lo, v115, v115
	v_add3_u32 v115, v115, v119, 0x7fff
	v_bfe_u32 v119, v116, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v47.l, v249.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v158, v182, v48
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v48.l, v248.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v199.l, v113.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v116, v116, v119, 0x7fff
	v_bfe_u32 v119, v114, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v213.l, v113.l
	v_mov_b16_e64 v214.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s8, v143, v143
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v215.l, v113.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v114, v114, v119, 0x7fff
	v_bfe_u32 v119, v117, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s10, v139, v139
	v_cmp_o_f32_e64 s11, v137, v137
	v_cmp_o_f32_e64 s12, v135, v135
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v34.l, 0x7fff, v114.h, s2
	v_add3_u32 v117, v117, v119, 0x7fff
	v_bfe_u32 v119, v118, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v220, v33
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v115.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v220, v34 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v34.l, 0x7fff, v117.h, s3
	v_add3_u32 v118, v118, v119, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v114, v154, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v221, v33
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v116.h, s1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v221, v34 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v34.l, 0x7fff, v118.h, s6
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v115, v152, 16, 1
	v_bfe_u32 v116, v150, 16, 1
	v_bfe_u32 v117, v148, 16, 1
	v_bfe_u32 v118, v146, 16, 1
	v_bfe_u32 v119, v144, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v154, v154
	v_cmp_o_f32_e64 s1, v152, v152
	v_cmp_o_f32_e64 s2, v150, v150
	v_cmp_o_f32_e64 s3, v148, v148
	v_cmp_o_f32_e64 s6, v146, v146
	v_add3_u32 v114, v154, v114, 0x7fff
	v_add3_u32 v115, v152, v115, 0x7fff
	v_add3_u32 v116, v150, v116, 0x7fff
	v_add3_u32 v117, v148, v117, 0x7fff
	v_add3_u32 v118, v146, v118, 0x7fff
	v_add3_u32 v119, v144, v119, 0x7fff
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v222, v33
	ds_store_b16 v222, v34 offset:512
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v33.l, v113.l
	v_mov_b16_e32 v34.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v199.h, 0x7fff, v114.h, vcc_lo
	v_cndmask_b16 v213.h, 0x7fff, v115.h, s1
	v_cndmask_b16 v214.h, 0x7fff, v116.h, s2
	v_cndmask_b16 v215.h, 0x7fff, v117.h, s3
	v_cndmask_b16 v216.h, 0x7fff, v118.h, s6
	v_cndmask_b16 v217.h, 0x7fff, v119.h, s7
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[205:208], v247
	ds_load_b128 v[209:212], v223
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v37.l, v216.h
	v_mov_b16_e64 v38.l, v217.h
	v_mov_b16_e64 v36.l, v215.h
	v_mov_b16_e64 v35.l, v214.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v186, v186, v34
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v34.l, v213.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v184, v184, v33
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v33.l, v199.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v185, v185
	v_bfe_u32 v114, v169, 16, 1
	v_cmp_o_f32_e64 s1, v187, v187
	v_bfe_u32 v115, v171, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[105:112], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s2, v151, v151
	v_add3_u32 v114, v169, v114, 0x7fff
	v_cmp_o_f32_e64 s3, v149, v149
	v_add3_u32 v115, v171, v115, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[97:104], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s6, v147, v147
	v_cmp_o_f32_e64 s7, v145, v145
	v_cmp_o_f32_e64 s13, v133, v133
	v_cmp_o_f32_e64 s14, v131, v131
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
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v33.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v35.h, 0x7fff, v35.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v159, v159
	v_add3_u32 v39, v165, v39, 0x7fff
	v_add3_u32 v40, v167, v40, 0x7fff
	v_add3_u32 v34, v187, v34, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v34.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v36.h, 0x7fff, v36.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v161, v161
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v35.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s1
	v_cmp_o_f32_e64 s1, v171, v171
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v36.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v37.h, 0x7fff, v37.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v163, v163
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v37.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v227.h, 0x7fff, v115.h, s1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v38.l, v113.l
	v_mov_b16_e32 v39.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v38.h, 0x7fff, v38.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v165, v165
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v40.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v174, v185, v33
	v_sub_f32_e32 v176, v187, v34
	v_sub_f32_e32 v178, v157, v35
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v39.h, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v167, v167
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v180, v159, v36
	v_dual_sub_f32 v182, v161, v37 :: v_dual_sub_f32 v185, v163, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_sub_f32_e32 v187, v165, v39
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v40.h, 0x7fff, v40.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v169, v169
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v120, v171, v227
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v157, v155, 16, 1
	v_bfe_u32 v159, v153, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v247, v167, v40
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v226.h, 0x7fff, v114.h, vcc_lo
	v_bfe_u32 v114, v173, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v173, v173
	v_bfe_u32 v161, v151, 16, 1
	v_bfe_u32 v163, v149, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v156, v169, v226
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v114, v173, v114, 0x7fff
	v_bfe_u32 v165, v147, 16, 1
	v_bfe_u32 v167, v145, 16, 1
	v_bfe_u32 v169, v143, 16, 1
	v_bfe_u32 v171, v141, 16, 1
	v_cndmask_b16 v228.h, 0x7fff, v114.h, vcc_lo
	v_bfe_u32 v114, v175, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v175, v175
	v_cmp_o_f32_e64 s1, v153, v153
	v_add3_u32 v157, v155, v157, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v119, v173, v228
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v114, v175, v114, 0x7fff
	v_add3_u32 v159, v153, v159, 0x7fff
	v_add3_u32 v161, v151, v161, 0x7fff
	v_add3_u32 v163, v149, v163, 0x7fff
	v_add3_u32 v165, v147, v165, 0x7fff
	v_cndmask_b16 v229.h, 0x7fff, v114.h, vcc_lo
	v_bfe_u32 v114, v177, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v177, v177
	v_add3_u32 v167, v145, v167, 0x7fff
	v_add3_u32 v169, v143, v169, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v118, v175, v229
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v114, v177, v114, 0x7fff
	v_add3_u32 v171, v141, v171, 0x7fff
	v_bfe_u32 v173, v139, 16, 1
	v_bfe_u32 v175, v137, 16, 1
	v_cmp_o_f32_e64 s15, v129, v129
	v_cndmask_b16 v230.h, 0x7fff, v114.h, vcc_lo
	v_bfe_u32 v114, v179, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v179, v179
	v_cmp_o_f32_e64 s16, v127, v127
	v_cmp_o_f32_e64 s17, v125, v125
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v117, v177, v230
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v114, v179, v114, 0x7fff
	v_bfe_u32 v177, v135, 16, 1
	v_add3_u32 v173, v139, v173, 0x7fff
	v_add3_u32 v175, v137, v175, 0x7fff
	v_cndmask_b16 v234.h, 0x7fff, v159.h, s1
	v_cndmask_b16 v231.h, 0x7fff, v114.h, vcc_lo
	v_bfe_u32 v114, v181, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v181, v181
	v_add3_u32 v177, v135, v177, 0x7fff
	v_cndmask_b16 v49.h, 0x7fff, v163.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v116, v179, v231
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v114, v181, v114, 0x7fff
	v_bfe_u32 v179, v133, 16, 1
	v_cndmask_b16 v50.h, 0x7fff, v165.h, s6
	v_cndmask_b16 v51.h, 0x7fff, v167.h, s7
	v_cndmask_b16 v52.h, 0x7fff, v169.h, s8
	v_cndmask_b16 v232.h, 0x7fff, v114.h, vcc_lo
	v_bfe_u32 v114, v183, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v183, v183
	v_add3_u32 v179, v133, v179, 0x7fff
	v_cndmask_b16 v53.h, 0x7fff, v171.h, s9
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v115, v181, v232
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v114, v183, v114, 0x7fff
	v_bfe_u32 v181, v131, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v234.l, v113.l
	v_mov_b32_e32 v60, v195
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v195.h, 0x7fff, v161.h, s2
	v_cndmask_b16 v233.h, 0x7fff, v114.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v155, v155
	v_add3_u32 v181, v131, v181, 0x7fff
	v_cndmask_b16 v169.h, 0x7fff, v173.h, s10
	v_cndmask_b16 v167.h, 0x7fff, v175.h, s11
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v114, v183, v233
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v183, v129, 16, 1
	v_cndmask_b16 v193.h, 0x7fff, v157.h, vcc_lo
	v_cndmask_b16 v165.h, 0x7fff, v177.h, s12
	v_cndmask_b16 v163.h, 0x7fff, v179.h, s13
	v_cndmask_b16 v161.h, 0x7fff, v181.h, s14
	v_add3_u32 v183, v129, v183, 0x7fff
	v_cndmask_b16 v157.h, 0x7fff, v188.h, s16
	v_cndmask_b16 v113.h, 0x7fff, v189.h, s17
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v40.l, v53.h
	v_mov_b16_e32 v39.l, v52.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v159.h, 0x7fff, v183.h, s15
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v38.l, v51.h
	v_mov_b16_e32 v37.l, v50.h
	v_mov_b16_e32 v36.l, v49.h
	v_mov_b16_e64 v35.l, v195.h
	v_mov_b16_e64 v34.l, v234.h
	v_mov_b16_e64 v33.l, v193.h
	v_mov_b16_e64 v233.l, v113.h
	v_mov_b16_e64 v232.l, v157.h
	v_mov_b16_e64 v231.l, v159.h
	v_mov_b16_e64 v230.l, v161.h
	v_mov_b16_e64 v229.l, v163.h
	v_mov_b16_e64 v228.l, v165.h
	v_mov_b16_e64 v227.l, v167.h
	v_mov_b16_e64 v226.l, v169.h
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[105:112], v[9:16]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v216.l, v113.l
	v_mov_b16_e64 v217.l, v113.l
	v_mov_b16_e64 v218.l, v113.l
	v_mov_b16_e64 v196.l, v113.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[226:233], v[97:104], v[9:16]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v0, v0
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v163.l, v113.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v184, v184
	v_cmp_o_f32_e64 s3, v186, v186
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[205:212], v[9:16]
	ds_load_b128 v[33:36], v224
	ds_load_b128 v[37:40], v225
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s7, v191, v191
	v_cmp_o_f32_e64 s11, v201, v201
	v_cmp_o_f32_e64 s13, v192, v192
	v_cmp_o_f32_e64 s15, v200, v200
	v_cmp_o_f32_e64 s17, v219, v219
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v195.l, v113.l
	v_mov_b16_e64 v193.l, v113.l
	v_mov_b16_e32 v49.l, v113.l
	v_mov_b16_e32 v50.l, v113.l
	v_mov_b16_e64 v159.l, v113.l
	v_mov_b16_e32 v51.l, v113.l
	v_mov_b16_e32 v52.l, v113.l
	v_mov_b16_e32 v53.l, v113.l
	v_mov_b16_e64 v255.l, v113.l
	v_mov_b16_e64 v254.l, v113.l
	v_mov_b16_e64 v253.l, v113.l
	v_mov_b16_e64 v252.l, v113.l
	v_mov_b16_e64 v251.l, v113.l
	v_mov_b16_e64 v250.l, v113.l
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[33:40], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[226:233], v[33:40], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v39, v148, v215
	v_sub_f32_e32 v33, v154, v199
	v_sub_f32_e32 v35, v152, v213
	v_dual_sub_f32 v37, v150, v214 :: v_dual_sub_f32 v42, v144, v217
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v40, v39, 16, 1
	v_cmp_o_f32_e64 s8, v39, v39
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v44, v142, v218
	v_sub_f32_e32 v46, v140, v196
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v34, v33, 16, 1
	v_add3_u32 v39, v39, v40, 0x7fff
	v_bfe_u32 v40, v0, 16, 1
	v_bfe_u32 v36, v35, 16, 1
	v_bfe_u32 v38, v37, 16, 1
	v_bfe_u32 v43, v42, 16, 1
	v_bfe_u32 v45, v44, 16, 1
	v_add3_u32 v0, v0, v40, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v40, v146, v216
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v47, v46, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_add3_u32 v33, v33, v34, 0x7fff
	v_bfe_u32 v34, v184, 16, 1
	v_bfe_u32 v41, v40, 16, 1
	v_cmp_o_f32_e64 s2, v35, v35
	v_add3_u32 v35, v35, v36, 0x7fff
	v_bfe_u32 v36, v186, 16, 1
	v_cmp_o_f32_e64 s6, v37, v37
	v_add3_u32 v37, v37, v38, 0x7fff
	v_bfe_u32 v38, v191, 16, 1
	v_cmp_o_f32_e64 s10, v40, v40
	v_add3_u32 v40, v40, v41, 0x7fff
	v_bfe_u32 v41, v201, 16, 1
	v_cmp_o_f32_e64 s12, v42, v42
	v_add3_u32 v42, v42, v43, 0x7fff
	v_bfe_u32 v43, v192, 16, 1
	v_cmp_o_f32_e64 s14, v44, v44
	v_add3_u32 v44, v44, v45, 0x7fff
	v_bfe_u32 v45, v200, 16, 1
	v_cmp_o_f32_e64 s16, v46, v46
	v_add3_u32 v46, v46, v47, 0x7fff
	v_bfe_u32 v47, v219, 16, 1
	v_add3_u32 v34, v184, v34, 0x7fff
	v_add3_u32 v36, v186, v36, 0x7fff
	v_add3_u32 v38, v191, v38, 0x7fff
	v_add3_u32 v41, v201, v41, 0x7fff
	v_add3_u32 v43, v192, v43, 0x7fff
	v_add3_u32 v45, v200, v45, 0x7fff
	v_add3_u32 v47, v219, v47, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v33.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s1
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s2
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s3
	v_cndmask_b16 v35.l, 0x7fff, v37.h, s6
	v_cndmask_b16 v35.h, 0x7fff, v38.h, s7
	v_cndmask_b16 v36.l, 0x7fff, v39.h, s8
	v_cndmask_b16 v36.h, 0x7fff, v0.h, s9
	v_cndmask_b16 v37.l, 0x7fff, v40.h, s10
	v_cndmask_b16 v37.h, 0x7fff, v41.h, s11
	v_cndmask_b16 v38.l, 0x7fff, v42.h, s12
	v_cndmask_b16 v38.h, 0x7fff, v43.h, s13
	v_cndmask_b16 v39.l, 0x7fff, v44.h, s14
	v_cndmask_b16 v39.h, 0x7fff, v45.h, s15
	v_cndmask_b16 v40.l, 0x7fff, v46.h, s16
	v_cndmask_b16 v40.h, 0x7fff, v47.h, s17
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v155, v193
	v_mov_b32_e32 v193, v59
	v_dual_mov_b32 v189, v56 :: v_dual_mov_b32 v56, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[105:112], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v33, v153, v234 :: v_dual_sub_f32 v34, v151, v195
	v_dual_sub_f32 v35, v149, v49 :: v_dual_sub_f32 v36, v147, v50
	v_mov_b32_e32 v191, v57
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v41, v33, 16, 1
	v_cmp_o_f32_e64 s2, v33, v33
	v_dual_mov_b32 v57, v92 :: v_dual_mov_b32 v92, v123
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v37, v145, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v41, v33, v41, 0x7fff
	v_bfe_u32 v33, v176, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v38, v143, v52
	v_dual_mov_b32 v148, v54 :: v_dual_sub_f32 v39, v141, v53
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v40, v0, 16, 1
	v_add3_u32 v42, v176, v33, 0x7fff
	v_bfe_u32 v33, v34, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cmp_o_f32_e64 s1, v174, v174
	v_add3_u32 v0, v0, v40, 0x7fff
	v_bfe_u32 v40, v174, 16, 1
	v_add3_u32 v43, v34, v33, 0x7fff
	v_bfe_u32 v33, v178, 16, 1
	v_cmp_o_f32_e64 s3, v176, v176
	v_cmp_o_f32_e64 s6, v34, v34
	v_add3_u32 v40, v174, v40, 0x7fff
	v_cmp_o_f32_e64 s7, v178, v178
	v_add3_u32 v44, v178, v33, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	v_cmp_o_f32_e64 s8, v35, v35
	v_cmp_o_f32_e64 s9, v180, v180
	v_cmp_o_f32_e64 s10, v36, v36
	v_cmp_o_f32_e64 s11, v182, v182
	v_add3_u32 v45, v35, v33, 0x7fff
	v_bfe_u32 v33, v180, 16, 1
	v_cmp_o_f32_e64 s12, v37, v37
	v_cmp_o_f32_e64 s13, v185, v185
	v_cmp_o_f32_e64 s14, v38, v38
	v_cmp_o_f32_e64 s15, v187, v187
	v_add3_u32 v46, v180, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v247, v247
	v_cndmask_b16 v34.l, 0x7fff, v41.h, s2
	v_cndmask_b16 v34.h, 0x7fff, v42.h, s3
	v_add3_u32 v47, v36, v33, 0x7fff
	v_bfe_u32 v33, v182, 16, 1
	v_cndmask_b16 v35.l, 0x7fff, v43.h, s6
	v_cndmask_b16 v35.h, 0x7fff, v44.h, s7
	v_cndmask_b16 v36.l, 0x7fff, v45.h, s8
	v_cndmask_b16 v36.h, 0x7fff, v46.h, s9
	v_add3_u32 v48, v182, v33, 0x7fff
	v_bfe_u32 v33, v37, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v249.l, v113.l
	v_mov_b16_e64 v248.l, v113.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v42, v128, v250
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v170, v170
	v_add3_u32 v49, v37, v33, 0x7fff
	v_bfe_u32 v33, v185, 16, 1
	v_cndmask_b16 v37.l, 0x7fff, v47.h, s10
	v_cndmask_b16 v37.h, 0x7fff, v48.h, s11
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v44, v126, v249
	v_sub_f32_e32 v46, v124, v248
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v50, v185, v33, 0x7fff
	v_bfe_u32 v33, v38, 16, 1
	v_bfe_u32 v43, v42, 16, 1
	v_bfe_u32 v45, v44, 16, 1
	v_bfe_u32 v47, v46, 16, 1
	v_cmp_o_f32_e64 s7, v172, v172
	v_add3_u32 v51, v38, v33, 0x7fff
	v_bfe_u32 v33, v187, 16, 1
	v_cndmask_b16 v38.l, 0x7fff, v49.h, s12
	v_cndmask_b16 v38.h, 0x7fff, v50.h, s13
	v_cmp_o_f32_e64 s12, v42, v42
	v_add3_u32 v42, v42, v43, 0x7fff
	v_add3_u32 v52, v187, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	v_bfe_u32 v43, v162, 16, 1
	v_cmp_o_f32_e64 s9, v166, v166
	v_cmp_o_f32_e64 s11, v164, v164
	v_cmp_o_f32_e64 s13, v162, v162
	v_add3_u32 v53, v39, v33, 0x7fff
	v_bfe_u32 v33, v247, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v51.h, s14
	v_cndmask_b16 v39.h, 0x7fff, v52.h, s15
	v_cmp_o_f32_e64 s14, v44, v44
	v_cndmask_b16 v40.l, 0x7fff, v53.h, s16
	v_add3_u32 v54, v247, v33, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v40.h, s1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v138, v255
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v44, v44, v45, 0x7fff
	v_cndmask_b16 v40.h, 0x7fff, v54.h, s17
	v_bfe_u32 v45, v160, 16, 1
	v_cmp_o_f32_e64 s16, v46, v46
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_add3_u32 v46, v46, v47, 0x7fff
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[105:112], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v136, v254
	v_sub_f32_e32 v36, v134, v253
	v_sub_f32_e32 v38, v132, v252
	v_sub_f32_e32 v40, v130, v251
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
	v_bfe_u32 v47, v158, 16, 1
	v_cmp_o_f32_e64 s1, v168, v168
	v_add3_u32 v33, v168, v33, 0x7fff
	v_add3_u32 v35, v170, v35, 0x7fff
	v_add3_u32 v37, v172, v37, 0x7fff
	v_add3_u32 v39, v166, v39, 0x7fff
	v_add3_u32 v41, v164, v41, 0x7fff
	v_add3_u32 v43, v162, v43, 0x7fff
	v_cmp_o_f32_e64 s15, v160, v160
	v_add3_u32 v45, v160, v45, 0x7fff
	v_cmp_o_f32_e64 s17, v158, v158
	v_add3_u32 v47, v158, v47, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v169.l, v113.l
	.loc	1 732 34                        ; attention_backward.py:732:34
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
	v_dual_sub_f32 v0, v139, v169 :: v_dual_mov_b32 v123, v93
	v_mov_b32_e32 v93, v204
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v156, v156
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[97:104], v[1:8]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v40, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v167.l, v113.l
	v_mov_b32_e32 v192, v62
	v_mov_b32_e32 v62, v64
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v0, v0, v40, 0x7fff
	v_bfe_u32 v40, v156, 16, 1
	v_dual_mov_b32 v64, v63 :: v_dual_sub_f32 v33, v137, v167
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v165.l, v113.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v35, v133, v163
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v40, v156, v40, 0x7fff
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[149:152], off, off offset:152
	scratch_load_b128 v[153:156], off, off offset:168
	v_bfe_u32 v41, v33, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v135, v165
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v33, v33
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v161.l, v113.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v37, v129, v159
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v41, v33, v41, 0x7fff
	v_bfe_u32 v33, v120, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v157.l, v113.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v36, v131, v161 :: v_dual_mov_b32 v63, v58
	v_mov_b32_e32 v180, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v42, v120, v33, 0x7fff
	v_bfe_u32 v33, v34, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v38, v127, v157
	v_dual_mov_b32 v176, v68 :: v_dual_sub_f32 v39, v125, v113
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v120, v120
	v_add3_u32 v43, v34, v33, 0x7fff
	v_bfe_u32 v33, v119, 16, 1
	v_cmp_o_f32_e64 s6, v34, v34
	v_cmp_o_f32_e64 s7, v119, v119
	v_cmp_o_f32_e64 s8, v35, v35
	v_cmp_o_f32_e64 s9, v118, v118
	v_add3_u32 v44, v119, v33, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	v_cmp_o_f32_e64 s10, v36, v36
	v_cmp_o_f32_e64 s11, v117, v117
	v_cmp_o_f32_e64 s12, v37, v37
	v_cmp_o_f32_e64 s13, v116, v116
	v_add3_u32 v45, v35, v33, 0x7fff
	v_bfe_u32 v33, v118, 16, 1
	v_cmp_o_f32_e64 s14, v38, v38
	v_cmp_o_f32_e64 s15, v115, v115
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v114, v114
	v_add3_u32 v46, v118, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	v_cndmask_b16 v34.l, 0x7fff, v41.h, s2
	v_cndmask_b16 v34.h, 0x7fff, v42.h, s3
	v_cndmask_b16 v35.l, 0x7fff, v43.h, s6
	v_cndmask_b16 v35.h, 0x7fff, v44.h, s7
	v_add3_u32 v47, v36, v33, 0x7fff
	v_bfe_u32 v33, v117, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v45.h, s8
	v_cndmask_b16 v36.h, 0x7fff, v46.h, s9
	v_mov_b32_e32 v172, v89
	v_mov_b32_e32 v164, v81
	v_add3_u32 v48, v117, v33, 0x7fff
	v_bfe_u32 v33, v37, 16, 1
	v_dual_mov_b32 v188, v55 :: v_dual_mov_b32 v195, v60
	v_dual_mov_b32 v58, v94 :: v_dual_mov_b32 v171, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v49, v37, v33, 0x7fff
	v_bfe_u32 v33, v116, 16, 1
	v_cndmask_b16 v37.l, 0x7fff, v47.h, s10
	v_cndmask_b16 v37.h, 0x7fff, v48.h, s11
	v_dual_mov_b32 v94, v122 :: v_dual_mov_b32 v167, v84
	v_add3_u32 v50, v116, v33, 0x7fff
	v_bfe_u32 v33, v38, 16, 1
	v_dual_mov_b32 v179, v71 :: v_dual_mov_b32 v178, v70
	v_mov_b32_e32 v159, v76
	v_mov_b32_e32 v177, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v51, v38, v33, 0x7fff
	v_bfe_u32 v33, v115, 16, 1
	v_cndmask_b16 v38.l, 0x7fff, v49.h, s12
	v_cndmask_b16 v38.h, 0x7fff, v50.h, s13
	v_dual_mov_b32 v175, v67 :: v_dual_mov_b32 v174, v66
	v_mov_b32_e32 v49, v61
	v_add3_u32 v52, v115, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	v_dual_mov_b32 v173, v65 :: v_dual_mov_b32 v170, v87
	v_dual_mov_b32 v169, v86 :: v_dual_mov_b32 v168, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v53, v39, v33, 0x7fff
	v_bfe_u32 v33, v114, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v51.h, s14
	v_cndmask_b16 v39.h, 0x7fff, v52.h, s15
	v_mov_b32_e32 v166, v83
	v_cndmask_b16 v40.l, 0x7fff, v53.h, s16
	v_add3_u32 v54, v114, v33, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v40.h, s1
	v_mov_b32_e32 v165, v82
	v_mov_b32_e32 v163, v80
	v_cndmask_b16 v40.h, 0x7fff, v54.h, s17
	v_dual_mov_b32 v162, v79 :: v_dual_mov_b32 v161, v78
	v_mov_b32_e32 v160, v77
	v_dual_mov_b32 v158, v75 :: v_dual_mov_b32 v157, v74
	v_mov_b32_e32 v54, v73
	v_mov_b32_e32 v73, v121
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[97:104], v[9:16]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %Flow
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	s_clause 0x7                            ; 128-byte Folded Reload
	scratch_load_b128 v[33:36], off, off
	scratch_load_b128 v[37:40], off, off offset:16
	scratch_load_b128 v[41:44], off, off offset:32
	scratch_load_b128 v[45:48], off, off offset:48
	scratch_load_b128 v[65:68], off, off offset:64
	scratch_load_b128 v[69:72], off, off offset:80
	scratch_load_b128 v[81:84], off, off offset:96
	scratch_load_b128 v[85:88], off, off offset:112
	s_branch .LBB0_1
.LBB0_6:
	.loc	1 550 20 is_stmt 1              ; attention_backward.py:550:20
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v64, off, off offset:212
	scratch_load_b32 v33, off, off offset:216
	scratch_load_b32 v34, off, off offset:220
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s5, s43, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s42
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s47, s7
	.loc	1 753 13                        ; attention_backward.py:753:13
	s_waitcnt vmcnt(2)
	v_mul_lo_u32 v43, s18, v64
	.loc	1 550 20                        ; attention_backward.py:550:20
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, v33, v34
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s46, v64
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_mov_b32 s46, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v47, 2, v33
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v49, v43, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s2, s18, v33
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v46, 6, v33
	v_or_b32_e32 v48, 4, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v50, v43, v47
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v49, v49, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v45, 8, v33
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v51, v43, v48
	v_add_nc_u32_e32 v52, v43, v46
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	v_add_lshl_u32 v50, v50, s33, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v53, v43, v45
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v44, 10, v33
	v_or_b32_e32 v41, 14, v33
	v_or_b32_e32 v42, 12, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v51, v51, s33, 2
	buffer_store_b32 v25, v49, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v50, s2
	v_add_lshl_u32 v49, v52, s33, 2
	v_add_lshl_u32 v50, v53, s33, 2
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
	v_add_lshl_u32 v52, v54, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v40, 34, v33
	v_cmp_gt_i32_e64 s0, s19, v33
	v_cmp_gt_i32_e64 s1, s19, v0
	v_or_b32_e32 v39, 36, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s3, s18, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v27, v51, s[4:7], 0 offen
	v_add_lshl_u32 v49, v55, s33, 2
	s_clause 0x1
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	v_add_lshl_u32 v25, v56, s33, 2
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
	v_add_lshl_u32 v27, v57, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v38, 38, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v28, v58, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v37, 40, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v29, v59, s33, 2
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
	v_or_b32_e32 v18, s34, v64
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v34, 46, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v63, v43, v35
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v17, v60, s33, 2
	buffer_store_b32 v19, v26, s[4:7], 0 offen
	v_add_lshl_u32 v19, v61, s33, 2
	v_add_lshl_u32 v25, v62, s33, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v18, s19, v18
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v43, v43, v34
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_add_lshl_u32 v26, v63, s33, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	buffer_store_b32 v20, v17, s[4:7], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v26, s2
	v_add_lshl_u32 v20, v43, s33, 2
	s_clause 0x1
	buffer_store_b32 v21, v19, s[4:7], 0 offen
	buffer_store_b32 v22, v25, s[4:7], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v19, v18, v33, 2
	v_add_lshl_u32 v21, v18, v44, 2
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v23, v17, s[4:7], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v20, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v20, v18, v47, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v24, v17, s[4:7], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v1, v19, s[44:47], 0 offen
	v_add_lshl_u32 v1, v18, v48, 2
	v_cndmask_b32_e64 v17, 0x80000000, v20, s0
	v_add_lshl_u32 v19, v18, v46, 2
	v_add_lshl_u32 v20, v18, v45, 2
	v_add_lshl_u32 v0, v18, v0, 2
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
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	s_delay_alu instid0(VALU_DEP_4)
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
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 228
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
		.amdhsa_next_free_sgpr 63
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 63
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 228
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18032
; TotalNumSgprs: 65
; NumVgprs: 256
; ScratchSize: 228
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 65
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 228
    .sgpr_count:     65
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 56
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
