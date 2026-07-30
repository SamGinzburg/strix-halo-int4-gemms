	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b32 s33, s[0:1], 0x64
	s_load_b64 s[30:31], s[0:1], 0x5c
	s_load_b64 s[48:49], s[0:1], 0x0
	s_load_b64 s[44:45], s[0:1], 0x40
.Ltmp0:
	.loc	1 559 27 prologue_end           ; attention.py:559:27
	s_abs_i32 s7, s2
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v60, 15, v0
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v17, 3, v0
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 584 86                        ; attention.py:584:86
	v_lshlrev_b32_e32 v2, 1, v60
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v59, 1, v0
	s_mov_b32 s36, 0
	.loc	1 609 32                        ; attention.py:609:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s33
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s8, s2, s33
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 559 27                        ; attention.py:559:27
	s_ashr_i32 s8, s8, 31
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e32 vcc_lo, s30, v2
	.loc	1 609 32                        ; attention.py:609:32
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s4
	s_mul_hi_u32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s4, s6
	.loc	1 559 27                        ; attention.py:559:27
	s_mul_hi_u32 s4, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s4, s5
	s_sub_i32 s7, s7, s9
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s7, s10, s7
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s49, s49, 0xffff
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s13, s7, 4
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s7, s7, s33
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s12, s13, s3
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v6, s13, v3
	.loc	1 584 26                        ; attention.py:584:26
	v_add_nc_u32_e32 v1, s12, v3
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s29, s2, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s4, 1, v6
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[4:5], null, v1, s30, v[2:3]
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s33, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 609 32 is_stmt 1              ; attention.py:609:32
	s_xor_b32 s8, s4, s33
	.loc	1 585 26                        ; attention.py:585:26
	v_dual_cndmask_b32 v1, 0x80000000, v4 :: v_dual_and_b32 v4, 24, v17
	.loc	1 609 32                        ; attention.py:609:32
	s_abs_i32 s4, s4
	s_ashr_i32 s8, s8, 31
	s_mul_hi_u32 s6, s4, s6
	.loc	1 585 26                        ; attention.py:585:26
	buffer_load_u16 v1, v1, s[48:51], 0 offen
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	.loc	1 585 26                        ; attention.py:585:26
	v_xad_u32 v4, v59, v4, 0
	.loc	1 609 32                        ; attention.py:609:32
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s2, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s8
	s_sub_i32 s2, s2, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 610 18                        ; attention.py:610:18
	s_mul_i32 s4, s29, s2
	.loc	1 611 33                        ; attention.py:611:33
	s_lshl_b32 s2, s2, 6
	.loc	1 610 18                        ; attention.py:610:18
	s_lshl_b32 s34, s4, 6
	.loc	1 611 33                        ; attention.py:611:33
	s_add_i32 s2, s34, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 611 18 is_stmt 0              ; attention.py:611:18
	s_min_i32 s35, s2, 0x800
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_cmp_ge_i32 s34, s35
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v4, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 570 21 is_stmt 1              ; attention.py:570:21
	v_or_b32_e32 v1, s13, v60
	.loc	1 590 31                        ; attention.py:590:31
	v_add_lshl_u32 v4, s12, v60, 1
	v_dual_mov_b32 v8, 0x5410 :: v_dual_and_b32 v5, 24, v59
	v_dual_mov_b32 v101, 0xff800000 :: v_dual_lshlrev_b32 v22, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, 1, v1
	.loc	1 585 26                        ; attention.py:585:26
	v_lshl_or_b32 v24, v60, 5, v5
	v_dual_mov_b32 v21, 0x7632 :: v_dual_lshlrev_b32 v20, 3, v0
	s_mov_b32 s37, s36
	.loc	1 590 31                        ; attention.py:590:31
	v_dual_cndmask_b32 v1, 0x80000000, v4 :: v_dual_and_b32 v4, 1, v3
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s49, s9, 0xffff
	s_mov_b32 s48, s8
	v_and_b32_e32 v7, 16, v0
	buffer_load_u16 v19, v1, s[48:51], 0 offen
	v_and_b32_e32 v23, 0x60, v0
	v_mov_b32_e32 v1, 0
	.loc	1 632 32                        ; attention.py:632:32
	s_lshl_b32 s46, s3, 11
	v_dual_mov_b32 v9, s36 :: v_dual_mov_b32 v16, s43
	v_dual_mov_b32 v10, s37 :: v_dual_mov_b32 v11, s38
	.loc	1 693 86                        ; attention.py:693:86
	v_and_b32_e32 v18, 56, v20
	v_mov_b32_e32 v12, s39
	v_cmp_eq_u32_e64 s2, 0, v7
	v_add3_u32 v66, 0, v2, v23
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v23, 16, v24
	v_or3_b32 v63, s46, v3, 62
	v_dual_mov_b32 v14, s41 :: v_dual_mov_b32 v3, v1
	v_add_nc_u32_e32 v68, 0, v24
	s_load_b32 s8, s[0:1], 0x68
	v_cndmask_b32_e64 v26, 0x1054, v8, s2
	v_dual_mov_b32 v5, v1 :: v_dual_add_nc_u32 v92, 0, v23
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s1, s31, v18
	.loc	1 629 13                        ; attention.py:629:13
	v_sub_nc_u32_e32 v62, 0x800, v17
	v_lshrrev_b32_e32 v6, 1, v0
	.loc	1 633 49                        ; attention.py:633:49
	v_and_b32_e32 v49, 24, v20
	v_or_b32_e32 v65, s46, v4
	v_mov_b32_e32 v8, v1
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v61, 2, v0
	v_and_b32_e32 v25, 24, v6
	v_dual_mov_b32 v13, s40 :: v_dual_mov_b32 v2, v1
	v_mov_b32_e32 v15, s42
	.loc	1 629 13                        ; attention.py:629:13
	v_sub_nc_u32_e32 v64, 0x800, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v20, v20, v25
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	.loc	1 664 27                        ; attention.py:664:27
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s61, s8, 0x3fb8aa3b
	.loc	1 636 31                        ; attention.py:636:31
	v_cmp_gt_i32_e64 s0, s30, v49
	v_or_b32_e32 v69, 18, v65
	v_or_b32_e32 v70, 20, v65
	v_or_b32_e32 v71, 22, v65
	v_or_b32_e32 v72, 24, v65
	v_or_b32_e32 v73, 26, v65
	v_or_b32_e32 v74, 28, v65
	v_or_b32_e32 v75, 30, v65
	v_or_b32_e32 v76, 32, v65
	v_or_b32_e32 v77, 34, v65
	v_or_b32_e32 v78, 36, v65
	v_or_b32_e32 v79, 38, v65
	v_or_b32_e32 v80, 40, v65
	v_or_b32_e32 v81, 42, v65
	v_or_b32_e32 v82, 44, v65
	v_or_b32_e32 v83, 46, v65
	v_or_b32_e32 v84, 48, v65
	v_or_b32_e32 v85, 50, v65
	v_or_b32_e32 v86, 52, v65
	v_or_b32_e32 v87, 54, v65
	v_or_b32_e32 v88, 56, v65
	v_or_b32_e32 v89, 58, v65
	v_or_b32_e32 v90, 60, v65
	v_add_nc_u32_e32 v94, 0, v20
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s47, s31, 5
	s_mov_b32 s60, 0x76543210
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
	s_and_b32 s57, s7, 0xffff
	s_mov_b32 s52, s10
	s_mov_b32 s56, s6
	s_mov_b32 s48, s4
	s_mov_b32 s49, s5
	s_mov_b32 s53, s11
	.loc	1 664 17                        ; attention.py:664:17
	s_mov_b32 s62, s61
	s_mov_b32 s63, s61
	s_mov_b32 s64, s61
	s_mov_b32 s58, s50
	s_mov_b32 s59, s51
	v_mov_b32_e32 v103, v1
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v95, 16, v19
	v_add_nc_u32_e32 v67, 0, v22
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v22, 8, v24
	v_xor_b32_e32 v24, 24, v24
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[50:51], null, s31, v17, v[18:19]
	v_cndmask_b32_e64 v18, 0x3276, v21, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mov_b32 v100, v95 :: v_dual_add_nc_u32 v91, 0, v22
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v93, 0, v24
	ds_load_b64 v[51:52], v68
	ds_load_b64 v[53:54], v91
	ds_load_b64 v[55:56], v92
	ds_load_b64 v[57:58], v93
	v_lshl_or_b32 v17, v26, 8, v26
	v_lshl_or_b32 v18, v18, 8, v18
	.loc	1 654 30                        ; attention.py:654:30
	v_mov_b32_e32 v99, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v98, v95 :: v_dual_and_b32 v17, 0x540054, v17
	v_and_b32_e32 v18, 0x760076, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v17, v17, 4, v17
	v_lshl_or_b32 v18, v18, 4, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v96, 0x5040504, v17
	v_and_b32_e32 v97, 0x7060706, v18
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 633 32                        ; attention.py:633:32
	s_add_i32 s6, s34, s46
	.loc	1 629 13                        ; attention.py:629:13
	v_sub_nc_u32_e32 v25, 0x800, v61
	.loc	1 633 32                        ; attention.py:633:32
	v_or_b32_e32 v26, s6, v61
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v17, s36 :: v_dual_mov_b32 v18, s37
	v_dual_mov_b32 v19, s38 :: v_dual_mov_b32 v20, s39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_lt_i32_e64 s5, s34, v25
	.loc	1 633 32                        ; attention.py:633:32
	v_mad_u64_u32 v[25:26], null, v26, s30, v[49:50]
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v21, s40 :: v_dual_mov_b32 v22, s41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 s5, s0, s5
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v23, s42 :: v_dual_mov_b32 v24, s43
	v_or_b32_e32 v47, 2, v65
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e64 v25, 0x80000000, v25, s5
	v_or_b32_e32 v48, 4, v65
	v_or_b32_e32 v102, 6, v65
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_lt_i32_e64 s2, s34, v64
	v_or_b32_e32 v128, 8, v65
	.loc	1 634 32                        ; attention.py:634:32
	buffer_load_b64 v[25:26], v25, s[48:51], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or_b32_e32 v131, 12, v65
	v_or_b32_e32 v132, 14, v65
	v_or_b32_e32 v133, 16, v65
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v152, v83, s34, 1
	v_add_lshl_u32 v46, s34, v65, 1
	v_or_b32_e32 v130, 10, v65
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_lt_i32_e64 s4, s34, v62
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v138, v69, s34, 1
	v_add_lshl_u32 v139, v70, s34, 1
	v_add_lshl_u32 v140, v71, s34, 1
	v_add_lshl_u32 v141, v72, s34, 1
	v_add_lshl_u32 v142, v73, s34, 1
	v_add_lshl_u32 v143, v74, s34, 1
	v_add_lshl_u32 v144, v75, s34, 1
	v_add_lshl_u32 v145, v76, s34, 1
	v_add_lshl_u32 v146, v77, s34, 1
	v_add_lshl_u32 v147, v78, s34, 1
	v_add_lshl_u32 v148, v79, s34, 1
	v_add_lshl_u32 v149, v80, s34, 1
	v_add_lshl_u32 v150, v81, s34, 1
	v_add_lshl_u32 v151, v82, s34, 1
	v_add_lshl_u32 v153, v84, s34, 1
	v_add_lshl_u32 v154, v85, s34, 1
	v_add_lshl_u32 v155, v86, s34, 1
	v_add_lshl_u32 v156, v87, s34, 1
	v_add_lshl_u32 v157, v88, s34, 1
	v_add_lshl_u32 v158, v89, s34, 1
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s4, s1, s4
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v94, v[25:26]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[25:28], v68 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[42:45], v68 offset1:1
	ds_load_2addr_stride64_b64 v[29:32], v91 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[120:123], v91 offset1:1
	ds_load_2addr_stride64_b64 v[124:127], v92 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[27:28], v[51:52], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[104:111], v[25:26], v[51:52], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[44:45], v[51:52], v[17:24] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[17:20], v92 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[31:32], v[53:54], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[104:111], v[29:30], v[53:54], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[42:43], v[51:52], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[122:123], v[53:54], v[112:119] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[42:45], v93 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[126:127], v[55:56], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[120:121], v[53:54], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[104:111], v[124:125], v[55:56], v[104:111] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v120, 0x80000000, v149, s2
	v_cndmask_b32_e64 v121, 0x80000000, v150, s2
	v_cndmask_b32_e64 v126, 0x80000000, v151, s2
	v_cndmask_b32_e64 v149, 0x80000000, v156, s2
	v_cndmask_b32_e64 v150, 0x80000000, v157, s2
	v_cndmask_b32_e64 v151, 0x80000000, v158, s2
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[24:31], v[17:18], v[55:56], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[112:119], v[19:20], v[55:56], v[112:119] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[17:20], v93 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[44:45], v[57:58], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[104:111], v[42:43], v[57:58], v[104:111] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v45, v90, s34, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v32, v41
	v_cvt_f32_i32_e32 v127, v104
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v41, v106
	v_cvt_f32_i32_e32 v43, v105
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v104, v131, s34, 1
	v_add_lshl_u32 v105, v132, s34, 1
	v_add_lshl_u32 v106, v133, s34, 1
	v_cndmask_b32_e64 v133, 0x80000000, v152, s2
	v_cndmask_b32_e64 v152, 0x80000000, v45, s2
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v33, v35
	v_cvt_f32_i32_e32 v21, v39
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[24:31], v[17:18], v[57:58], v[24:31] neg_lo:[1,1,0]
	v_mad_u64_u32 v[17:18], null, s6, s31, v[50:51]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v18, v47, s34, 1
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[112:119], v[19:20], v[57:58], v[112:119] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v20, v48, s34, 1
	v_add_lshl_u32 v47, v102, s34, 1
	v_add_lshl_u32 v19, s34, v63, 1
	v_add_lshl_u32 v48, v128, s34, 1
	.loc	1 694 30                        ; attention.py:694:30
	v_lshlrev_b32_e32 v45, 1, v17
	v_add_lshl_u32 v17, v17, s47, 1
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v102, v130, s34, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v22, v27
	v_cvt_f32_i32_e32 v27, v29
	v_cvt_f32_i32_e32 v29, v40
	v_cvt_f32_i32_e32 v40, v107
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v107, 0x80000000, v47, s2
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v135, v26
	v_cvt_f32_i32_e32 v23, v25
	v_cvt_f32_i32_e32 v25, v31
	v_cvt_f32_i32_e32 v26, v30
	v_cvt_f32_i32_e32 v30, v38
	v_cvt_f32_i32_e32 v31, v37
	v_cvt_f32_i32_e32 v35, v36
	v_cvt_f32_i32_e32 v42, v109
	v_cvt_f32_i32_e32 v39, v108
	v_cvt_f32_i32_e32 v36, v111
	v_cvt_f32_i32_e32 v37, v110
	v_cvt_f32_i32_e32 v137, v116
	v_cvt_f32_i32_e32 v136, v115
	v_cvt_f32_i32_e32 v134, v114
	v_cvt_f32_i32_e32 v129, v113
	v_cvt_f32_i32_e32 v125, v119
	v_cvt_f32_i32_e32 v44, v117
	v_cvt_f32_i32_e32 v38, v112
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v108, 0x80000000, v138, s2
	v_cndmask_b32_e64 v109, 0x80000000, v139, s2
	v_cndmask_b32_e64 v110, 0x80000000, v140, s2
	v_cndmask_b32_e64 v111, 0x80000000, v141, s2
	v_cndmask_b32_e64 v112, 0x80000000, v142, s2
	v_cndmask_b32_e64 v113, 0x80000000, v143, s2
	v_cndmask_b32_e64 v114, 0x80000000, v144, s2
	v_cndmask_b32_e64 v115, 0x80000000, v145, s2
	v_cndmask_b32_e64 v116, 0x80000000, v146, s2
	v_cndmask_b32_e64 v117, 0x80000000, v147, s2
	v_cndmask_b32_e64 v119, 0x80000000, v148, s2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_cndmask_b32_e64 v48, 0x80000000, v48, s2
	v_cndmask_b32_e64 v104, 0x80000000, v104, s2
	v_cndmask_b32_e64 v122, 0x80000000, v105, s2
	v_cndmask_b32_e64 v123, 0x80000000, v106, s2
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v142, 0x80000000, v45, s4
	v_cndmask_b32_e64 v17, 0x80000000, v17, s4
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v146, 0x80000000, v153, s2
	v_cndmask_b32_e64 v147, 0x80000000, v154, s2
	v_cndmask_b32_e64 v148, 0x80000000, v155, s2
	v_cndmask_b32_e64 v102, 0x80000000, v102, s2
	s_clause 0x17
	buffer_load_u16 v45, v46, s[52:55], 0 offen
	buffer_load_u16 v47, v18, s[52:55], 0 offen
	buffer_load_u16 v140, v20, s[52:55], 0 offen
	buffer_load_u16 v106, v107, s[52:55], 0 offen
	buffer_load_u16 v46, v48, s[52:55], 0 offen
	buffer_load_u16 v48, v102, s[52:55], 0 offen
	buffer_load_u16 v105, v104, s[52:55], 0 offen
	buffer_load_u16 v107, v122, s[52:55], 0 offen
	buffer_load_u16 v104, v123, s[52:55], 0 offen
	buffer_load_u16 v131, v108, s[52:55], 0 offen
	buffer_load_u16 v138, v109, s[52:55], 0 offen
	buffer_load_u16 v139, v110, s[52:55], 0 offen
	buffer_load_u16 v141, v111, s[52:55], 0 offen
	buffer_load_u16 v122, v112, s[52:55], 0 offen
	buffer_load_u16 v128, v113, s[52:55], 0 offen
	buffer_load_u16 v130, v114, s[52:55], 0 offen
	buffer_load_u16 v132, v115, s[52:55], 0 offen
	buffer_load_u16 v123, v116, s[52:55], 0 offen
	buffer_load_u16 v108, v117, s[52:55], 0 offen
	buffer_load_u16 v110, v119, s[52:55], 0 offen
	buffer_load_u16 v114, v120, s[52:55], 0 offen
	buffer_load_u16 v124, v121, s[52:55], 0 offen
	buffer_load_u16 v109, v126, s[52:55], 0 offen
	buffer_load_u16 v111, v133, s[52:55], 0 offen
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[142:145], v142, s[56:59], 0 offen
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x7
	buffer_load_u16 v120, v146, s[52:55], 0 offen
	buffer_load_u16 v121, v147, s[52:55], 0 offen
	buffer_load_u16 v119, v148, s[52:55], 0 offen
	buffer_load_u16 v112, v149, s[52:55], 0 offen
	buffer_load_u16 v115, v150, s[52:55], 0 offen
	buffer_load_u16 v113, v151, s[52:55], 0 offen
	buffer_load_u16 v117, v152, s[52:55], 0 offen
	buffer_load_u16 v116, v19, s[52:55], 0 offen
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[17:20], v17, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v133, v101
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v24, v24
	v_mul_f32_e32 v38, v95, v38
	v_mul_f32_e32 v32, v100, v32
	v_dual_mul_f32 v26, v99, v26 :: v_dual_mul_f32 v27, v98, v27
	v_cvt_f32_i32_e32 v28, v28
	v_dual_mul_f32 v30, v98, v30 :: v_dual_mul_f32 v31, v95, v31
	v_mul_f32_e32 v29, v100, v29
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s4, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v28, v95, v28
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v102.h, 0
	v_mov_b32_e32 v126, v103
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s34, s34, 64
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v35, v99, v35
	v_mul_f32_e32 v25, v100, v25
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v103.h, v102.h
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s34, s35
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v104, 16, v104
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(9)
	ds_store_b128 v67, v[142:145]
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v142.h, v102.h
	v_mov_b16_e64 v143.h, v102.h
	v_mov_b16_e64 v144.h, v102.h
	v_mov_b16_e64 v145.h, v102.h
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v113, 16, v113
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(0)
	ds_store_b128 v67, v[17:20] offset:4096
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v17, v99, v135 :: v_dual_lshlrev_b32 v18, 16, v140
	v_mul_f32_e32 v19, v95, v41
	v_dual_mul_f32 v20, v100, v33 :: v_dual_mul_f32 v33, v99, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v34, v98, v36 :: v_dual_mul_f32 v101, v17, v18
	v_mul_f32_e32 v17, v100, v137
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v18, 16, v141
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v36, v95, v37
	v_mul_f32_e32 v41, v99, v21
	v_dual_mul_f32 v37, v100, v22 :: v_dual_lshlrev_b32 v116, 16, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v140, v17, v18 :: v_dual_mul_f32 v17, v99, v136
	v_dual_mul_f32 v41, v41, v113 :: v_dual_lshlrev_b32 v18, 16, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v32, v32, v116 :: v_dual_lshlrev_b32 v115, 16, v115
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v135.h, v102.h
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v139, v17, v18
	v_mul_f32_e32 v17, v98, v134
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v18, 16, v138
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v30, v30, v115
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v32, s64, v32 :: v_dual_mul_f32 v41, s63, v41
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v138.h, v102.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v134, v17, v18 :: v_dual_mul_f32 v17, v95, v129
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v18, 16, v131
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v30, s62, v30
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v32, 0xff800000, v32, s4
	v_cndmask_b32_e64 v41, 0xff800000, v41, s4
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v133
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v131, v17, v18
	v_dual_mul_f32 v17, v100, v127 :: v_dual_lshlrev_b32 v18, 16, v132
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v30, 0xff800000, v30, s4
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v127.h, v102.h
	v_mov_b16_e64 v136.h, v102.h
	v_mov_b16_e64 v129.h, v102.h
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v132, v17, v18 :: v_dual_mul_f32 v17, v99, v125
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v18, 16, v130
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v125.h, v102.h
	v_mov_b16_e64 v137.h, v102.h
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v130, v17, v18
	v_dual_mul_f32 v17, v98, v118 :: v_dual_lshlrev_b32 v18, 16, v128
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v118.h, v102.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v128, v17, v18 :: v_dual_mul_f32 v17, v95, v44
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v18, 16, v122
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v44.h, v102.h
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v122, v17, v18 :: v_dual_mul_f32 v17, v98, v43
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v18, 16, v123
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v43.h, v102.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v123, v17, v18 :: v_dual_lshlrev_b32 v18, 16, v124
	v_mul_f32_e32 v17, v100, v42
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v42.h, v102.h
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v124, v17, v18 :: v_dual_mul_f32 v17, v99, v39
	v_mul_f32_e32 v39, v98, v23
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v23, 16, v108
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v18, v98, v40 :: v_dual_lshlrev_b32 v21, 16, v114
	v_mul_f32_e32 v40, v95, v24
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v108, 16, v120
	v_lshlrev_b32_e32 v114, 16, v117
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v120, v19, v23
	v_dual_mul_f32 v117, v17, v21 :: v_dual_lshlrev_b32 v22, 16, v110
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v24, 16, v121
	v_lshlrev_b32_e32 v110, 16, v111
	v_lshlrev_b32_e32 v111, 16, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v119, v18, v22
	v_dual_mul_f32 v38, v38, v104 :: v_dual_lshlrev_b32 v105, 16, v105
	v_mul_f32_e32 v121, v20, v24
	v_dual_mul_f32 v34, v34, v110 :: v_dual_lshlrev_b32 v109, 16, v109
	v_dual_mul_f32 v26, v26, v105 :: v_dual_lshlrev_b32 v107, 16, v107
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v46, 16, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v36, v36, v109 :: v_dual_mul_f32 v35, v35, v111
	v_dual_mul_f32 v33, v33, v108 :: v_dual_lshlrev_b32 v106, 16, v106
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v48, 16, v48
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v28, v28, v46 :: v_dual_lshlrev_b32 v45, 16, v45
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v47, 16, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v37, v37, v106
	v_mul_f32_e32 v25, v25, v107
	v_mul_f32_e32 v27, v27, v48
	v_dual_mul_f32 v29, v29, v114 :: v_dual_lshlrev_b32 v112, 16, v112
	v_dual_mul_f32 v40, v40, v45 :: v_dual_mul_f32 v39, v39, v47
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v25, s64, v25
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v31, v31, v112 :: v_dual_mul_f32 v46, s61, v131
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v45, s63, v101 :: v_dual_mul_f32 v48, s63, v139
	v_dual_mul_f32 v47, s62, v134 :: v_dual_mul_f32 v108, s62, v123
	v_dual_mul_f32 v101, s64, v140 :: v_dual_mul_f32 v104, s61, v122
	v_dual_mul_f32 v105, s62, v128 :: v_dual_mul_f32 v106, s63, v130
	v_dual_mul_f32 v107, s64, v132 :: v_dual_mul_f32 v110, s62, v119
	v_dual_mul_f32 v113, s64, v121 :: v_dual_mul_f32 v40, s61, v40
	v_dual_mul_f32 v35, s63, v35 :: v_dual_mul_f32 v28, s61, v28
	v_dual_mul_f32 v37, s64, v37 :: v_dual_mul_f32 v26, s63, v26
	v_dual_mul_f32 v39, s62, v39 :: v_dual_mul_f32 v38, s61, v38
	v_mul_f32_e32 v27, s62, v27
	v_mul_f32_e32 v31, s61, v31
	v_dual_mul_f32 v109, s61, v120 :: v_dual_mul_f32 v34, s62, v34
	v_dual_mul_f32 v111, s63, v117 :: v_dual_mul_f32 v112, s64, v124
	v_dual_mul_f32 v36, s61, v36 :: v_dual_mul_f32 v33, s63, v33
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v114, 0xff800000, v101, s4
	v_cndmask_b32_e64 v48, 0xff800000, v48, s4
	v_cndmask_b32_e64 v47, 0xff800000, v47, s4
	v_cndmask_b32_e64 v46, 0xff800000, v46, s4
	v_cndmask_b32_e64 v107, 0xff800000, v107, s4
	v_cndmask_b32_e64 v106, 0xff800000, v106, s4
	v_cndmask_b32_e64 v105, 0xff800000, v105, s4
	v_cndmask_b32_e64 v104, 0xff800000, v104, s4
	v_cndmask_b32_e64 v108, 0xff800000, v108, s4
	v_cndmask_b32_e64 v37, 0xff800000, v37, s4
	v_cndmask_b32_e64 v39, 0xff800000, v39, s4
	v_cndmask_b32_e64 v40, 0xff800000, v40, s4
	v_cndmask_b32_e64 v27, 0xff800000, v27, s4
	v_cndmask_b32_e64 v28, 0xff800000, v28, s4
	v_cndmask_b32_e64 v31, 0xff800000, v31, s4
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v29, s64, v29
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v45, 0xff800000, v45, s4
	v_cndmask_b32_e64 v112, 0xff800000, v112, s4
	v_cndmask_b32_e64 v111, 0xff800000, v111, s4
	v_cndmask_b32_e64 v110, 0xff800000, v110, s4
	v_cndmask_b32_e64 v109, 0xff800000, v109, s4
	v_cndmask_b32_e64 v113, 0xff800000, v113, s4
	v_cndmask_b32_e64 v33, 0xff800000, v33, s4
	v_cndmask_b32_e64 v34, 0xff800000, v34, s4
	v_cndmask_b32_e64 v36, 0xff800000, v36, s4
	v_cndmask_b32_e64 v35, 0xff800000, v35, s4
	v_cndmask_b32_e64 v25, 0xff800000, v25, s4
	v_cndmask_b32_e64 v26, 0xff800000, v26, s4
	v_cndmask_b32_e64 v38, 0xff800000, v38, s4
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v101, v46, v47, v48
	v_max3_f32 v115, v114, v104, v105
	v_max3_f32 v116, v106, v107, v108
	v_max_f32_e32 v121, v40, v39
	v_max3_f32 v122, v37, v28, v27
	v_max_f32_e32 v124, v31, v30
