	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s47, s[0:1], 0x64
	s_load_b32 s58, s[0:1], 0x5c
.Ltmp0:
	.loc	1 559 27 prologue_end           ; attention.py:559:27
	s_abs_i32 s6, s2
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v54, 3, v0
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v51, 2, v0
	.loc	1 609 32                        ; attention.py:609:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s8, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s8
	s_sub_i32 s5, 0, s8
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s4, v1
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v1, 7, v0
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 584 86                        ; attention.py:584:86
	v_lshlrev_b32_e32 v2, 2, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s5, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s4, s5
	s_add_i32 s9, s4, s5
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s5, s2, s47
	s_mul_hi_u32 s4, s6, s9
	s_ashr_i32 s10, s5, 31
	s_mul_i32 s7, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s5, s6, s7
	s_add_i32 s6, s4, 1
	s_sub_i32 s7, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s5, s7, s5
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s5, s8
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s6, s6, s4
	s_load_b64 s[4:5], s[0:1], 0x0
	s_xor_b32 s6, s6, s10
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e32 vcc_lo, s58, v2
	.loc	1 559 27                        ; attention.py:559:27
	s_sub_i32 s10, s6, s10
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s13, s10, 4
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s10, s10, s47
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s12, s13, s3
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v9, s13, v54
	.loc	1 584 26                        ; attention.py:584:26
	v_add_nc_u32_e32 v3, s12, v54
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s46, s2, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s34, 1, v9
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[3:4], null, v3, s58, v[2:3]
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, vcc_lo, s34
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	v_cndmask_b32_e32 v2, 0x80000000, v3, vcc_lo
	buffer_load_b32 v3, v2, s[4:7], 0 offen
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s47, 31
	.loc	1 585 26                        ; attention.py:585:26
	v_and_b32_e32 v2, 0x60, v0
	.loc	1 609 32 is_stmt 1              ; attention.py:609:32
	s_xor_b32 s5, s4, s47
	s_abs_i32 s4, s4
	s_ashr_i32 s5, s5, 31
	s_mul_hi_u32 s6, s4, s9
	.loc	1 585 26                        ; attention.py:585:26
	v_lshrrev_b32_e32 v4, 2, v2
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_i32 s7, s6, s8
	s_add_i32 s9, s6, 1
	s_sub_i32 s4, s4, s7
	v_lshrrev_b32_e32 v56, 3, v2
	s_sub_i32 s2, s4, s8
	s_cmp_ge_u32 s4, s8
	.loc	1 585 26                        ; attention.py:585:26
	v_xad_u32 v4, v51, v4, 0
	.loc	1 609 32                        ; attention.py:609:32
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s8
	s_cselect_b32 s2, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s5
	s_sub_i32 s2, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 610 18                        ; attention.py:610:18
	s_mul_i32 s4, s46, s2
	.loc	1 611 33                        ; attention.py:611:33
	s_lshl_b32 s2, s2, 6
	.loc	1 610 18                        ; attention.py:610:18
	s_lshl_b32 s59, s4, 6
	.loc	1 611 33                        ; attention.py:611:33
	s_add_i32 s4, s59, s2
	s_mov_b32 s2, 0
	.loc	1 611 18 is_stmt 0              ; attention.py:611:18
	s_min_i32 s76, s4, 0x800
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_cmp_lt_i32 s59, s76
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v4, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_lshrrev_b32_e32 v10, 3, v2
	s_branch .LBB0_3
.Ltmp2:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s2, -1
                                        ; implicit-def: $vgpr10