.Ltmp2:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v29, 0xff800000, v29, s4
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v117, v109, v110, v111
	v_max3_f32 v119, v112, v36, v34
	v_max3_f32 v120, v33, v113, v35
	v_max3_f32 v123, v26, v25, v38
	v_max_f32_e32 v128, v29, v32
	v_max3_f32 v101, v101, v115, v116
	v_max3_f32 v115, v121, v45, v122
	v_max3_f32 v116, v117, v119, v120
.Ltmp4:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v17, v66
	ds_load_u16_d16 v18, v66 offset:256
	ds_load_u16_d16 v19, v66 offset:512
	ds_load_u16_d16 v20, v66 offset:768
	ds_load_u16_d16 v21, v66 offset:1024
	ds_load_u16_d16 v22, v66 offset:1280
	ds_load_u16_d16 v23, v66 offset:1536
	ds_load_u16_d16 v24, v66 offset:1792
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v117, v124, v41, v128
	v_max3_f32 v101, v115, v123, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v101, v101, v116, v117
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v115, v101, s60, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v101, v133, v101, v115
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v107, v107, v101
	v_sub_f32_e32 v113, v113, v101
	v_sub_f32_e32 v41, v41, v101
	v_sub_f32_e32 v29, v29, v101
	v_sub_f32_e32 v106, v106, v101
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v107, v107
	v_exp_f32_e32 v121, v113
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v29, v29
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v35, v35, v101
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v106, v106
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v112, v112, v101
	v_sub_f32_e32 v36, v36, v101
	v_sub_f32_e32 v34, v34, v101
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v131, 0, v107, s4
	v_cndmask_b32_e64 v107, 0, v121, s4
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v120, v112
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v109, v109, v101
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v36, v36
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v138.l, v131.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v33, v33, v101
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v112, 0, v106, s4
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v34, v34
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v139, 0, v35, s4
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v111, v111, v101
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v109, v109
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v38, v38, v101
	v_sub_f32_e32 v46, v46, v101
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v119, v111
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v36, 0, v36, s4
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v114, v114, v101
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v46, v46
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v32, v32, v101
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v134, 0, v33, s4
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v104, v104, v101
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v132, 0, v109, s4
	v_cndmask_b32_e64 v109, 0, v120, s4
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v117, v114
	v_exp_f32_e32 v32, v32
	v_exp_f32_e32 v104, v104
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v26, v26, v101
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v129.l, v132.h
	v_mov_b16_e64 v118.l, v134.h
	v_mov_b16_e64 v44.l, v139.h
	v_mov_b16_e32 v125.l, v36.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v26, v26
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s9, v36, v36
	v_cmp_o_f32_e64 s6, v131, v131
	v_and_b32_e32 v44, 1, v44
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v113, 0, v104, s4
	v_cndmask_b32_e64 v104, 0, v41, s4
	v_cndmask_b32_e64 v41, 0, v29, s4
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v121, 1, v125
	v_add3_u32 v125, v139, v44, 0x7fff
	v_cmp_o_f32_e64 s7, v132, v132
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v26, 0, v26, s4
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v42.l, v41.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v31, v31, v101
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s16, v41, v41
	v_add3_u32 v121, v36, v121, 0x7fff
	v_mov_b16_e64 v145.l, v26.h
	v_and_b32_e32 v42, 1, v42
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v31, v31
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s13, v134, v134
	v_cmp_o_f32_e64 s14, v139, v139
	v_cmp_o_f32_e64 s23, v109, v109
	v_cmp_o_f32_e64 s25, v107, v107
	v_cmp_o_f32_e64 s27, v104, v104
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v106, 0, v31, s4
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v108, v108, v101
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s26, v106, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v108, v108
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v111, 0, v108, s4
	v_cndmask_b32_e64 v108, 0, v34, s4
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v37, v37, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_sub_f32 v48, v48, v101 :: v_dual_add_f32 v35, v131, v111
.Ltmp8:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v120, v36, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp9:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v116, v48
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v48, 0, v46, s4
	v_cndmask_b32_e64 v46, 0, v117, s4
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s24, v108, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v137.l, v46.h
	v_cmp_o_f32_e64 s12, v46, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v128, 0, v37, s4
	v_cndmask_b32_e64 v37, 0, v38, s4
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v28, v28, v101
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s21, v128, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v31, v37, v48
.Ltmp11:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v28, v28
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v103.l, v37.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v30, v30, v101
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s10, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v30, v30
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v28, 0, v28, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v144.l, v28.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v105, v105, v101
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v140, 0, v30, s4
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v110, v110, v101
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s20, v28, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v105, v105
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v43.l, v140.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v110, v110
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s15, v140, v140
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v117, 0, v105, s4
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v27, v27, v101
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v110, 0, v110, s4
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v45, v45, v101
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v105, 0, v32, s4
.Ltmp12:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v34, v117, v112
.Ltmp13:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v27, v27
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v136.l, v117.h
	v_cmp_o_f32_e64 s5, v117, v117
	v_cmp_o_f32_e64 s28, v105, v105
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v130, 0, v27, s4
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v29, v28, v130
.Ltmp15:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v47, v47, v101
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s22, v130, v130
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v47, v47
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v38, 0, v47, s4
	v_cndmask_b32_e64 v47, 0, v116, s4