.LBB0_3:                                ; %Flow145
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x40
	s_load_b32 s45, s[0:1], 0x60
	v_and_b32_e32 v55, 15, v0
	v_lshlrev_b32_e32 v52, 1, v0
	v_and_b32_e32 v53, 1, v0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 570 21 is_stmt 1              ; attention.py:570:21
	v_or_b32_e32 v3, s13, v55
	.loc	1 590 31                        ; attention.py:590:31
	v_add_lshl_u32 v4, s12, v55, 1
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	v_dual_mov_b32 v25, 0x7632 :: v_dual_and_b32 v12, 16, v0
	.loc	1 592 22                        ; attention.py:592:22
	v_cmp_gt_i32_e32 vcc_lo, 1, v3
	s_clause 0x1
	s_load_b64 s[64:65], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x68
	v_dual_mov_b32 v24, 0x5410 :: v_dual_lshlrev_b32 v41, 4, v53
	.loc	1 590 31                        ; attention.py:590:31
	v_dual_cndmask_b32 v3, 0x80000000, v4 :: v_dual_lshlrev_b32 v10, 3, v1
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v4, 24, v52
	v_cmp_eq_u32_e32 vcc_lo, 0, v53
	v_lshlrev_b32_e32 v18, 3, v0
	v_bfe_i32 v21, v0, 3, 1
	v_bfe_i32 v22, v0, 5, 1
	.loc	1 585 26                        ; attention.py:585:26
	v_lshl_or_b32 v26, v55, 5, v4
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s61, s9, 0xffff
	s_mov_b32 s60, s8
	v_cndmask_b32_e64 v16, 0x420, 0, vcc_lo
	buffer_load_u16 v11, v3, s[60:63], 0 offen
	v_cmp_eq_u32_e64 s1, 0, v12
	.loc	1 571 21                        ; attention.py:571:21
	v_bfe_u32 v3, v0, 4, 1
	v_dual_mov_b32 v17, 0xff800000 :: v_dual_add_nc_u32 v2, 0, v2
	v_dual_mov_b32 v110, 0xff800000 :: v_dual_and_b32 v5, 24, v0
	v_and_b32_e32 v6, 0x70, v0
	v_lshlrev_b32_e32 v7, 3, v55
	v_lshlrev_b32_e32 v14, 5, v0
	v_and_b32_e32 v15, 28, v0
	v_bfe_i32 v20, v0, 2, 1
	.loc	1 632 32                        ; attention.py:632:32
	s_lshl_b32 s77, s3, 11
	v_mov_b32_e32 v111, v1
	v_and_or_b32 v16, v18, 16, v16
	v_and_b32_e32 v18, 0x420, v21
	v_and_b32_e32 v21, 0x840, v22
	v_cndmask_b32_e64 v22, 0x1054, v24, s1
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v24, 8, v26
	v_dual_mov_b32 v109, 0xff800000 :: v_dual_lshlrev_b32 v58, 4, v0
	v_and_b32_e32 v8, 14, v0
	v_dual_mov_b32 v4, v1 :: v_dual_lshlrev_b32 v13, 6, v53
	.loc	1 629 13                        ; attention.py:629:13
	v_sub_nc_u32_e32 v61, 0x800, v3
	v_or_b32_e32 v63, s77, v3
	v_and_b32_e32 v20, 0x840, v20
	v_lshl_add_u32 v65, v55, 1, v2
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_lshrrev_b32_e32 v27, 1, v6
	v_lshl_or_b32 v28, v6, 4, v7
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_and_or_b32 v64, 0x3e0, v14, v15
	v_lshlrev_b32_e32 v15, 4, v5
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v32, 16, v26
	v_add_nc_u32_e32 v66, 0, v26
	v_xor_b32_e32 v26, 24, v26
	v_add_nc_u32_e32 v81, 0, v24
	v_and_b32_e32 v19, 4, v0
	v_xor_b32_e32 v62, v58, v5
	v_lshlrev_b32_e32 v30, 3, v12
	v_dual_mov_b32 v5, v1 :: v_dual_and_b32 v14, 0x60, v14
	v_lshlrev_b32_e32 v29, 2, v8
	v_lshl_or_b32 v13, v8, 7, v13
	v_or3_b32 v76, v16, v20, v15
	v_cndmask_b32_e64 v15, 0x3276, v25, s1
	v_add_nc_u32_e32 v82, 0, v32
	v_add_nc_u32_e32 v83, 0, v26
	v_xor_b32_e32 v59, v51, v56
	v_dual_mov_b32 v8, v1 :: v_dual_and_b32 v23, 0x80, v52
	v_lshl_add_u32 v19, v19, 7, 0
	v_or3_b32 v75, v13, v30, v29
	v_xor_b32_e32 v13, 4, v64
	v_xor3_b32 v14, v18, v14, v21
	v_lshl_or_b32 v16, v22, 8, v22
	v_lshl_or_b32 v15, v15, 8, v15
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	v_xor_b32_e32 v31, 0x210, v59
	s_lshr_b32 s0, s0, 29
	v_add3_u32 v14, v19, v23, v14
	s_add_i32 s2, s3, s0
	v_and_b32_e32 v16, 0x540054, v16
	v_add_nc_u32_e32 v86, 0, v13
	v_and_b32_e32 v13, 0x760076, v15
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s8, s2, -8
	v_mul_lo_u32 v9, v9, s15
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s2, s2, 3
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s8, s3, s8
	v_xor_b32_e32 v33, 8, v62
	v_xor_b32_e32 v27, v28, v27
	v_xor_b32_e32 v28, 8, v64
	v_xor_b32_e32 v29, 12, v64
	v_xor_b32_e32 v30, 16, v64
	v_xor_b32_e32 v34, 20, v64
	v_xor_b32_e32 v35, 24, v64
	v_xor_b32_e32 v36, 28, v64
	v_add_nc_u32_e32 v77, 0, v31
	v_xor_b32_e32 v18, 8, v75
	v_xor_b32_e32 v20, 16, v75
	v_xor_b32_e32 v21, 24, v75
	v_xor_b32_e32 v22, 32, v75
	v_xor_b32_e32 v24, 40, v75
	v_xor_b32_e32 v19, 48, v75
	v_xor_b32_e32 v23, 56, v75
	v_xor_b32_e32 v25, 32, v76
	v_xor_b32_e32 v26, 64, v76
	v_xor_b32_e32 v31, 0x60, v76
	v_add_nc_u32_e32 v93, v14, v12
	v_lshl_or_b32 v12, v16, 4, v16
	v_lshl_or_b32 v13, v13, 4, v13
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s1, s14, s8
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s2, s13, s2
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v57, 1, v0
	s_add_i32 s1, s1, s2
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s0, s45, v10
	.loc	1 629 13                        ; attention.py:629:13
	v_sub_nc_u32_e32 v60, 0x800, v10
	v_or_b32_e32 v67, 40, v63
	v_or_b32_e32 v68, 42, v63
	v_or_b32_e32 v69, 44, v63
	v_or_b32_e32 v70, 46, v63
	v_or_b32_e32 v71, 48, v63
	v_or_b32_e32 v72, 50, v63
	v_or_b32_e32 v73, 52, v63
	v_or_b32_e32 v74, 54, v63
	v_or_b32_e32 v78, 56, v63
	v_or_b32_e32 v79, 58, v63
	v_or_b32_e32 v80, 60, v63
	v_add_nc_u32_e32 v84, 0, v33
	v_add_nc_u32_e32 v85, 0, v27
	v_add_nc_u32_e32 v87, 0, v28
	v_add_nc_u32_e32 v88, 0, v29
	v_add_nc_u32_e32 v89, 0, v30
	v_add_nc_u32_e32 v90, 0, v34
	v_add_nc_u32_e32 v91, 0, v35
	v_add_nc_u32_e32 v92, 0, v36
	v_add_nc_u32_e32 v94, 0, v18
	v_add_nc_u32_e32 v95, 0, v20
	v_add_nc_u32_e32 v96, 0, v21
	v_add_nc_u32_e32 v97, 0, v22
	v_add_nc_u32_e32 v98, 0, v24
	v_add_nc_u32_e32 v99, 0, v19
	v_add_nc_u32_e32 v100, 0, v23
	v_add_nc_u32_e32 v101, 0, v25
	v_add_nc_u32_e32 v102, 0, v26
	v_add_nc_u32_e32 v103, 0, v31
	v_and_b32_e32 v104, 0x5040504, v12
	v_add3_u32 v105, s1, v10, v9
	v_and_b32_e32 v106, 0x7060706, v13
	v_or_b32_e32 v108, 62, v63
	.loc	1 585 26                        ; attention.py:585:26
	s_mov_b32 s48, 0
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s82, s12, 0x3fb8aa3b
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s78, s45, 4
	s_lshl_b32 s79, s45, 5
	s_mul_i32 s80, s45, 48
	s_mov_b32 s81, 0x76543210
	s_mov_b32 s49, s48
	s_mov_b32 s50, s48
	s_mov_b32 s51, s48
	s_mov_b32 s52, s48
	s_mov_b32 s53, s48
	s_mov_b32 s54, s48
	s_mov_b32 s55, s48
	s_mov_b32 s70, s62
	s_mov_b32 s71, s63
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_mov_b32 s74, s62
	s_mov_b32 s75, s63
	s_and_b32 s65, s65, 0xffff
	s_and_b32 s73, s7, 0xffff
	s_mov_b32 s68, s10
	s_mov_b32 s72, s6
	s_mov_b32 s60, s4
	s_mov_b32 s61, s5
	s_mov_b32 s69, s11
	.loc	1 636 31                        ; attention.py:636:31
	v_cmp_gt_i32_e32 vcc_lo, s58, v41
	.loc	1 629 13                        ; attention.py:629:13
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[42:43], null, s45, v54, v[10:11]
	.loc	1 585 26                        ; attention.py:585:26
	ds_load_b64 v[43:44], v66
	ds_load_b64 v[45:46], v81
	ds_load_b64 v[47:48], v82
	ds_load_b64 v[49:50], v83
	.loc	1 590 31                        ; attention.py:590:31
	v_lshlrev_b32_e32 v107, 16, v11
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 633 32                        ; attention.py:633:32
	s_add_i32 s2, s59, s77
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_lt_i32_e64 s4, s59, v60
	.loc	1 629 13                        ; attention.py:629:13
	v_sub_nc_u32_e32 v19, 0x800, v57
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v21, v105, s59, 1
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v22, s59, v63, 1
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_lt_i32_e64 s1, s59, v61
	s_waitcnt lgkmcnt(3)
	v_mad_u64_u32 v[145:146], null, s2, s45, v[42:43]
	v_mov_b32_e32 v132, v109
	.loc	1 633 32                        ; attention.py:633:32
	v_or_b32_e32 v109, s2, v57
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s9, s34, s4
	v_mov_b32_e32 v128, v111
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_lt_i32_e64 s2, s59, v19
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v19, 0x80000000, v21, s9
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v111, 0x80000000, v22, s1
	.loc	1 633 32                        ; attention.py:633:32
	v_mad_u64_u32 v[21:22], null, v109, s58, v[41:42]
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 s2, vcc_lo, s2
	v_or_b32_e32 v23, 2, v63
	v_or_b32_e32 v24, 4, v63
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v9, s48 :: v_dual_add_nc_u32 v18, 0, v62
	v_or_b32_e32 v35, 26, v63
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v146, v23, s59, 1
	v_add_lshl_u32 v147, v24, s59, 1
	v_or_b32_e32 v36, 28, v63
	v_or_b32_e32 v37, 30, v63
	.loc	1 634 32                        ; attention.py:634:32
	buffer_load_b128 v[21:24], v21, s[60:63], 0 offen
	v_or_b32_e32 v38, 32, v63
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v123, v78, s59, 1
	v_add_lshl_u32 v124, v79, s59, 1
	v_add_lshl_u32 v125, v80, s59, 1
	v_add_lshl_u32 v126, v108, s59, 1
	v_add_lshl_u32 v158, v35, s59, 1
	v_add_lshl_u32 v159, v36, s59, 1
	v_add_lshl_u32 v160, v37, s59, 1
	v_add_lshl_u32 v161, v38, s59, 1
	v_cndmask_b32_e64 v170, 0x80000000, v123, s1
	v_cndmask_b32_e64 v171, 0x80000000, v124, s1
	v_cndmask_b32_e64 v172, 0x80000000, v125, s1
	v_cndmask_b32_e64 v173, 0x80000000, v126, s1
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v10, s49 :: v_dual_mov_b32 v11, s50
	v_dual_mov_b32 v12, s51 :: v_dual_mov_b32 v13, s52
	v_dual_mov_b32 v14, s53 :: v_dual_mov_b32 v15, s54
	v_dual_mov_b32 v16, s55 :: v_dual_add_nc_u32 v127, 0, v64
	v_or_b32_e32 v25, 6, v63
	v_or_b32_e32 v26, 8, v63
	v_or_b32_e32 v27, 10, v63
	v_or_b32_e32 v28, 12, v63
	v_or_b32_e32 v29, 14, v63
	v_or_b32_e32 v30, 16, v63
	v_or_b32_e32 v31, 18, v63
	v_or_b32_e32 v32, 20, v63
	v_or_b32_e32 v33, 22, v63
	v_or_b32_e32 v34, 24, v63
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v115, v67, s59, 1
	v_add_lshl_u32 v116, v68, s59, 1
	v_add_lshl_u32 v117, v69, s59, 1
	v_add_lshl_u32 v118, v70, s59, 1
	v_add_lshl_u32 v119, v71, s59, 1
	v_add_lshl_u32 v120, v72, s59, 1
	v_add_lshl_u32 v121, v73, s59, 1
	v_add_lshl_u32 v122, v74, s59, 1
	v_add_lshl_u32 v148, v25, s59, 1
	v_add_lshl_u32 v149, v26, s59, 1
	v_add_lshl_u32 v150, v27, s59, 1
	v_add_lshl_u32 v151, v28, s59, 1
	v_add_lshl_u32 v152, v29, s59, 1
	v_add_lshl_u32 v153, v30, s59, 1
	v_add_lshl_u32 v154, v31, s59, 1
	v_add_lshl_u32 v155, v32, s59, 1
	v_add_lshl_u32 v156, v33, s59, 1
	v_add_lshl_u32 v157, v34, s59, 1
	v_cndmask_b32_e64 v162, 0x80000000, v115, s1
	v_cndmask_b32_e64 v163, 0x80000000, v116, s1
	v_cndmask_b32_e64 v164, 0x80000000, v117, s1
	v_cndmask_b32_e64 v165, 0x80000000, v118, s1
	v_cndmask_b32_e64 v166, 0x80000000, v119, s1
	v_cndmask_b32_e64 v167, 0x80000000, v120, s1
	v_cndmask_b32_e64 v168, 0x80000000, v121, s1
	v_cndmask_b32_e64 v169, 0x80000000, v122, s1
	.loc	1 629 13                        ; attention.py:629:13
	v_sub_nc_u32_e32 v131, 0x800, v54
	v_or_b32_e32 v39, 34, v63
	v_or_b32_e32 v112, 36, v63
	v_or_b32_e32 v113, 38, v63
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v20.l, 0
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_lt_i32_e64 s11, s59, v131
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v39, v39, s59, 1
	v_add_lshl_u32 v112, v112, s59, 1
	v_add_lshl_u32 v113, v113, s59, 1
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v175.l, v20.l
	v_mov_b16_e64 v176.l, v20.l
	v_mov_b16_e64 v174.l, v20.l
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v109.l, v20.l
	v_mov_b16_e64 v177.l, v20.l
	v_mov_b16_e64 v178.l, v20.l
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s11, s0, s11
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v110, v110, v110 :: v_dual_add_nc_u32 v129, 0, v76
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s44, 0xff800000, v17
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s59, s59, 64
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v18, v[21:22]
	ds_store_b64 v84, v[23:24]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[35:38], v66 offset1:1
	ds_load_2addr_stride64_b64 v[123:126], v66 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[141:144], v81 offset1:1
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v18, 0x80000000, v151, s1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[35:36], v[43:44], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[29:36], v[37:38], v[43:44], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[123:124], v[43:44], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[125:126], v[43:44], v[9:16] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[9:12], v81 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[13:16], v82 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[141:142], v[45:46], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[29:36], v[143:144], v[45:46], v[29:36] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v126.l, v20.l
	v_mov_b16_e64 v141.l, v20.l
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[9:10], v[45:46], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[11:12], v[45:46], v[133:140] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[9:12], v82 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[13:14], v[47:48], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[29:36], v[15:16], v[47:48], v[29:36] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[13:16], v83 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[9:10], v[47:48], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[11:12], v[47:48], v[133:140] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[9:12], v83 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[13:14], v[49:50], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[29:36], v[15:16], v[49:50], v[29:36] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v16, v26
	v_cvt_f32_i32_e32 v26, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v30, v34
	v_cvt_f32_i32_e32 v14, v23
	v_cvt_f32_i32_e32 v23, v25
	v_cvt_f32_i32_e32 v25, v29
	v_cvt_f32_i32_e32 v29, v33
	v_cvt_f32_i32_e32 v13, v22
	v_cvt_f32_i32_e32 v37, v21
	v_cvt_f32_i32_e32 v21, v27
	.loc	1 685 25                        ; attention.py:685:25
	v_add_nc_u32_e32 v40, 0, v59
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v15, v24
	v_cvt_f32_i32_e32 v27, v31
	v_cvt_f32_i32_e32 v31, v35
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[9:10], v[49:50], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[11:12], v[49:50], v[133:140] neg_lo:[1,1,0]
	.loc	1 683 36                        ; attention.py:683:36
	buffer_load_b128 v[9:12], v19, s[64:67], 0 offen
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v19, 0x80000000, v152, s1
	.loc	1 694 30                        ; attention.py:694:30
	v_add_nc_u32_e32 v130, 0, v58
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v38, v119
	v_cvt_f32_i32_e32 v119, v134
	v_cvt_f32_i32_e32 v34, v116
	v_cvt_f32_i32_e32 v116, v121
	v_cvt_f32_i32_e32 v121, v136
	v_cvt_f32_i32_e32 v33, v115
	v_cvt_f32_i32_e32 v115, v120
	v_cvt_f32_i32_e32 v120, v135
	v_cvt_f32_i32_e32 v35, v117
	v_cvt_f32_i32_e32 v117, v122
	v_cvt_f32_i32_e32 v122, v137
	v_cvt_f32_i32_e32 v123, v138
	v_cvt_f32_i32_e32 v124, v139
	v_cvt_f32_i32_e32 v125, v140
	.loc	1 694 30                        ; attention.py:694:30
	v_lshlrev_b32_e32 v137, 1, v145
	v_add_lshl_u32 v138, v145, s78, 1
	v_add_lshl_u32 v139, v145, s79, 1
	v_add_lshl_u32 v140, v145, s80, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v24, v28
	v_cvt_f32_i32_e32 v28, v32
	v_cvt_f32_i32_e32 v32, v36
	v_cvt_f32_i32_e32 v36, v118
	v_cvt_f32_i32_e32 v118, v133
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v133.l, v20.l
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v22.h, v20.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v115, v107, v115
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v134, 0xff80ff80, v9, s9
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v9, 0x80000000, v146, s1
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v131, 0xff80ff80, v10, s9
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v10, 0x80000000, v147, s1
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v136, 0xff80ff80, v11, s9
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v11, 0x80000000, v148, s1
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v135, 0xff80ff80, v12, s9
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v12, 0x80000000, v149, s1
	s_clause 0x6
	buffer_load_u16 v9, v9, s[68:71], 0 offen
	buffer_load_u16 v10, v10, s[68:71], 0 offen
	buffer_load_u16 v11, v11, s[68:71], 0 offen
	buffer_load_u16 v142, v18, s[68:71], 0 offen
	buffer_load_u16 v143, v19, s[68:71], 0 offen
	buffer_load_u16 v144, v12, s[68:71], 0 offen
	buffer_load_u16 v111, v111, s[68:71], 0 offen
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v176.h, v131.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v37, v107, v37
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v175.h, v135.l
	v_mov_b16_e64 v174.h, v136.l
	v_mov_b16_e64 v20.h, v134.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v176
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v146.l, v20.l
	v_mov_b16_e64 v148.l, v20.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v174
	v_cmp_neq_f32_e64 s6, 0xff800000, v20
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s5, s9, s5
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v18.h, v20.l
	v_mov_b16_e32 v19.h, v20.l
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s4, s9, s2
	s_and_b32 s8, s9, s6
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v20.h, v20.l
	v_mov_b16_e64 v174.h, v20.l
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v9, 16, v9
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v12, v107, v13
	.loc	1 684 35                        ; attention.py:684:35
	v_add_nc_u32_e32 v114, 0, v75
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v13, 0x80000000, v157, s1
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v144, 16, v144
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v111, 16, v111
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v145, v12, v9
	v_mul_f32_e32 v9, v107, v14
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v14, 0x80000000, v159, s1
	v_cndmask_b32_e64 v12, 0x80000000, v156, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v147, v9, v10
	v_mul_f32_e32 v9, v107, v15
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v10, 16, v11
	v_cndmask_b32_e64 v11, 0x80000000, v155, s1
	v_cndmask_b32_e64 v15, 0x80000000, v160, s1
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v149, v9, v10 :: v_dual_mul_f32 v10, v107, v16
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v9, 0x80000000, v150, s1
	v_cndmask_b32_e64 v16, 0x80000000, v112, s1
	buffer_load_u16 v9, v9, s[68:71], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v150, v10, v9
	v_dual_mul_f32 v9, v107, v21 :: v_dual_lshlrev_b32 v10, 16, v142
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v21.h, v20.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v142, v9, v10 :: v_dual_mul_f32 v9, v107, v24
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v10, 16, v143
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v143, v9, v10
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v10, 0x80000000, v154, s1
	v_cndmask_b32_e64 v9, 0x80000000, v153, s1
	s_clause 0x6
	buffer_load_u16 v10, v10, s[68:71], 0 offen
	buffer_load_u16 v11, v11, s[68:71], 0 offen
	buffer_load_u16 v14, v14, s[68:71], 0 offen
	buffer_load_u16 v15, v15, s[68:71], 0 offen
	buffer_load_u16 v24, v12, s[68:71], 0 offen
	buffer_load_u16 v151, v13, s[68:71], 0 offen
	buffer_load_u16 v152, v9, s[68:71], 0 offen
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v9, v107, v26
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v26, 0x80000000, v113, s1
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v38, v107, v38
	v_mul_f32_e32 v28, v107, v28
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v10, 16, v10
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v11, 16, v11
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v13, 16, v14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v14, 16, v15
	v_cndmask_b32_e64 v15, 0x80000000, v161, s1
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v153, v9, v10 :: v_dual_mul_f32 v10, v107, v27
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v151, 16, v151
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v9.h, v20.l
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v152, 16, v152
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v154, v10, v11
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v11, 0x80000000, v158, s1
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v10.h, v20.l
	.loc	1 649 37                        ; attention.py:649:37
	buffer_load_u16 v11, v11, s[68:71], 0 offen
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v12, v107, v30 :: v_dual_lshlrev_b32 v11, 16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v155, v12, v11
	v_mul_f32_e32 v12, v107, v31
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v11.h, v20.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v156, v12, v13 :: v_dual_mul_f32 v13, v107, v32
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v12.h, v20.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v157, v13, v14
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v14, 0x80000000, v39, s1
	s_clause 0x6
	buffer_load_u16 v14, v14, s[68:71], 0 offen
	buffer_load_u16 v16, v16, s[68:71], 0 offen
	buffer_load_u16 v26, v26, s[68:71], 0 offen
	buffer_load_u16 v27, v164, s[68:71], 0 offen
	buffer_load_u16 v30, v165, s[68:71], 0 offen
	buffer_load_u16 v31, v162, s[68:71], 0 offen
	buffer_load_u16 v32, v15, s[68:71], 0 offen
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v15, v107, v34
	v_mul_f32_e32 v116, v107, v116
	v_mul_f32_e32 v117, v107, v117
	v_mul_f32_e32 v164, v107, v25
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v175
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v29, v107, v29
	v_mul_f32_e32 v118, v107, v118
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v13.h, v20.l
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s1, s9, s1
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v14, 16, v14
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v16, 16, v16
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v26, 16, v26
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v25, 16, v27
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v39, v15, v14
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v15, v107, v35 :: v_dual_lshlrev_b32 v32, 16, v32
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v151, v29, v151
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v14.h, v20.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v112, v15, v16
	v_mul_f32_e32 v16, v107, v36
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v15.h, v20.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v116, v116, v25
	.loc	1 684 35                        ; attention.py:684:35
	v_mov_b16_e64 v25.h, v131.h
	v_mov_b16_e64 v25.l, v134.h
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v113, v16, v26
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x8
	buffer_load_u16 v26, v163, s[68:71], 0 offen
	buffer_load_u16 v34, v167, s[68:71], 0 offen
	buffer_load_u16 v35, v168, s[68:71], 0 offen
	buffer_load_u16 v36, v169, s[68:71], 0 offen
	buffer_load_u16 v158, v171, s[68:71], 0 offen
	buffer_load_u16 v159, v172, s[68:71], 0 offen
	buffer_load_u16 v160, v173, s[68:71], 0 offen
	buffer_load_u16 v161, v170, s[68:71], 0 offen
	buffer_load_u16 v162, v166, s[68:71], 0 offen
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v163, v107, v23
	v_mul_f32_e32 v119, v107, v119
	v_mul_f32_e32 v120, v107, v120
	v_mul_f32_e32 v121, v107, v121
	v_mul_f32_e32 v124, v107, v124
	v_mul_f32_e32 v125, v107, v125
	v_mul_f32_e32 v123, v107, v123
	v_mul_f32_e32 v33, v107, v33
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v122, v107, v122
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v171.h, v20.l
	v_mov_b16_e64 v166.h, v20.l
	v_mov_b16_e64 v173.h, v20.l
	v_mov_b16_e64 v169.h, v20.l
	v_mov_b16_e32 v16.h, v20.l
	v_mov_b16_e64 v167.h, v20.l
	v_mov_b16_e64 v172.h, v20.l
	v_mov_b16_e64 v168.h, v20.l
	v_mov_b16_e64 v170.h, v20.l
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v23, 16, v26
	v_lshlrev_b32_e32 v26, 16, v30
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v27, 16, v34
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v30, 16, v35
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v34, 16, v36
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v35, 16, v158
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v36, 16, v159
	v_lshlrev_b32_e32 v159, 16, v24
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v115, v115, v23
	.loc	1 684 35                        ; attention.py:684:35
	v_mov_b16_e64 v24.h, v135.l
	v_mov_b16_e64 v23.h, v131.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v117, v117, v26 :: v_dual_mul_f32 v124, v124, v36
	.loc	1 684 35                        ; attention.py:684:35
	v_mov_b16_e64 v26.h, v135.h
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v131, 0xffff0000, v131
	v_and_b32_e32 v135, 0xffff0000, v135
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v158, 16, v160
	.loc	1 684 35                        ; attention.py:684:35
	v_mov_b16_e64 v24.l, v136.l
	v_mov_b16_e64 v23.l, v134.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v119, v119, v27 :: v_dual_and_b32 v134, 0xffff0000, v134
	.loc	1 684 35                        ; attention.py:684:35
	v_mov_b16_e64 v26.l, v136.h
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v120, v120, v30 :: v_dual_and_b32 v27, 0xffff0000, v136
	v_mul_f32_e32 v136, v163, v144
	v_mul_f32_e32 v144, v164, v152
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v131
	v_cmp_neq_f32_e64 s13, 0xff800000, v135
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v160, 16, v162
	v_lshlrev_b32_e32 v161, 16, v161
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v121, v121, v34 :: v_dual_mul_f32 v152, v28, v159
	v_mul_f32_e32 v123, v123, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v125, v125, v158 :: v_dual_mul_f32 v118, v118, v160
	v_dual_mul_f32 v111, v37, v111 :: v_dual_mul_f32 v122, v122, v161
	v_dual_mul_f32 v158, v33, v32 :: v_dual_mul_f32 v159, v38, v31
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_2addr_b64 v85, v[23:24], v[25:26] offset1:16
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s12, 0xff800000, v27
	v_cmp_neq_f32_e64 s10, 0xff800000, v134
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[23:24], v114
	ds_load_b64 v[25:26], v94
	ds_load_b64 v[27:28], v95
	ds_load_b64 v[29:30], v96
	ds_load_b64 v[31:32], v97
	ds_load_b64 v[33:34], v98
	ds_load_b64 v[35:36], v99
	ds_load_b64 v[37:38], v100
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v114, 0, 1, s1
	v_cndmask_b32_e64 v134, 0, 1, s5
	s_and_b32 s7, s9, s7
	s_and_b32 s6, s9, s13
	v_cndmask_b32_e64 v131, 0, 1, s4
	v_cndmask_b32_e64 v135, 0, 1, s8
	v_cndmask_b32_e64 v160, 0, 1, s7
	v_cndmask_b32_e64 v162, 0, 1, s6
	v_mov_b16_e32 v9.l, v114.l
	v_mov_b16_e64 v11.l, v134.l
	s_and_b32 s10, s9, s10
	s_and_b32 s9, s9, s12
	v_cndmask_b32_e64 v161, 0, 1, s10
	v_cndmask_b32_e64 v163, 0, 1, s9
	v_mov_b16_e64 v10.l, v131.l
	v_mov_b16_e64 v12.l, v135.l
	v_mov_b16_e64 v13.l, v160.l
	v_mov_b16_e64 v15.l, v162.l
	v_lshlrev_b16 v9.l, 8, v9.l
	v_lshlrev_b16 v11.l, 8, v11.l
	v_mov_b16_e64 v14.l, v161.l
	v_mov_b16_e64 v16.l, v163.l
	v_lshlrev_b16 v13.l, 8, v13.l
	v_lshlrev_b16 v15.l, 8, v15.l
	v_or_b16 v114.h, v10.l, v9.l
	v_or_b16 v114.l, v12.l, v11.l
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt lgkmcnt(7)
	v_and_b32_e32 v134, 0xffff0000, v23
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt lgkmcnt(5)
	v_mov_b16_e32 v109.h, v27.l
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v131.l, v14.l, v13.l
	v_or_b16 v131.h, v16.l, v15.l
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v177.h, v23.l
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v135, 16, v24
	v_and_b32_e32 v24, 0xffff0000, v24
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v178.h, v25.l
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v161, 16, v28
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e32 v126.h, v29.l
	s_waitcnt lgkmcnt(3)
	v_mov_b16_e64 v133.h, v31.l
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v109, 0x3fb8aa3b, v109 :: v_dual_lshlrev_b32 v164, 16, v34
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v40, v114
	ds_store_b32 v77, v131
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v114, 0x3fb8aa3b, v134
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v23, 0xffff0000, v25
	v_lshlrev_b32_e32 v160, 16, v26
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v109, s82, v144 :: v_dual_and_b32 v26, 0xffff0000, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v114, s82, v145 :: v_dual_and_b32 v25, 0xffff0000, v27
	.loc	1 649 37                        ; attention.py:649:37
	v_and_b32_e32 v27, 0xffff0000, v28
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v28, 0xffff0000, v29
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v141.h, v33.l
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v165, 16, v36
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v146.h, v35.l
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v40, 16, v38
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v148.h, v37.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v24, 0x3fb8aa3b, v24
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v29, 0xffff0000, v31
	v_and_b32_e32 v31, 0xffff0000, v33
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v144, 0x3fb8aa3b, v161
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v33, 0xffff0000, v35
	v_and_b32_e32 v35, 0xffff0000, v36
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v126, 0x3fb8aa3b, v126 :: v_dual_mul_f32 v133, 0x3fb8aa3b, v133
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v36, 0xffff0000, v37
	v_and_b32_e32 v37, 0xffff0000, v38
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v38, 0x3fb8aa3b, v177 :: v_dual_lshlrev_b32 v163, 16, v32
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v134, 0x3fb8aa3b, v135 :: v_dual_mul_f32 v135, 0x3fb8aa3b, v178
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_fmac_f32_e32 v24, s82, v149
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, s82, v111
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v145, 0x3fb8aa3b, v23 :: v_dual_lshlrev_b32 v162, 16, v30
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v135, s82, v136
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v136, 0x3fb8aa3b, v160
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v134, s82, v147
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_mul_f32_e32 v147, 0x3fb8aa3b, v27
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v34, 0xffff0000, v34
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v145, s82, v150
	v_fmac_f32_e32 v136, s82, v142
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v142, 0x3fb8aa3b, v26
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v126, s82, v151 :: v_dual_mul_f32 v149, 0x3fb8aa3b, v28
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v28, 0x3fb8aa3b, v162 :: v_dual_mul_f32 v151, 0x3fb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v142, s82, v143 :: v_dual_mul_f32 v143, 0x3fb8aa3b, v25
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v30, 0xffff0000, v30
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v133, s82, v158
	v_dual_fmac_f32 v143, s82, v153 :: v_dual_mul_f32 v150, 0x3fb8aa3b, v30
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_dual_mul_f32 v162, 0x3fb8aa3b, v31 :: v_dual_mul_f32 v177, 0x3fb8aa3b, v36
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	ds_load_b32 v36, v127
	ds_load_b32 v127, v86
	ds_load_b32 v158, v90
	ds_load_b32 v178, v92
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v144, s82, v154 :: v_dual_fmac_f32 v147, s82, v152
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_dual_mul_f32 v152, 0x3fb8aa3b, v163 :: v_dual_mul_f32 v175, 0x3fb8aa3b, v33
	v_dual_mul_f32 v163, 0x3fb8aa3b, v164 :: v_dual_mul_f32 v164, 0x3fb8aa3b, v34
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v151, s82, v39 :: v_dual_fmac_f32 v150, s82, v157
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	ds_load_b32 v157, v87
	ds_load_b32 v39, v88
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v28, s82, v156 :: v_dual_mul_f32 v141, 0x3fb8aa3b, v141
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v146, 0x3fb8aa3b, v146
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v152, s82, v112 :: v_dual_fmac_f32 v177, s82, v123
	.loc	1 685 25                        ; attention.py:685:25
	ds_load_b32 v112, v89
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v141, s82, v159
	.loc	1 685 25                        ; attention.py:685:25
	ds_load_b32 v159, v91
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v176, 0x3fb8aa3b, v35 :: v_dual_mul_f32 v179, 0x3fb8aa3b, v37
	s_waitcnt lgkmcnt(6)
	v_dual_mul_f32 v40, 0x3fb8aa3b, v40 :: v_dual_and_b32 v37, 1, v127
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_fmac_f32_e32 v162, s82, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v176, s82, v121
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_dual_mul_f32 v148, 0x3fb8aa3b, v148 :: v_dual_fmac_f32 v175, s82, v119
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s19, 1, v37
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v146, s82, v118 :: v_dual_and_b32 v25, 0x10000, v127
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v40, s82, v124 :: v_dual_and_b32 v27, 0x10000, v39
	v_dual_fmac_f32 v164, s82, v117 :: v_dual_and_b32 v35, 0x1000000, v36
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v23, 0x10000, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s16, 0, v27
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v27, 0xff800000, v135, s19
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v115, 1, v157
	.loc	1 684 25                        ; attention.py:684:25
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v148, s82, v122 :: v_dual_and_b32 v31, 0x10000, v159
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v29, 0x10000, v112
	v_and_b32_e32 v26, 0x10000, v157
	v_cmp_eq_u32_e64 s20, 1, v115
	v_cmp_ne_u32_e64 s18, 0, v25
	v_cmp_ne_u32_e64 s13, 0, v31
	v_cmp_ne_u32_e64 s36, 0, v35
	v_lshrrev_b16 v10.l, 8, v127.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v31, 0xff800000, v109, s20
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v109, 1, v158
	v_cmp_ne_u32_e64 s2, 0, v23
	v_cmp_ne_u32_e64 s15, 0, v29
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v29, 0xff800000, v136, s18
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v117, 1, v39
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v37, 0xff800000, v28, s16
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v28, 0x1000000, v158
	v_cmp_eq_u32_e64 s26, 1, v109
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v109, v132, v132
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s17, 0, v26
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v26, 0xff800000, v24, s36
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v24, 0x1000000, v112
	v_lshrrev_b16 v9.l, 8, v36.l
	v_and_b16 v10.l, 1, v10.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v149, s82, v155 :: v_dual_and_b32 v32, 0xffff0000, v32
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v25, 0xff800000, v134, s2
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s22, 1, v117
	v_cmp_ne_u32_e64 s27, 0, v24
	v_and_b32_e32 v24, 0x1000000, v159
	v_cmp_ne_u32_e64 s29, 0, v28
	v_and_b32_e32 v28, 1, v178
	v_and_b16 v9.l, 1, v9.l
	v_cmp_eq_u16_e64 s37, 1, v10.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v32, 0x3fb8aa3b, v32 :: v_dual_mul_f32 v165, 0x3fb8aa3b, v165
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_dual_fmac_f32 v179, s82, v125 :: v_dual_and_b32 v34, 1, v36
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_and_b32_e32 v119, 1, v112
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v35, 0xff800000, v126, s22
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s31, 0, v24
	v_cmp_eq_u32_e64 s30, 1, v28
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v125, 0x80000000, v137, s11
	v_cndmask_b32_e64 v126, 0x80000000, v138, s11
	v_cndmask_b32_e64 v137, 0x80000000, v139, s11
	v_cndmask_b32_e64 v138, 0x80000000, v140, s11
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s11, 1, v9.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v28, 0xff800000, v145, s37
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v24, 0x1000000, v178
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v32, s82, v113 :: v_dual_fmac_f32 v165, s82, v120
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v118, 0x1000000, v39
	v_cmp_eq_u32_e64 s35, 1, v34
	v_cmp_eq_u32_e64 s24, 1, v119
	v_cmp_ne_u32_e64 s33, 0, v24
	v_lshrrev_b16 v11.l, 8, v157.l
	v_lshrrev_b16 v12.l, 8, v39.l
	v_lshrrev_b16 v13.l, 8, v112.l
	v_lshrrev_b16 v14.l, 8, v158.l
	v_lshrrev_b16 v15.l, 8, v159.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v24, 0xff800000, v114, s11
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v113, 0x1000000, v127
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v163, s82, v116
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v23, 0xff800000, v38, s35
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v116, 0x1000000, v157
	v_cmp_ne_u32_e64 s25, 0, v118
	v_cmp_ne_u32_e64 s21, 0, v113
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v113, 0xff800000, v133, s24
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v118, 1, v159
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v124, 0xff800000, v176, s31
	v_cndmask_b32_e64 v133, 0xff800000, v148, s30
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v30, 0x10000, v158
	v_lshrrev_b16 v16.l, 8, v178.l
	v_and_b16 v11.l, 1, v11.l
	v_and_b16 v12.l, 1, v12.l
	v_and_b16 v13.l, 1, v13.l
	v_and_b16 v14.l, 1, v14.l
	v_and_b16 v15.l, 1, v15.l
	v_cmp_eq_u32_e64 s28, 1, v118
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v136, 0xff800000, v179, s33
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v33, 0x10000, v178
	v_and_b16 v16.l, 1, v16.l
	v_cmp_eq_u16_e64 s38, 1, v11.l
	v_cmp_eq_u16_e64 s39, 1, v12.l
	v_cmp_eq_u16_e64 s40, 1, v13.l
	v_cmp_eq_u16_e64 s41, 1, v14.l
	v_cmp_eq_u16_e64 s42, 1, v15.l
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v139, v124, v133
.Ltmp4:
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s14, 0, v30
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v157, v23, v24
.Ltmp6:
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s23, 0, v116
	v_cmp_ne_u32_e64 s12, 0, v33
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v33, 0xff800000, v144, s17
	v_cndmask_b32_e64 v38, 0xff800000, v150, s25
	v_cndmask_b32_e64 v115, 0xff800000, v152, s15
	v_cndmask_b32_e64 v34, 0xff800000, v147, s23
	v_cndmask_b32_e64 v116, 0xff800000, v32, s27
	v_cndmask_b32_e64 v117, 0xff800000, v141, s26
	v_cndmask_b32_e64 v119, 0xff800000, v163, s14
	v_cndmask_b32_e64 v120, 0xff800000, v164, s29
	v_cndmask_b32_e64 v121, 0xff800000, v146, s28
	v_cndmask_b32_e64 v123, 0xff800000, v165, s13
	v_cndmask_b32_e64 v32, 0xff800000, v143, s38
	v_cndmask_b32_e64 v36, 0xff800000, v149, s39
	v_cndmask_b32_e64 v114, 0xff800000, v151, s40
	v_cndmask_b32_e64 v118, 0xff800000, v162, s41
	v_cndmask_b32_e64 v122, 0xff800000, v175, s42
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s43, 1, v16.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v30, 0xff800000, v142, s21
	v_cndmask_b32_e64 v135, 0xff800000, v40, s12
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v134, 0xff800000, v177, s43
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v112, v115, v116, v117
.Ltmp8:
	.loc	1 686 26                        ; attention.py:686:26
	ds_store_b128 v129, v[23:26]
	ds_store_b128 v129, v[113:116] offset:512
	ds_store_b128 v101, v[27:30]
	ds_store_b128 v101, v[117:120] offset:512
	ds_store_b128 v102, v[31:34]
	ds_store_b128 v102, v[121:124] offset:512
	ds_store_b128 v103, v[35:38]
	ds_store_b128 v103, v[133:136] offset:512
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v129, v32, v33, v34
	v_max3_f32 v145, v35, v36, v37
	v_max3_f32 v146, v38, v113, v114
	v_max3_f32 v149, v118, v119, v120
	v_max3_f32 v150, v121, v122, v123
	v_max3_f32 v158, v26, v27, v28
	v_max3_f32 v127, v29, v30, v31
	v_max_f32_e32 v140, v135, v136
.Ltmp10:
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v129, v129, v145, v146
	v_max3_f32 v112, v112, v149, v150
.Ltmp12:
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[149:152], v125, s[72:75], 0 offen
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v125, v157, v25, v158
	v_max3_f32 v139, v139, v134, v140
.Ltmp14:
	.loc	1 686 26                        ; attention.py:686:26
	ds_load_b128 v[141:144], v93
	ds_load_b128 v[145:148], v93 offset:256
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v154.h, v20.l
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v125, v125, v127, v129
.Ltmp16:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v111.h, v20.l
	v_mov_b16_e64 v153.h, v20.l
	v_mov_b16_e64 v131.h, v20.l
	v_mov_b16_e64 v160.h, v20.l
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v112, v125, v112, v139
.Ltmp18:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v161.h, v20.l
	v_mov_b16_e64 v155.h, v20.l
	v_mov_b16_e64 v156.h, v20.l
	v_mov_b16_e32 v39.h, v20.l
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v125, v112, s81, 0xfedcba98 op_sel:[1,0]
.Ltmp20:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v40.h, v20.l
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s59, s76
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v112, v17, v112, v125
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v129, v144, v144
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v127, v148, v148
.Ltmp22:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v24, v24, v112
	v_sub_f32_e32 v159, v30, v112
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v30, v17, v112
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v125, v25, v112
	v_sub_f32_e32 v139, v26, v112
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v24, v24
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v140, v27, v112
	.loc	1 689 61 is_stmt 1              ; attention.py:689:61
	v_exp_f32_e32 v30, v30
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v25, v141, v145, v142
	v_max3_f32 v26, v146, v143, v147
	v_max_f32_e32 v27, v129, v127