.Ltmp16:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v116, v132, v110
.Ltmp17:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v45, v45
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v39, v39, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v25, v25, v101 :: v_dual_add_f32 v32, v38, v47
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v135.l, v38.h
	v_cmp_o_f32_e64 s11, v38, v38
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v147, v31, v32
.Ltmp19:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v45, 0, v45, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v40, v40, v101 :: v_dual_add_f32 v27, v45, v128
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v39, 0, v39, s4
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v143.l, v45.h
	v_cmp_o_f32_e64 s17, v45, v45
	v_mov_b16_e32 v102.l, v39.h
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v115, v133, v101
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v133, 0, v119, s4
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s18, v39, v39
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v40, 0, v40, s4
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v32, 1, v102
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v115, v115
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v102.l, v128.h
	v_mov_b16_e64 v127.l, v133.h
	v_mov_b16_e64 v142.l, v40.h
	v_cmp_o_f32_e64 s19, v40, v40
	v_cmp_o_f32_e64 s8, v133, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_and_b32_e32 v31, 1, v142
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v142, v35, v116
.Ltmp21:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v25, v25
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v115, 0, v115, s2
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v33, v46, v113
	v_add_f32_e32 v119, v133, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp23:
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v6, v6, v115 :: v_dual_and_b32 v35, 1, v145
	v_mul_f32_e32 v4, v4, v115
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v148, v33, v34 :: v_dual_and_b32 v33, 1, v143
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp25:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v114, 0, v25, s4
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v25, v40, v39 :: v_dual_and_b32 v34, 1, v144
.Ltmp27:
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v2, v2, v115 :: v_dual_add_f32 v143, v119, v120
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v30, v26, v114 :: v_dual_add_f32 v141, v25, v27
	v_add_f32_e32 v25, v134, v107
	v_add_f32_e32 v27, v139, v106
.Ltmp29:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v28, v28, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v146, v29, v30 :: v_dual_add_f32 v29, v140, v104
	v_add_f32_e32 v30, v41, v105
	v_add_f32_e32 v144, v25, v27
.Ltmp31:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v25, v39, v32, 0x7fff
	v_and_b32_e32 v39, 1, v136
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v145, v29, v30 :: v_dual_and_b32 v34, 1, v135
.Ltmp33:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v29, v45, v33, 0x7fff
	v_and_b32_e32 v45, 1, v129
	v_add3_u32 v135, v140, v43, 0x7fff
	v_add3_u32 v136, v41, v42, 0x7fff
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v41, v141, v146 :: v_dual_add_f32 v42, v147, v148
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp35:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v119, v132, v45, 0x7fff
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v44, v144, v145 :: v_dual_and_b32 v45, 1, v118
	v_add_f32_e32 v43, v142, v143
.Ltmp37:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v120, 1, v127
	v_add3_u32 v27, v40, v31, 0x7fff
	v_add3_u32 v118, v134, v45, 0x7fff
	v_and_b32_e32 v45, 1, v102
	v_mov_b16_e64 v102.l, v130.h
	v_add3_u32 v116, v26, v35, 0x7fff
	v_and_b32_e32 v33, 1, v103
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v8, v8, v115 :: v_dual_and_b32 v35, 1, v137
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v40, 1, v138
	v_add3_u32 v103, v117, v39, 0x7fff
	v_and_b32_e32 v127, 1, v102
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v137, v41, v42 :: v_dual_add_f32 v138, v43, v44
.Ltmp39:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v102.l, v114.h
	v_add3_u32 v120, v133, v120, 0x7fff
	v_cndmask_b16 v120.l, 0x7fff, v103.h, s5
	v_cmp_o_f32_e64 s4, v26, v26
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v103, v137, v138
.Ltmp41:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v137, 1, v102
	v_mov_b16_e32 v102.l, v48.h
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v25, v66 offset:2048
	ds_load_u16_d16 v26, v66 offset:2304
	ds_load_u16_d16 v27, v66 offset:2560
	ds_load_u16_d16 v28, v66 offset:2816
	ds_load_u16_d16 v29, v66 offset:3072
	ds_load_u16_d16 v30, v66 offset:3328
	ds_load_u16_d16 v31, v66 offset:3584
	ds_load_u16_d16 v32, v66 offset:3840
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v122, v37, v33, 0x7fff
	v_add3_u32 v123, v38, v34, 0x7fff
	v_add3_u32 v124, v46, v35, 0x7fff
	v_add3_u32 v117, v131, v40, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v33, v66 offset:4096
	ds_load_u16_d16 v34, v66 offset:4352
	ds_load_u16_d16 v35, v66 offset:4608
	ds_load_u16_d16 v36, v66 offset:4864
	ds_load_u16_d16 v37, v66 offset:5120
	ds_load_u16_d16 v38, v66 offset:5376
	ds_load_u16_d16 v39, v66 offset:5632
	ds_load_u16_d16 v40, v66 offset:5888
	.loc	1 700 30                        ; attention.py:700:30
	s_waitcnt lgkmcnt(15)
	v_cndmask_b16 v46.h, 0x7fff, v25.h, s18
	s_waitcnt lgkmcnt(13)
	v_cndmask_b16 v46.l, 0x7fff, v27.h, s19
	v_add3_u32 v45, v128, v45, 0x7fff
	v_add3_u32 v41, v130, v127, 0x7fff
	v_cmp_o_f32_e64 s2, v114, v114
	v_add3_u32 v114, v114, v137, 0x7fff
	v_and_b32_e32 v137, 1, v102
	v_mov_b16_e32 v102.l, v47.h
	s_waitcnt lgkmcnt(11)
	v_cndmask_b16 v45.l, 0x7fff, v29.h, s17
	v_cndmask_b16 v128.l, 0x7fff, v28.h, s20
	v_permlanex16_b32 v42, v46, s60, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v45.h, 0x7fff, v45.h, s21
	v_cndmask_b16 v128.h, 0x7fff, v41.h, s22
	v_cmp_o_f32_e64 s17, v48, v48
	v_cndmask_b16 v116.l, 0x7fff, v116.h, s4
	v_cndmask_b16 v116.h, 0x7fff, v114.h, s2
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v114, v103, s60, 0xfedcba98 op_sel:[1,0]
.Ltmp43:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v48, v48, v137, 0x7fff
	v_and_b32_e32 v137, 1, v102
	v_mov_b16_e32 v102.l, v113.h
	v_perm_b32 v41, v42, v46, v96
	v_permlanex16_b32 v44, v45, s60, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v42, v42, v46, v97
	v_permlanex16_b32 v46, v128, s60, 0xfedcba98 op_sel:[1,0]
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v103, v103, v114
.Ltmp45:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v114, v116, s60, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v138, 1, v102
	v_mov_b16_e32 v102.l, v112.h
	v_perm_b32 v43, v44, v45, v96
	v_perm_b32 v44, v44, v45, v97
	v_perm_b32 v45, v46, v128, v96
	v_perm_b32 v46, v46, v128, v97
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v1, v1, v115
	v_mul_f32_e32 v5, v5, v115
	v_mul_f32_e32 v7, v7, v115
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s18, v47, v47
	v_cndmask_b16 v121.l, 0x7fff, v117.h, s6
	v_add3_u32 v137, v47, v137, 0x7fff
	v_cndmask_b16 v117.h, 0x7fff, v48.h, s17
	v_perm_b32 v47, v114, v116, v96
	v_perm_b32 v48, v114, v116, v97
	v_and_b32_e32 v116, 1, v102
	v_mov_b16_e32 v102.l, v111.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v3, v3, v115
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v127, v66 offset:6144
	ds_load_u16_d16 v128, v66 offset:6400
	ds_load_u16_d16 v129, v66 offset:6656
	ds_load_u16_d16 v130, v66 offset:6912
	ds_load_u16_d16 v131, v66 offset:7168
	ds_load_u16_d16 v132, v66 offset:7424
	ds_load_u16_d16 v133, v66 offset:7680
	ds_load_u16_d16 v134, v66 offset:7936
	ds_load_u16_d16_hi v17, v66 offset:128
	ds_load_u16_d16_hi v18, v66 offset:384
	ds_load_u16_d16_hi v19, v66 offset:640
	ds_load_u16_d16_hi v20, v66 offset:896
	ds_load_u16_d16_hi v21, v66 offset:1152
	ds_load_u16_d16_hi v22, v66 offset:1408
	ds_load_u16_d16_hi v23, v66 offset:1664
	ds_load_u16_d16_hi v24, v66 offset:1920
	ds_load_u16_d16_hi v25, v66 offset:2176
	ds_load_u16_d16_hi v26, v66 offset:2432
	ds_load_u16_d16_hi v27, v66 offset:2688
	ds_load_u16_d16_hi v28, v66 offset:2944
	ds_load_u16_d16_hi v29, v66 offset:3200
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v30, v66 offset:3456
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v31, v66 offset:3712
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v32, v66 offset:3968
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v33, v66 offset:4224
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v34, v66 offset:4480
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v35, v66 offset:4736
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v36, v66 offset:4992
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v37, v66 offset:5248
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v38, v66 offset:5504
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v39, v66 offset:5760
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v40, v66 offset:6016
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s19, v113, v113
	v_cmp_o_f32_e64 s20, v112, v112
	v_add3_u32 v113, v113, v138, 0x7fff
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[17:24], v[41:48], v[1:8]
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v21, v112, v116, 0x7fff
	v_and_b32_e32 v22, 1, v102
	v_mov_b16_e32 v102.l, v110.h
	v_cndmask_b16 v117.l, 0x7fff, v122.h, s10
	v_cndmask_b16 v118.l, 0x7fff, v123.h, s11
	v_cndmask_b16 v119.l, 0x7fff, v124.h, s12
	v_cndmask_b16 v122.l, 0x7fff, v119.h, s7
	v_cndmask_b16 v123.l, 0x7fff, v120.h, s8
	v_cndmask_b16 v125.l, 0x7fff, v118.h, s13
	v_cndmask_b16 v118.h, 0x7fff, v137.h, s18
	v_cndmask_b16 v119.h, 0x7fff, v113.h, s19
	v_cndmask_b16 v120.h, 0x7fff, v21.h, s20
	v_and_b32_e32 v41, 1, v102
	v_mov_b16_e32 v102.l, v109.h
	v_cmp_o_f32_e64 s21, v111, v111
	v_cmp_o_f32_e64 s22, v110, v110
	v_permlanex16_b32 v114, v117, s60, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v118, s60, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v119, s60, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v24, v111, v22, 0x7fff
	v_permlanex16_b32 v42, v120, s60, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v41, v110, v41, 0x7fff
	v_and_b32_e32 v43, 1, v102
	v_mov_b16_e32 v102.l, v108.h
	v_cndmask_b16 v124.l, 0x7fff, v121.h, s9
	v_perm_b32 v17, v114, v117, v96
	v_perm_b32 v18, v114, v117, v97
	v_perm_b32 v19, v20, v118, v96
	v_perm_b32 v20, v20, v118, v97
	v_perm_b32 v21, v23, v119, v96
	v_perm_b32 v22, v23, v119, v97
	v_cndmask_b16 v121.h, 0x7fff, v24.h, s21
	v_perm_b32 v23, v42, v120, v96
	v_perm_b32 v24, v42, v120, v97
	v_cndmask_b16 v122.h, 0x7fff, v41.h, s22
	v_add3_u32 v41, v109, v43, 0x7fff
	v_and_b32_e32 v43, 1, v102
	v_mov_b16_e32 v102.l, v107.h
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[25:32], v[17:24], v[1:8]
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v135.l, 0x7fff, v125.h, s14
	v_cndmask_b16 v123.h, 0x7fff, v41.h, s23
	v_add3_u32 v21, v108, v43, 0x7fff
	v_and_b32_e32 v22, 1, v102
	v_mov_b16_e32 v102.l, v106.h
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16_hi v127, v66 offset:6272
	ds_load_u16_d16_hi v128, v66 offset:6528
	ds_load_u16_d16_hi v129, v66 offset:6784
	ds_load_u16_d16_hi v130, v66 offset:7040
	ds_load_u16_d16_hi v131, v66 offset:7296
	ds_load_u16_d16_hi v132, v66 offset:7552
	ds_load_u16_d16_hi v133, v66 offset:7808
	ds_load_u16_d16_hi v134, v66 offset:8064
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v136.l, 0x7fff, v135.h, s15
	v_cndmask_b16 v124.h, 0x7fff, v21.h, s24
	v_add3_u32 v25, v107, v22, 0x7fff
	v_and_b32_e32 v24, 1, v102
	v_mov_b16_e32 v102.l, v104.h
	v_permlanex16_b32 v42, v121, s60, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v122, s60, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v125.h, 0x7fff, v25.h, s25
	v_add3_u32 v25, v106, v24, 0x7fff
	v_and_b32_e32 v27, 1, v102
	v_mov_b16_e32 v102.l, v105.h
	v_permlanex16_b32 v23, v123, s60, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v124, s60, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v135.h, 0x7fff, v25.h, s26
	v_add3_u32 v27, v104, v27, 0x7fff
	.loc	1 701 23                        ; attention.py:701:23
	v_dual_fmac_f32 v103, v126, v115 :: v_dual_and_b32 v28, 1, v102
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v139.l, 0x7fff, v136.h, s16
	v_perm_b32 v17, v42, v121, v96
	v_perm_b32 v18, v42, v121, v97
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v25, v105, v28, 0x7fff
	v_perm_b32 v19, v20, v122, v96
	v_perm_b32 v20, v20, v122, v97
	v_perm_b32 v21, v23, v123, v96
	v_perm_b32 v22, v23, v123, v97
	v_perm_b32 v23, v26, v124, v96
	v_perm_b32 v24, v26, v124, v97
	v_cndmask_b16 v136.h, 0x7fff, v27.h, s27
	v_cndmask_b16 v139.h, 0x7fff, v25.h, s28
	v_permlanex16_b32 v26, v125, s60, 0xfedcba98 op_sel:[1,0]
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[17:24], v[1:8]
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v20, v135, s60, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v136, s60, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v139, s60, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v17, v26, v125, v96
	v_perm_b32 v18, v26, v125, v97
	v_perm_b32 v19, v20, v135, v96
	v_perm_b32 v20, v20, v135, v97
	v_perm_b32 v21, v22, v136, v96
	v_perm_b32 v22, v22, v136, v97
	v_perm_b32 v23, v24, v139, v96
	v_perm_b32 v24, v24, v139, v97
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[127:134], v[17:24], v[1:8]
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v101, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v103, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 825 26 is_stmt 1              ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v60
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s33, s33, s3
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s0, s31, 2
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s29, s33
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s2, exec_lo
	.loc	1 825 17                        ; attention.py:825:17
	v_dual_cndmask_b32 v9, 0xff800000, v101 :: v_dual_cndmask_b32 v2, 0, v2
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v15, 0, v7 :: v_dual_mov_b32 v10, v9
	.loc	1 828 36                        ; attention.py:828:36
	v_cndmask_b32_e32 v11, 0, v103, vcc_lo
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v12, 0, v4
.Ltmp47:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v13, 0, v5 :: v_dual_cndmask_b32 v16, 0, v8
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_mov_b32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v17, v13 :: v_dual_mov_b32 v20, v16
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v4, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v7, v2 :: v_dual_mov_b32 v8, v3
.Ltmp53:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v5, v11
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v4, v9, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v9, v4 :: v_dual_add_f32 v2, v2, v7
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v5, v11, v5
.Ltmp62:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v3, v3, v8
	v_dual_add_f32 v1, v1, v6 :: v_dual_mov_b32 v8, v2