.Ltmp24:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v158, v29, v112
	v_sub_f32_e32 v23, v23, v112
	v_sub_f32_e32 v157, v28, v112
	v_sub_f32_e32 v162, v31, v112
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v24, 0, v24, s11
.Ltmp25:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v29, v25, v26, v27
.Ltmp26:
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v30, 0, v30, s44
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v164, v33, v112
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v33, v125
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v22.l, v24.h
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v17, v29
.Ltmp28:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v165, v34, v112
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v23, v23
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s11, v24, v24
	v_and_b32_e32 v22, 1, v22
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp30:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v176, v36, v112
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[25:28], v126, s[72:75], 0 offen
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v33, 0, v33, s2
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v22, v24, v22, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v24, v139
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v17, v17, v17
.Ltmp32:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v23, 0, v23, s35
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v21.l, v33.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v122, v122, v112
	v_dual_sub_f32 v163, v32, v112 :: v_dual_mul_f32 v6, v6, v30
	v_dual_sub_f32 v38, v38, v112 :: v_dual_mul_f32 v1, v1, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_sub_f32 v114, v114, v112 :: v_dual_and_b32 v21, 1, v21
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v5, v5, v30 :: v_dual_sub_f32 v116, v116, v112
	v_dual_mul_f32 v7, v7, v30 :: v_dual_sub_f32 v118, v118, v112
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v17, v29, v17 :: v_dual_mul_f32 v2, v2, v30
.Ltmp34:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v3, v3, v30
	v_mul_f32_e32 v4, v4, v30
	v_mul_f32_e32 v8, v8, v30
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[29:32], v137, s[72:75], 0 offen
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v24, 0, v24, s36
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v18.l, v23.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v175, v35, v112
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s36, v33, v33
	v_add3_u32 v21, v33, v21, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[33:36], v138, s[72:75], 0 offen
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v118, v118
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v19.l, v24.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v120, v120, v112
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s35, v24, v24
	v_and_b32_e32 v18, 1, v18
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v138, v164
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v19, 1, v19
	v_cmp_o_f32_e64 s2, v23, v23
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v125, v159
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v18, v23, v18, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v118, 0, v118, s41
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v19, v24, v19, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v24, v140
	v_exp_f32_e32 v140, v175
	v_exp_f32_e32 v23, v157
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v171.l, v118.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v119, v119, v112
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v126, v158
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v135, v135, v112
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v129, v162
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v164, 1, v171
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v119, v119
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v24, 0, v24, s19
	v_cndmask_b32_e64 v140, 0, v140, s22
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v116, v116
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v23, 0, v23, s37
	v_cndmask_b32_e64 v125, 0, v125, s21
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v10.l, v24.h
	v_mov_b16_e64 v166.l, v140.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v37, v37, v112
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v127, v163
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v119, 0, v119, s14
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v114, v114
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v157, 1, v166
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v120, v120
	v_exp_f32_e32 v122, v122
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v173.l, v119.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v121, v121, v112
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v135, v135
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v126, 0, v126, s18
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v9.l, v23.h
	v_and_b32_e32 v166, 1, v173
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v121, v121
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v10, 1, v10
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v37, v37
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v124, v124, v112 :: v_dual_and_b32 v9, 1, v9
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v11.l, v125.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v134, v134, v112
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v139, v176
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v129, 0, v129, s20
	v_cndmask_b32_e64 v116, 0, v116, s27
	s_delay_alu instid0(TRANS32_DEP_3)
	v_cndmask_b32_e64 v121, 0, v121, s28
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v12.l, v126.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v124, v124
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v11, 1, v11
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v134, v134
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v133, v133, v112
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v127, 0, v127, s38
	v_cndmask_b32_e64 v138, 0, v138, s17
	v_cndmask_b32_e64 v37, 0, v37, s16
	v_cndmask_b32_e64 v114, 0, v114, s40
	v_cndmask_b32_e64 v120, 0, v120, s29
	v_cndmask_b32_e64 v122, 0, v122, s42
	v_cndmask_b32_e64 v135, 0, v135, s12
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s12, v23, v23
	v_mov_b16_e64 v14.l, v129.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v113, v113, v112
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v169.l, v116.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v117, v117, v112
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v154.l, v121.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v123, v123, v112
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v9, v23, v9, 0x7fff
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v23, v17
.Ltmp36:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v137, v165
	v_exp_f32_e32 v133, v133
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v139, 0, v139, s39
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v13.l, v127.h
	v_mov_b16_e64 v16.l, v138.h
	v_mov_b16_e32 v111.l, v37.h
	v_mov_b16_e64 v167.l, v114.h
	v_mov_b16_e64 v172.l, v120.h
	v_mov_b16_e64 v153.l, v122.h
	v_and_b32_e32 v14, 1, v14
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v113, v113
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v162, 1, v169
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v117, v117
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v154, 1, v154
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v123, v123
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v23, v23 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v136, v136, v112 :: v_dual_and_b32 v13, 1, v13
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v124, 0, v124, s31
	v_cndmask_b32_e64 v134, 0, v134, s43
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v115, v115, v112 :: v_dual_and_b32 v158, 1, v167
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v20.l, v139.h
	v_mov_b16_e64 v40.l, v135.h
	v_and_b32_e32 v16, 1, v16
	v_and_b32_e32 v111, 1, v111
	v_and_b32_e32 v165, 1, v172
	v_and_b32_e32 v153, 1, v153
	v_cndmask_b16 v22.l, 0x7fff, v18.h, s2
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s35
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v19, v23, v23
.Ltmp40:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v136, v136
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v161.l, v124.h
	v_mov_b16_e64 v155.l, v134.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v137, 0, v137, s23
	v_cndmask_b32_e64 v113, 0, v113, s24
	v_cndmask_b32_e64 v117, 0, v117, s26
	v_cndmask_b32_e64 v123, 0, v123, s13
	v_cndmask_b32_e64 v133, 0, v133, s30
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s13, v24, v24
	v_cmp_o_f32_e64 s14, v125, v125
	v_cmp_o_f32_e64 s16, v127, v127
	v_cmp_o_f32_e64 s17, v129, v129
	v_cmp_o_f32_e64 s23, v37, v37
	v_cmp_o_f32_e64 s24, v114, v114
	v_cmp_o_f32_e64 s26, v116, v116
	v_cmp_o_f32_e64 s28, v118, v118
	v_cmp_o_f32_e64 s30, v120, v120
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v10, v24, v10, 0x7fff
	v_add3_u32 v11, v125, v11, 0x7fff
	v_add3_u32 v13, v127, v13, 0x7fff
	v_add3_u32 v14, v129, v14, 0x7fff
	v_add3_u32 v37, v37, v111, 0x7fff
	v_add3_u32 v111, v114, v158, 0x7fff
	v_add3_u32 v114, v116, v162, 0x7fff
	v_add3_u32 v116, v118, v164, 0x7fff
	v_add3_u32 v118, v120, v165, 0x7fff
	v_add3_u32 v120, v122, v153, 0x7fff
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v153, v17, v19 :: v_dual_and_b32 v40, 1, v40
.Ltmp42:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v161, 1, v161
	v_and_b32_e32 v155, 1, v155
	v_mov_b16_e64 v156.l, v133.h
	v_cmp_o_f32_e64 s43, v135, v135
	v_add3_u32 v40, v135, v40, 0x7fff
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s13
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s14
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s16
	v_cndmask_b16 v11.l, 0x7fff, v14.h, s17
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v136, 0, v136, s33
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s33, v122, v122
	v_cmp_o_f32_e64 s38, v124, v124
	v_add3_u32 v122, v124, v161, 0x7fff
	v_add3_u32 v124, v134, v155, 0x7fff
	v_mov_b16_e64 v160.l, v117.h
	v_and_b32_e32 v156, 1, v156
	v_cndmask_b16 v124.l, 0x7fff, v40.h, s43
	v_permlanex16_b32 v40, v11, s81, 0xfedcba98 op_sel:[1,0]
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v115, v115
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v15.l, v137.h
	v_cmp_o_f32_e64 s40, v134, v134
	v_cmp_o_f32_e64 s41, v133, v133
	v_and_b32_e32 v160, 1, v160
	v_add3_u32 v125, v133, v156, 0x7fff
	v_perm_b32 v133, v40, v11, v104
	v_perm_b32 v134, v40, v11, v106
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v11, v153
.Ltmp44:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v15, 1, v15
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v115, 0, v115, s15
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s15, v126, v126
	v_cmp_o_f32_e64 s18, v137, v137
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s19, v138, v138
	v_add3_u32 v12, v126, v12, 0x7fff
	v_add3_u32 v15, v137, v15, 0x7fff
	v_add3_u32 v16, v138, v16, 0x7fff
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v11, v11, v11
.Ltmp48:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v38, v38
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v39.l, v136.h
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s15
	v_cndmask_b16 v12.h, 0x7fff, v15.h, s18
	v_cndmask_b16 v12.l, 0x7fff, v16.h, s19
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v11, v153, v11
.Ltmp50:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v39, 1, v39
	v_cndmask_b16 v15.h, 0x7fff, v111.h, s24
	v_cmp_o_f32_e64 s42, v136, v136
	v_permlanex16_b32 v111, v12, s81, 0xfedcba98 op_sel:[1,0]
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v110, v110, v11
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v38, 0, v38, s25
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v39, v136, v39, 0x7fff
	v_mov_b16_e64 v168.l, v113.h
	v_perm_b32 v135, v111, v12, v104
	v_perm_b32 v136, v111, v12, v106
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v12, v142, v110
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v131.l, v38.h
	v_mov_b16_e64 v170.l, v115.h
	v_mov_b16_e64 v174.l, v123.h
	v_cmp_o_f32_e64 s22, v38, v38
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v12, v12
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v131, 1, v131
	v_and_b32_e32 v159, 1, v168
	v_and_b32_e32 v167, 1, v174
	v_cmp_o_f32_e64 s20, v139, v139
	v_cmp_o_f32_e64 s21, v140, v140
	v_add3_u32 v38, v38, v131, 0x7fff
	v_cmp_o_f32_e64 s25, v113, v113
	v_cmp_o_f32_e64 s27, v115, v115
	v_cmp_o_f32_e64 s29, v117, v117
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v12, 0, v12, s5
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v163, 1, v170
	v_cmp_o_f32_e64 s31, v119, v119
	v_cmp_o_f32_e64 s37, v121, v121
	v_add3_u32 v20, v139, v20, 0x7fff
	v_add3_u32 v24, v140, v157, 0x7fff
	v_add3_u32 v113, v113, v159, 0x7fff
	v_add3_u32 v115, v115, v163, 0x7fff
	v_add3_u32 v117, v117, v160, 0x7fff
	v_add3_u32 v119, v119, v166, 0x7fff
	v_add3_u32 v121, v121, v154, 0x7fff
	v_cndmask_b16 v14.h, 0x7fff, v38.h, s22
	v_cndmask_b16 v14.l, 0x7fff, v37.h, s23
	v_cmp_o_f32_e64 s39, v123, v123
	v_add3_u32 v123, v123, v167, 0x7fff
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s11
	v_cndmask_b16 v18.l, 0x7fff, v21.h, s36
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s12
	v_cndmask_b16 v13.h, 0x7fff, v20.h, s20
	v_cndmask_b16 v13.l, 0x7fff, v24.h, s21
	v_cndmask_b16 v15.l, 0x7fff, v113.h, s25
	v_cndmask_b16 v16.h, 0x7fff, v114.h, s26
	v_cndmask_b16 v16.l, 0x7fff, v115.h, s27
	v_cndmask_b16 v24.h, 0x7fff, v116.h, s28
	v_cndmask_b16 v24.l, 0x7fff, v117.h, s29
	v_cndmask_b16 v37.h, 0x7fff, v118.h, s30
	v_cndmask_b16 v37.l, 0x7fff, v119.h, s31
	v_cndmask_b16 v38.h, 0x7fff, v120.h, s33
	v_cndmask_b16 v38.l, 0x7fff, v121.h, s37
	v_cndmask_b16 v123.l, 0x7fff, v125.h, s41
	v_permlanex16_b32 v125, v14, s81, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v113.l, 0x7fff, v123.h, s39
	v_cndmask_b16 v123.h, 0x7fff, v124.h, s40
	v_cndmask_b16 v124.h, 0x7fff, v39.h, s42
	v_permlanex16_b32 v20, v22, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v18, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v9, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v10, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v114, v13, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v126, v15, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v127, v16, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v129, v24, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v154, v38, s81, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v139, v125, v14, v104
	v_perm_b32 v140, v125, v14, v106
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v14, v144, v110
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v131, v37, s81, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v113.h, 0x7fff, v122.h, s38
	v_perm_b32 v115, v20, v22, v104
	v_perm_b32 v116, v20, v22, v106
	v_perm_b32 v117, v21, v18, v104
	v_perm_b32 v118, v21, v18, v106
	v_perm_b32 v119, v23, v9, v104
	v_perm_b32 v120, v23, v9, v106
	v_perm_b32 v121, v39, v10, v104
	v_perm_b32 v122, v39, v10, v106
	v_perm_b32 v137, v114, v13, v104
	v_perm_b32 v138, v114, v13, v106
	v_perm_b32 v17, v126, v15, v104
	v_perm_b32 v18, v126, v15, v106
	v_perm_b32 v19, v127, v16, v104
	v_perm_b32 v20, v127, v16, v106
	v_perm_b32 v21, v129, v24, v104
	v_perm_b32 v22, v129, v24, v106
	v_perm_b32 v23, v131, v37, v104
	v_perm_b32 v24, v131, v37, v106
	v_perm_b32 v9, v154, v38, v104
	v_perm_b32 v10, v154, v38, v106
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v109, v109, v11
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v11, v141, v110
	v_sub_f32_e32 v13, v143, v110
	v_sub_f32_e32 v15, v145, v110
	v_sub_f32_e32 v16, v146, v110
	v_sub_f32_e32 v37, v147, v110
	v_sub_f32_e32 v38, v148, v110
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v11, v11
	v_exp_f32_e32 v15, v15
	v_exp_f32_e32 v16, v16
	v_exp_f32_e32 v13, v13
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v14, v14
	v_exp_f32_e32 v38, v38
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b128 v130, v[149:152]
	s_waitcnt vmcnt(2)
	ds_store_b128 v130, v[25:28] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v130, v[29:32] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v130, v[33:36] offset:6144
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v11, 0, v11, s8
	v_cndmask_b32_e64 v15, 0, v15, s10
	v_cndmask_b32_e64 v16, 0, v16, s7
	v_cndmask_b32_e64 v13, 0, v13, s4
	v_cndmask_b32_e64 v37, 0, v37, s9
	v_cndmask_b32_e64 v14, 0, v14, s1
	v_cndmask_b32_e64 v38, 0, v38, s6
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v11, v11, v15 :: v_dual_add_f32 v12, v12, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v13, v13, v37
.Ltmp52:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v14, v14, v38
.Ltmp54:
	.loc	1 694 30                        ; attention.py:694:30
	s_barrier
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v11, v11, v12
.Ltmp56:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v141, v65
	ds_load_u16_d16 v142, v65 offset:256
	ds_load_u16_d16 v143, v65 offset:512
	ds_load_u16_d16 v144, v65 offset:768
	ds_load_u16_d16 v145, v65 offset:1024
	ds_load_u16_d16 v146, v65 offset:1280
	ds_load_u16_d16 v147, v65 offset:1536
	ds_load_u16_d16 v148, v65 offset:1792
	ds_load_u16_d16 v149, v65 offset:2048
	ds_load_u16_d16 v150, v65 offset:2304
	ds_load_u16_d16 v151, v65 offset:2560
	ds_load_u16_d16 v152, v65 offset:2816
	ds_load_u16_d16 v153, v65 offset:3072
	ds_load_u16_d16 v154, v65 offset:3328
	ds_load_u16_d16 v155, v65 offset:3584
	ds_load_u16_d16 v156, v65 offset:3840
	ds_load_u16_d16 v33, v65 offset:4096
	ds_load_u16_d16 v34, v65 offset:4352
	ds_load_u16_d16 v35, v65 offset:4608
	ds_load_u16_d16 v36, v65 offset:4864
	ds_load_u16_d16 v37, v65 offset:5120
	ds_load_u16_d16 v38, v65 offset:5376
	ds_load_u16_d16 v39, v65 offset:5632
	ds_load_u16_d16 v40, v65 offset:5888
	ds_load_u16_d16 v25, v65 offset:6144
	ds_load_u16_d16 v26, v65 offset:6400
	ds_load_u16_d16 v27, v65 offset:6656
	ds_load_u16_d16 v28, v65 offset:6912
	ds_load_u16_d16 v29, v65 offset:7168
	ds_load_u16_d16 v30, v65 offset:7424
	ds_load_u16_d16 v31, v65 offset:7680
	ds_load_u16_d16 v32, v65 offset:7936
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v114, v132, v109
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v12, v13, v14
.Ltmp58:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v157, v113, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v158, v123, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v159, v124, s81, 0xfedcba98 op_sel:[1,0]
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v132
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v11, v11, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp60:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v13, v158, v123, v104
	v_perm_b32 v14, v158, v123, v106
	v_perm_b32 v15, v159, v124, v104
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v12, v11
.Ltmp62:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v16, v159, v124, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v11, v11, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v12, v11
	v_mov_b32_dpp v12, v12 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v111, v11, v12