.Ltmp63:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp65:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp66:
	.loc	1 822 30 is_stmt 1              ; attention.py:822:30
	s_mul_i32 s0, s1, s0
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp70:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
.Ltmp71:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v2, v2, v8 :: v_dual_mov_b32 v7, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v4, v4, v9 :: v_dual_add_f32 v5, v5, v6
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v8, v3, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v10, v2
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v6, v4 :: v_dual_mov_b32 v3, v5
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp80:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v9, v1 :: v_dual_max_f32 v6, v6, v6
.Ltmp81:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v7, v5, v3
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v11, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v9
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v4, v6
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v4, v8, v11
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v11, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v3, v2, v10 :: v_dual_mov_b32 v2, v1
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp90:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v8, v7
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp92:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v11, v12, v11 :: v_dual_add_f32 v12, v13, v17
	v_add_f32_e32 v13, v14, v18
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v19, v15
.Ltmp95:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp97:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v14, v15, v19 :: v_dual_add_f32 v15, v16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v17, v12 :: v_dual_mov_b32 v20, v15
	v_mov_b32_e32 v16, v11
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v16, v13, v18
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v19, v14 :: v_dual_add_f32 v18, v15, v20
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v12, v12, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v17, v14, v19 :: v_dual_mov_b32 v14, v12
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v13, v11
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v11, v13
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v15, v16
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v13, v12, v14 :: v_dual_mov_b32 v12, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v17
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v14, v16, v15
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v17, v19
	v_add_f32_e32 v17, v18, v20
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v18, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v16, v13 :: v_dual_mov_b32 v19, v15
	v_mov_b32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp114:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp115:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v8, v7, v8