.Ltmp67:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v11, v157, v113, v104
	v_perm_b32 v12, v157, v113, v106
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v113, v114
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v114, v111
.Ltmp69:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v141, v65 offset:128
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v142, v65 offset:384
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v143, v65 offset:640
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v144, v65 offset:896
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v145, v65 offset:1152
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v146, v65 offset:1408
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v147, v65 offset:1664
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v148, v65 offset:1920
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v149, v65 offset:2176
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v150, v65 offset:2432
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v151, v65 offset:2688
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v152, v65 offset:2944
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v153, v65 offset:3200
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v154, v65 offset:3456
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v155, v65 offset:3712
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v156, v65 offset:3968
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v33, v65 offset:4224
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v34, v65 offset:4480
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v35, v65 offset:4736
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v36, v65 offset:4992
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v37, v65 offset:5248
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v38, v65 offset:5504
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v39, v65 offset:5760
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v40, v65 offset:6016
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v25, v65 offset:6272
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v26, v65 offset:6528
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v27, v65 offset:6784
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v28, v65 offset:7040
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v29, v65 offset:7296
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v30, v65 offset:7552
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v31, v65 offset:7808
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v32, v65 offset:8064
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(24)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[141:148], v[115:122], v[1:8]
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v114, v114 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp71:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(16)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[149:156], v[133:140], v[1:8]
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v113, 0, v113, s1
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v111, v111, v114
.Ltmp73:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(8)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[17:24], v[1:8]
	v_mov_b32_e32 v17, v112
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v111, v128, v113
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[25:32], v[9:16], v[1:8]
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v10, v56
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v109, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v111, v8
.LBB0_8:                                ; %._crit_edge
	.loc	1 825 26 is_stmt 1              ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v54
	s_mov_b32 s1, 0x76543210
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp75:
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s47, s47, s3
	.loc	1 825 17                        ; attention.py:825:17
	v_dual_cndmask_b32 v9, 0xff800000, v109 :: v_dual_cndmask_b32 v12, 0, v111
	.loc	1 830 26                        ; attention.py:830:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v55
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s0, s45, 2
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s2, exec_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_permlanex16_b32 v11, v9, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_add_nc_u32 v10, 0, v10
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_permlanex16_b32 v13, v12, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp79:
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s46, s47
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v11, v11, v11
.Ltmp81:
	.loc	1 822 30                        ; attention.py:822:30
	s_mul_i32 s0, s1, s0
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v12, v12, v13 :: v_dual_max_f32 v9, v9, v11
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v16, v2 :: v_dual_and_b32 v11, 12, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v14, v9 :: v_dual_add_nc_u32 v11, 0, v11
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp86:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v13, v12
.Ltmp87:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp88:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_add_f32 v2, v2, v16
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp90:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v14, v14, v14 :: v_dual_mov_b32 v15, v1
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v12, v12, v13 :: v_dual_max_f32 v9, v9, v14
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	ds_store_b32 v10, v9
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v15
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v11
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v10, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v11
.Ltmp97:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v11, 0, v4 :: v_dual_mov_b32 v4, v2
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_mov_b32 v14, v1
	v_dual_cndmask_b32 v12, 0, v5 :: v_dual_cndmask_b32 v13, 0, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v15, 0, v8, vcc_lo
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v2, v2, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v1, v1, v14 :: v_dual_cndmask_b32 v14, 0, v7
.Ltmp103:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v8, v9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v18, v13 :: v_dual_add_f32 v3, v3, v17
	v_mov_b32_e32 v6, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v5, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v4, v3, v5
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v16, v4 :: v_dual_add_f32 v1, v1, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp107:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v7, v9 :: v_dual_add_f32 v4, v4, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v16, v11 :: v_dual_mov_b32 v3, v10
	v_dual_mov_b32 v6, v4 :: v_dual_max_f32 v9, v7, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp109:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp111:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v8, v8, v9 :: v_dual_mov_b32 v5, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v7, v10, v3 :: v_dual_mov_b32 v20, v15
.Ltmp113:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_mov_b32 v10, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp114:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v16, v11
.Ltmp115:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v3, v2, v5
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v15, v20
	v_add_f32_e32 v13, v13, v18
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v9, v7
.Ltmp120:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp121:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v12, v12, v17
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v20, v15 :: v_dual_mov_b32 v19, v14
	v_mov_b32_e32 v18, v13
	v_mov_b32_e32 v2, v1
.Ltmp123:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp125:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v13, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v14, v14, v19 :: v_dual_mov_b32 v17, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v11, v11, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v16, v15, v20 :: v_dual_mov_b32 v17, v12
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v20, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v15, v11
	v_add_f32_e32 v13, v13, v18
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v19, v14
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v17, v16, v20
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v16, v12
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v11, v15
.Ltmp138:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v14, v19
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v14, v11
	v_mov_b32_e32 v19, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp141:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_10
; %bb.9:
.Ltmp142:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp143:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp145:
	.loc	1 833 13                        ; attention.py:833:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp146:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp147:
	.loc	1 833 13                        ; attention.py:833:13
	s_add_u32 s4, s56, s4
	s_addc_u32 s5, s57, s5
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_10:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp148:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v13, v4, v6 :: v_dual_add_f32 v12, v3, v5
.Ltmp149:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v3, 0xc0, v51
.Ltmp150:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xe0, v52
.Ltmp151:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v1, 28, v52
	v_lshlrev_b32_e32 v2, 5, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v3
	v_add_nc_u32_e32 v4, 0, v4
.Ltmp152:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp153:
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v5, 63, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 835 13                        ; attention.py:835:13
	v_add3_u32 v1, v3, v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v4, v[11:14]
	ds_store_b128 v4, v[7:10] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 64, v0
	.loc	1 836 17                        ; attention.py:836:17
	v_add_nc_u32_e32 v2, s0, v5
	.loc	1 838 22                        ; attention.py:838:22
	v_cmp_gt_i32_e32 vcc_lo, s45, v5
	.loc	1 835 13                        ; attention.py:835:13
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s59, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s58, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[56:59], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp154:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 180
		.amdhsa_next_free_sgpr 83
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_vgpr, 180
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.numbered_sgpr, 83
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11280
; TotalNumSgprs: 85
; NumVgprs: 180
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 85
; NumVGPRsForWavesPerEU: 180
; Occupancy: 8
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0xbd DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x97 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	824                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	687                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x68:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x75:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	691                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x82:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	828                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x9d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xab:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	829                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xb8:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
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
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
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
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
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
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
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
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     85
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     180
    .vgpr_spill_count: 0
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