.Ltmp117:
	.loc	1 833 13                        ; attention.py:833:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp118:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v7, v9, v10
.Ltmp119:
	.loc	1 833 13                        ; attention.py:833:13
	v_mov_b32_e32 v9, 0
	s_add_u32 s4, s44, s4
	s_addc_u32 s5, s45, s5
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp120:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
	v_dual_add_f32 v8, v14, v18 :: v_dual_lshlrev_b32 v15, 2, v0
	v_add_f32_e32 v7, v13, v16
	v_dual_add_f32 v14, v11, v12 :: v_dual_add_f32 v13, v4, v6
	v_dual_add_f32 v12, v3, v5 :: v_dual_lshlrev_b32 v3, 5, v0
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xc0, v15
.Ltmp121:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v5, 0xe0, v59
	v_and_b32_e32 v1, 28, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v2, 32, v3
	v_add_nc_u32_e32 v3, 0, v4
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v4, 0, v5
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v5, 63, v0
	.loc	1 835 13                        ; attention.py:835:13
	s_barrier
	v_add3_u32 v1, v3, v2, v1
	ds_store_b128 v4, v[11:14]
	ds_store_b128 v4, v[7:10] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 836 17                        ; attention.py:836:17
	v_add_nc_u32_e32 v2, s0, v5
	.loc	1 838 22                        ; attention.py:838:22
	v_cmp_gt_i32_e32 vcc_lo, s31, v5
	.loc	1 835 13                        ; attention.py:835:13
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s47, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s46, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[44:47], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp122:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
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
		.amdhsa_next_free_vgpr 159
		.amdhsa_next_free_sgpr 65
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_vgpr, 159
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.numbered_sgpr, 65
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8268
; TotalNumSgprs: 67
; NumVgprs: 159
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 19
; NumSGPRsForWavesPerEU: 67
; NumVGPRsForWavesPerEU: 159
; Occupancy: 9
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
	.short	687                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
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
	.short	691                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x76:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	824                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x83:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	829                             ; DW_AT_call_line
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
	.short	828                             ; DW_AT_call_line
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
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
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
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           1
        .value_kind:     by_value
      - .offset:         125
        .size:           1
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
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     67
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     159
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
