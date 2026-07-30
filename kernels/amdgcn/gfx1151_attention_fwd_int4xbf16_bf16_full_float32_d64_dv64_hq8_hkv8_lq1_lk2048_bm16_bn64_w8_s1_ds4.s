	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b32 s55, s[0:1], 0x64
	s_load_b64 s[42:43], s[0:1], 0x5c
	s_load_b64 s[56:57], s[0:1], 0x0
	s_load_b64 s[52:53], s[0:1], 0x40
.Ltmp0:
	.loc	1 559 27 prologue_end           ; attention.py:559:27
	s_abs_i32 s7, s2
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v36, 15, v0
	v_lshrrev_b32_e32 v3, 4, v0
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	.loc	1 585 26                        ; attention.py:585:26
	v_and_b32_e32 v31, 0xc0, v0
	.loc	1 584 86                        ; attention.py:584:86
	v_lshlrev_b32_e32 v2, 1, v36
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v32, 1, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v35, 31, v0
	v_and_b32_e32 v38, 0xf0, v0
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v39, 3, v0
	.loc	1 693 86                        ; attention.py:693:86
	v_and_b32_e32 v37, 7, v0
	v_lshlrev_b32_e32 v34, 2, v0
	v_lshlrev_b32_e32 v33, 5, v0
	s_mov_b32 s44, 0
	.loc	1 609 32                        ; attention.py:609:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s55
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s8, s2, s55
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 559 27                        ; attention.py:559:27
	s_ashr_i32 s8, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 609 32                        ; attention.py:609:32
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s6, s6, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s4, s6
	s_add_i32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 559 27                        ; attention.py:559:27
	s_mul_hi_u32 s4, s7, s6
	s_mul_i32 s9, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_and_b32 s57, s57, 0xffff
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s4, s42, v2
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s13, s7, 4
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s7, s7, s55
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s12, s13, s3
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v9, s13, v3
	.loc	1 584 26                        ; attention.py:584:26
	v_add_nc_u32_e32 v1, s12, v3
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s54, s2, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, 1, v9
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[4:5], null, v1, s42, v[2:3]
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 s4, s4, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v1, 0x80000000, v4, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s55, 31
	.loc	1 585 26                        ; attention.py:585:26
	v_lshrrev_b32_e32 v4, 3, v31
	.loc	1 609 32 is_stmt 1              ; attention.py:609:32
	s_xor_b32 s8, s4, s55
	s_abs_i32 s4, s4
	.loc	1 585 26                        ; attention.py:585:26
	buffer_load_u16 v1, v1, s[56:59], 0 offen
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_hi_u32 s6, s4, s6
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	.loc	1 585 26                        ; attention.py:585:26
	v_xad_u32 v4, v32, v4, 0
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
	s_mul_i32 s4, s54, s2
	.loc	1 611 33                        ; attention.py:611:33
	s_lshl_b32 s2, s2, 6
	.loc	1 610 18                        ; attention.py:610:18
	s_lshl_b32 s72, s4, 6
	.loc	1 611 33                        ; attention.py:611:33
	s_add_i32 s2, s72, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 611 18 is_stmt 0              ; attention.py:611:18
	s_min_i32 s73, s2, 0x800
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_cmp_ge_i32 s72, s73
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
	v_or_b32_e32 v1, s13, v36
	.loc	1 590 31                        ; attention.py:590:31
	v_add_lshl_u32 v4, s12, v36, 1
	v_and_b32_e32 v24, 16, v0
	.loc	1 571 21                        ; attention.py:571:21
	v_bfe_u32 v5, v0, 4, 1
	v_dual_mov_b32 v25, 0x5410 :: v_dual_and_b32 v6, 24, v32
	.loc	1 592 22                        ; attention.py:592:22
	v_cmp_gt_i32_e64 s2, 1, v1
	.loc	1 633 49                        ; attention.py:633:49
	v_lshlrev_b32_e32 v12, 3, v0
	v_dual_mov_b32 v110, 0xff800000 :: v_dual_and_b32 v13, 30, v0
	.loc	1 632 32                        ; attention.py:632:32
	s_lshl_b32 s74, s3, 11
	.loc	1 590 31                        ; attention.py:590:31
	v_cndmask_b32_e64 v1, 0x80000000, v4, s2
	v_dual_mov_b32 v17, 0xff800000 :: v_dual_lshlrev_b32 v4, 3, v37
	v_cmp_eq_u32_e64 s2, 0, v24
	v_lshrrev_b32_e32 v7, 1, v0
	v_or3_b32 v41, s74, v3, 62
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[22:23], null, s43, v39, v[4:5]
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s57, s9, 0xffff
	s_mov_b32 s56, s8
	.loc	1 585 26                        ; attention.py:585:26
	v_lshl_or_b32 v29, v36, 5, v6
	.loc	1 590 31                        ; attention.py:590:31
	buffer_load_u16 v10, v1, s[56:59], 0 offen
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v8, 0xe0, v0
	v_lshlrev_b32_e32 v18, 3, v35
	v_lshlrev_b32_e32 v19, 3, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v6, v1 :: v_dual_lshlrev_b32 v27, 4, v0
	v_lshlrev_b32_e32 v50, 1, v13
	v_cndmask_b32_e64 v23, 0x1054, v25, s2
	v_mov_b32_e32 v3, v1
	v_lshrrev_b32_e32 v49, 3, v8
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x68
	s_load_b64 s[60:61], s[0:1], 0x30
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v26, 0x7632 :: v_dual_lshlrev_b32 v11, 2, v36
	s_lshr_b32 s0, s0, 29
	v_lshrrev_b32_e32 v20, 1, v38
	v_and_b32_e32 v28, 0x60, v0
	s_add_i32 s1, s3, s0
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s0, s43, v4
	v_and_b32_e32 v30, 24, v7
	v_dual_mov_b32 v4, v1 :: v_dual_add_nc_u32 v47, 0, v27
	v_lshl_or_b32 v19, v38, 4, v19
	v_mov_b32_e32 v7, v1
	v_lshl_or_b32 v45, v36, 8, v18
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v24, 8, v29
	v_xor_b32_e32 v25, 16, v29
	v_xor_b32_e32 v27, 24, v29
	v_xor_b32_e32 v49, v34, v49
	v_lshl_or_b32 v50, v35, 6, v50
	v_lshl_or_b32 v23, v23, 8, v23
	v_lshlrev_b32_e32 v16, 6, v0
	.loc	1 633 49                        ; attention.py:633:49
	v_and_b32_e32 v21, 24, v12
	v_add3_u32 v46, 0, v2, v28
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v48, 0, v29
	v_xor_b32_e32 v12, v12, v30
	v_xor_b32_e32 v28, 40, v45
	v_xor_b32_e32 v29, 48, v45
	v_xor_b32_e32 v30, 56, v45
	v_xor_b32_e32 v19, v19, v20
	v_cndmask_b32_e64 v20, 0x3276, v26, s2
	v_add_nc_u32_e32 v60, 0, v24
	v_add_nc_u32_e32 v61, 0, v25
	v_add_nc_u32_e32 v62, 0, v27
	v_xor_b32_e32 v24, 0x420, v49
	v_xor_b32_e32 v25, 4, v50
	v_xor_b32_e32 v26, 8, v50
	v_xor_b32_e32 v27, 12, v50
	v_and_b32_e32 v23, 0x540054, v23
	v_dual_mov_b32 v109, 0xff800000 :: v_dual_lshlrev_b32 v14, 1, v31
	v_dual_mov_b32 v2, v1 :: v_dual_and_b32 v15, 0x380, v33
	.loc	1 629 13                        ; attention.py:629:13
	v_sub_nc_u32_e32 v43, 0x800, v5
	v_or_b32_e32 v44, s74, v5
	v_dual_mov_b32 v5, v1 :: v_dual_and_b32 v16, 64, v16
	v_add_nc_u32_e32 v63, 0, v12
	v_add_nc_u32_e32 v68, 0, v28
	v_add_nc_u32_e32 v69, 0, v29
	v_add_nc_u32_e32 v70, 0, v30
	v_lshl_or_b32 v12, v23, 4, v23
	v_add_nc_u32_e32 v80, 0, v24
	v_add_nc_u32_e32 v81, 0, v25
	v_add_nc_u32_e32 v82, 0, v26
	v_add_nc_u32_e32 v83, 0, v27
	.loc	1 585 26                        ; attention.py:585:26
	ds_load_b64 v[23:24], v48
	ds_load_b64 v[25:26], v60
	ds_load_b64 v[27:28], v61
	ds_load_b64 v[29:30], v62
	v_lshrrev_b32_e32 v51, 4, v8
	v_lshl_or_b32 v14, v35, 2, v14
	v_or3_b32 v52, v16, v15, v13
	v_xor_b32_e32 v13, 8, v45
	v_lshl_or_b32 v20, v20, 8, v20
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s8, s1, -8
	v_xor_b32_e32 v51, v14, v51
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v9, v9, s15
	v_add_nc_u32_e32 v64, 0, v13
	v_and_b32_e32 v13, 0x760076, v20
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s9, s1, 3
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s8, s3, s8
	v_xor_b32_e32 v14, 16, v45
	v_xor_b32_e32 v15, 24, v45
	v_xor_b32_e32 v16, 32, v45
	v_xor_b32_e32 v71, 64, v45
	v_xor_b32_e32 v72, 0x48, v45
	v_xor_b32_e32 v73, 0x50, v45
	v_xor_b32_e32 v74, 0x58, v45
	v_xor_b32_e32 v75, 0x60, v45
	v_xor_b32_e32 v76, 0x68, v45
	v_xor_b32_e32 v77, 0x70, v45
	v_xor_b32_e32 v78, 0x78, v45
	v_xor_b32_e32 v84, 16, v50
	v_xor_b32_e32 v85, 20, v50
	v_xor_b32_e32 v86, 24, v50
	v_xor_b32_e32 v87, 28, v50
	v_xor_b32_e32 v88, 32, v50
	v_xor_b32_e32 v89, 36, v50
	v_xor_b32_e32 v90, 40, v50
	v_xor_b32_e32 v91, 44, v50
	v_xor_b32_e32 v92, 48, v50
	v_xor_b32_e32 v93, 52, v50
	v_xor_b32_e32 v94, 56, v50
	v_xor_b32_e32 v95, 60, v50
	v_xor_b32_e32 v96, 0x210, v51
	v_xor_b32_e32 v97, 4, v52
	v_xor_b32_e32 v98, 8, v52
	v_xor_b32_e32 v99, 12, v52
	v_xor_b32_e32 v100, 16, v52
	v_xor_b32_e32 v101, 20, v52
	v_xor_b32_e32 v102, 24, v52
	v_xor_b32_e32 v103, 28, v52
	v_lshl_or_b32 v13, v13, 4, v13
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s2, s14, s8
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s8, s13, s9
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v40, 2, v0
	s_add_i32 s2, s2, s8
	.loc	1 629 13                        ; attention.py:629:13
	v_sub_nc_u32_e32 v42, 0x800, v11
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v18, v1
	.loc	1 636 31                        ; attention.py:636:31
	v_cmp_gt_i32_e64 s1, s42, v21
	v_or_b32_e32 v53, 46, v44
	v_or_b32_e32 v54, 48, v44
	v_or_b32_e32 v55, 50, v44
	v_or_b32_e32 v56, 52, v44
	v_or_b32_e32 v57, 54, v44
	v_or_b32_e32 v58, 56, v44
	v_or_b32_e32 v59, 58, v44
	v_add_nc_u32_e32 v65, 0, v14
	v_add_nc_u32_e32 v66, 0, v15
	v_add_nc_u32_e32 v67, 0, v16
	v_add_nc_u32_e32 v71, 0, v71
	v_add_nc_u32_e32 v72, 0, v72
	v_add_nc_u32_e32 v73, 0, v73
	v_add_nc_u32_e32 v74, 0, v74
	v_add_nc_u32_e32 v75, 0, v75
	v_add_nc_u32_e32 v76, 0, v76
	v_add_nc_u32_e32 v77, 0, v77
	v_add_nc_u32_e32 v78, 0, v78
	v_add_nc_u32_e32 v79, 0, v19
	v_add_nc_u32_e32 v84, 0, v84
	v_add_nc_u32_e32 v85, 0, v85
	v_add_nc_u32_e32 v86, 0, v86
	v_add_nc_u32_e32 v87, 0, v87
	v_add_nc_u32_e32 v88, 0, v88
	v_add_nc_u32_e32 v89, 0, v89
	v_add_nc_u32_e32 v90, 0, v90
	v_add_nc_u32_e32 v91, 0, v91
	v_add_nc_u32_e32 v92, 0, v92
	v_add_nc_u32_e32 v93, 0, v93
	v_add_nc_u32_e32 v94, 0, v94
	v_add_nc_u32_e32 v95, 0, v95
	v_add_nc_u32_e32 v96, 0, v96
	v_add_nc_u32_e32 v97, 0, v97
	v_add_nc_u32_e32 v98, 0, v98
	v_add_nc_u32_e32 v99, 0, v99
	v_add_nc_u32_e32 v100, 0, v100
	v_add_nc_u32_e32 v101, 0, v101
	v_add_nc_u32_e32 v102, 0, v102
	v_add_nc_u32_e32 v103, 0, v103
	v_and_b32_e32 v104, 0x5040504, v12
	v_add3_u32 v105, s2, v11, v9
	v_and_b32_e32 v106, 0x7060706, v13
	v_or_b32_e32 v108, 60, v44
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s77, s12, 0x3fb8aa3b
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s75, s43, 5
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s76, 0x76543210
	s_mov_b32 s66, s58
	s_mov_b32 s67, s59
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
	s_mov_b32 s70, s58
	s_mov_b32 s71, s59
	s_and_b32 s61, s61, 0xffff
	s_and_b32 s69, s7, 0xffff
	s_mov_b32 s64, s10
	s_mov_b32 s68, s6
	s_mov_b32 s56, s4
	s_mov_b32 s57, s5
	s_mov_b32 s65, s11
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v107, 16, v10
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 633 32                        ; attention.py:633:32
	s_add_i32 s8, s72, s74
	.loc	1 629 13                        ; attention.py:629:13
	v_sub_nc_u32_e32 v114, 0x800, v40
	.loc	1 633 32                        ; attention.py:633:32
	v_or_b32_e32 v115, s8, v40
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v9, s44 :: v_dual_mov_b32 v10, s45
	v_dual_mov_b32 v11, s46 :: v_dual_mov_b32 v12, s47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_lt_i32_e64 s2, s72, v114
	.loc	1 633 32                        ; attention.py:633:32
	v_mad_u64_u32 v[114:115], null, v115, s42, v[21:22]
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v13, s48 :: v_dual_mov_b32 v14, s49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 s2, s1, s2
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v15, s50 :: v_dual_mov_b32 v16, s51
	v_or_b32_e32 v145, 2, v44
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e64 v114, 0x80000000, v114, s2
	v_or_b32_e32 v147, 4, v44
	v_or_b32_e32 v148, 6, v44
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_lt_i32_e64 s4, s72, v42
	v_or_b32_e32 v149, 8, v44
	.loc	1 634 32                        ; attention.py:634:32
	buffer_load_b64 v[114:115], v114, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or_b32_e32 v150, 10, v44
	v_or_b32_e32 v151, 12, v44
	v_or_b32_e32 v152, 14, v44
	v_or_b32_e32 v153, 16, v44
	v_or_b32_e32 v154, 18, v44
	v_or_b32_e32 v157, 20, v44
	v_or_b32_e32 v158, 22, v44
	v_or_b32_e32 v159, 24, v44
	v_or_b32_e32 v160, 26, v44
	v_or_b32_e32 v161, 28, v44
	v_or_b32_e32 v162, 30, v44
	v_or_b32_e32 v163, 32, v44
	v_or_b32_e32 v164, 34, v44
	v_or_b32_e32 v165, 36, v44
	v_or_b32_e32 v166, 38, v44
	v_or_b32_e32 v167, 40, v44
	v_or_b32_e32 v168, 42, v44
	v_or_b32_e32 v169, 44, v44
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v146, v105, s72, 1
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_lt_i32_e64 s2, s72, v43
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s5, vcc_lo, s4
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v19, s72, v44, 1
	v_add_lshl_u32 v20, v53, s72, 1
	v_add_lshl_u32 v144, s72, v41, 1
	v_add_lshl_u32 v155, v151, s72, 1
	v_add_lshl_u32 v156, v153, s72, 1
	v_add_lshl_u32 v151, v154, s72, 1
	v_add_lshl_u32 v157, v157, s72, 1
	v_add_lshl_u32 v158, v158, s72, 1
	v_add_lshl_u32 v159, v159, s72, 1
	v_add_lshl_u32 v153, v162, s72, 1
	v_add_lshl_u32 v162, v165, s72, 1
	v_add_lshl_u32 v166, v166, s72, 1
	v_add_lshl_u32 v111, v54, s72, 1
	v_add_lshl_u32 v112, v55, s72, 1
	v_add_lshl_u32 v113, v56, s72, 1
	v_add_lshl_u32 v140, v57, s72, 1
	v_add_lshl_u32 v141, v58, s72, 1
	v_add_lshl_u32 v142, v59, s72, 1
	v_add_lshl_u32 v143, v108, s72, 1
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v154, 0x80000000, v146, s5
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v151, 0x80000000, v151, s2
	v_cndmask_b32_e64 v153, 0x80000000, v153, s2
	v_cndmask_b32_e64 v166, 0x80000000, v166, s2
	v_cndmask_b32_e64 v155, 0x80000000, v155, s2
	v_cndmask_b32_e64 v156, 0x80000000, v156, s2
	v_cndmask_b32_e64 v157, 0x80000000, v157, s2
	v_cndmask_b32_e64 v158, 0x80000000, v158, s2
	v_cndmask_b32_e64 v159, 0x80000000, v159, s2
	v_cndmask_b32_e64 v162, 0x80000000, v162, s2
	v_cndmask_b32_e64 v144, 0x80000000, v144, s2
	v_cndmask_b32_e64 v111, 0x80000000, v111, s2
	v_cndmask_b32_e64 v112, 0x80000000, v112, s2
	v_cndmask_b32_e64 v113, 0x80000000, v113, s2
	v_cndmask_b32_e64 v140, 0x80000000, v140, s2
	v_cndmask_b32_e64 v141, 0x80000000, v141, s2
	v_cndmask_b32_e64 v142, 0x80000000, v142, s2
	v_cndmask_b32_e64 v143, 0x80000000, v143, s2
	.loc	1 684 35                        ; attention.py:684:35
	v_add_nc_u32_e32 v139, 0, v49
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s41, 0xff800000, v17
	.loc	1 685 25                        ; attention.py:685:25
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v63, v[114:115]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[114:117], v48 offset1:1
	ds_load_2addr_stride64_b64 v[118:121], v48 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[131:134], v60 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[123:130], v[114:115], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[170:177], v[116:117], v[23:24], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[178:185], v[118:119], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[186:193], v[120:121], v[23:24], v[9:16] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[9:12], v60 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[13:16], v61 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[123:130], v[131:132], v[25:26], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[170:177], v[133:134], v[25:26], v[170:177] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[178:185], v[9:10], v[25:26], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[186:193], v[11:12], v[25:26], v[186:193] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[9:12], v61 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[123:130], v[13:14], v[27:28], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[170:177], v[15:16], v[27:28], v[170:177] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[13:16], v62 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[178:185], v[9:10], v[27:28], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[186:193], v[11:12], v[27:28], v[186:193] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[9:12], v62 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[170:177], v[15:16], v[29:30], v[170:177] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[123:130], v[13:14], v[29:30], v[123:130] neg_lo:[1,1,0]
	.loc	1 684 35                        ; attention.py:684:35
	v_mov_b16_e32 v13.l, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v119, v170
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v170, v145, s72, 1
	v_add_lshl_u32 v145, v147, s72, 1
	v_add_lshl_u32 v147, v148, s72, 1
	v_add_lshl_u32 v148, v149, s72, 1
	v_add_lshl_u32 v149, v150, s72, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v132, v171
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v150, v152, s72, 1
	v_add_lshl_u32 v152, v160, s72, 1
	v_add_lshl_u32 v160, v161, s72, 1
	v_add_lshl_u32 v161, v163, s72, 1
	v_add_lshl_u32 v171, v164, s72, 1
	v_add_lshl_u32 v163, v167, s72, 1
	v_add_lshl_u32 v167, v168, s72, 1
	v_add_lshl_u32 v164, v169, s72, 1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[178:185], v[9:10], v[29:30], v[178:185] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v146, 0x80000000, v170, s2
	v_cndmask_b32_e64 v147, 0x80000000, v147, s2
	v_cndmask_b32_e64 v149, 0x80000000, v149, s2
	v_cndmask_b32_e64 v150, 0x80000000, v150, s2
	v_cndmask_b32_e64 v165, 0x80000000, v171, s2
	v_cndmask_b32_e64 v167, 0x80000000, v167, s2
	v_cndmask_b32_e64 v168, 0x80000000, v19, s2
	v_cndmask_b32_e64 v160, 0x80000000, v160, s2
	v_cndmask_b32_e64 v161, 0x80000000, v161, s2
	v_cndmask_b32_e64 v163, 0x80000000, v163, s2
	v_cndmask_b32_e64 v164, 0x80000000, v164, s2
	v_cndmask_b32_e64 v169, 0x80000000, v20, s2
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v134, v130
	v_cvt_f32_i32_e32 v118, v172
	v_cvt_f32_i32_e32 v117, v173
	v_cvt_f32_i32_e32 v116, v174
	v_cvt_f32_i32_e32 v135, v175
	v_cvt_f32_i32_e32 v115, v176
	v_cvt_f32_i32_e32 v133, v177
	v_cvt_f32_i32_e32 v114, v178
	v_cvt_f32_i32_e32 v131, v179
	v_cvt_f32_i32_e32 v16, v180
	v_cvt_f32_i32_e32 v130, v181
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v152, 0x80000000, v152, s2
	v_cndmask_b32_e64 v145, 0x80000000, v145, s2
	v_cndmask_b32_e64 v148, 0x80000000, v148, s2
	.loc	1 683 36                        ; attention.py:683:36
	buffer_load_b64 v[19:20], v154, s[60:63], 0 offen
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x1f
	buffer_load_u16 v154, v146, s[64:67], 0 offen
	buffer_load_u16 v147, v147, s[64:67], 0 offen
	buffer_load_u16 v170, v149, s[64:67], 0 offen
	buffer_load_u16 v171, v150, s[64:67], 0 offen
	buffer_load_u16 v151, v151, s[64:67], 0 offen
	buffer_load_u16 v172, v152, s[64:67], 0 offen
	buffer_load_u16 v153, v153, s[64:67], 0 offen
	buffer_load_u16 v165, v165, s[64:67], 0 offen
	buffer_load_u16 v166, v166, s[64:67], 0 offen
	buffer_load_u16 v167, v167, s[64:67], 0 offen
	buffer_load_u16 v169, v169, s[64:67], 0 offen
	buffer_load_u16 v173, v112, s[64:67], 0 offen
	buffer_load_u16 v174, v140, s[64:67], 0 offen
	buffer_load_u16 v175, v142, s[64:67], 0 offen
	buffer_load_u16 v144, v144, s[64:67], 0 offen
	buffer_load_u16 v155, v155, s[64:67], 0 offen
	buffer_load_u16 v176, v148, s[64:67], 0 offen
	buffer_load_u16 v177, v145, s[64:67], 0 offen
	buffer_load_u16 v168, v168, s[64:67], 0 offen
	buffer_load_u16 v157, v157, s[64:67], 0 offen
	buffer_load_u16 v158, v158, s[64:67], 0 offen
	buffer_load_u16 v160, v160, s[64:67], 0 offen
	buffer_load_u16 v159, v159, s[64:67], 0 offen
	buffer_load_u16 v156, v156, s[64:67], 0 offen
	buffer_load_u16 v164, v164, s[64:67], 0 offen
	buffer_load_u16 v163, v163, s[64:67], 0 offen
	buffer_load_u16 v162, v162, s[64:67], 0 offen
	buffer_load_u16 v161, v161, s[64:67], 0 offen
	buffer_load_u16 v178, v143, s[64:67], 0 offen
	buffer_load_u16 v179, v141, s[64:67], 0 offen
	buffer_load_u16 v180, v113, s[64:67], 0 offen
	buffer_load_u16 v181, v111, s[64:67], 0 offen
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v138, v124
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v113.l, v13.l
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v120, v129
	v_cvt_f32_i32_e32 v15, v182
	v_cvt_f32_i32_e32 v129, v183
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[186:193], v[11:12], v[29:30], v[186:193] neg_lo:[1,1,0]
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v136, v128
	v_cvt_f32_i32_e32 v14, v184
	v_cvt_f32_i32_e32 v128, v185
	v_cvt_f32_i32_e32 v137, v126
	v_cvt_f32_i32_e32 v12, v186
	v_cvt_f32_i32_e32 v121, v127
	v_cvt_f32_i32_e32 v127, v187
	v_cvt_f32_i32_e32 v126, v189
	v_cvt_f32_i32_e32 v122, v125
	v_cvt_f32_i32_e32 v125, v191
	v_cvt_f32_i32_e32 v124, v193
	v_cvt_f32_i32_e32 v123, v123
	v_mul_f32_e32 v117, v107, v117
	v_mul_f32_e32 v121, v107, v121
	v_mul_f32_e32 v120, v107, v120
	v_mul_f32_e32 v119, v107, v119
	v_mul_f32_e32 v118, v107, v118
	v_mul_f32_e32 v116, v107, v116
	v_mul_f32_e32 v14, v107, v14
	v_mul_f32_e32 v16, v107, v16
	v_mul_f32_e32 v115, v107, v115
	v_mul_f32_e32 v15, v107, v15
	v_cvt_f32_i32_e32 v11, v188
	v_mul_f32_e32 v12, v107, v12
	v_cvt_f32_i32_e32 v10, v190
	v_cvt_f32_i32_e32 v9, v192
	v_mul_f32_e32 v114, v107, v114
	v_mul_f32_e32 v11, v107, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v9, v107, v9
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(32)
	v_cndmask_b32_e64 v19, 0xff80ff80, v19, s5
	v_cndmask_b32_e64 v20, 0xff80ff80, v20, s5
	.loc	1 684 35                        ; attention.py:684:35
	v_mov_b16_e32 v111.l, v19.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v111.h, v20.l
	v_mov_b16_e32 v112.l, v19.h
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v112.h, v20.h
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v113.h, v20.l
	v_and_b32_e32 v20, 0xffff0000, v20
	v_mov_b16_e32 v13.h, v19.l
	v_and_b32_e32 v19, 0xffff0000, v19
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_b32 v139, v111
	ds_store_b32 v80, v112
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v113
	v_cmp_neq_f32_e64 s7, 0xff800000, v20
	v_cmp_neq_f32_e64 s6, 0xff800000, v19
	v_cmp_neq_f32_e64 s4, 0xff800000, v13
	.loc	1 684 35                        ; attention.py:684:35
	v_add_nc_u32_e32 v111, 0, v50
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s2, s5, s2
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s6, s5, s6
	s_and_b32 s4, s5, s4
	s_and_b32 s5, s5, s7
	.loc	1 684 35                        ; attention.py:684:35
	s_barrier
	ds_load_b32 v182, v111
	ds_load_b32 v183, v81
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v19, 0, 1, s2
	v_cndmask_b32_e64 v111, 0, 1, s5
	v_cndmask_b32_e64 v20, 0, 1, s4
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_b32 v184, v82
	ds_load_b32 v185, v83
	ds_load_b32 v186, v84
	ds_load_b32 v143, v85
	ds_load_b32 v145, v86
	ds_load_b32 v152, v87
	ds_load_b32 v150, v88
	ds_load_b32 v149, v89
	ds_load_b32 v148, v90
	ds_load_b32 v146, v91
	ds_load_b32 v142, v92
	ds_load_b32 v141, v93
	ds_load_b32 v140, v94
	ds_load_b32 v139, v95
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b16 v13.h, 8, v19.l
	v_mov_b16_e32 v19.l, v111.l
	v_mad_u64_u32 v[111:112], null, s8, s43, v[22:23]
	s_barrier
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b16 v13.h, v20.l, v13.h
	v_cndmask_b32_e64 v20, 0, 1, s6
	v_lshlrev_b16 v19.l, 8, v19.l
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v112, 16, v154
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v113.h, v13.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v113.l, v20.l, v19.l
	v_add_nc_u32_e32 v19, 0, v51
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v20, v111, s75, 1
	.loc	1 685 25                        ; attention.py:685:25
	ds_store_b16 v96, v113
	ds_store_b16_d16_hi v19, v13
	.loc	1 629 13                        ; attention.py:629:13
	v_sub_nc_u32_e32 v19, 0x800, v39
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v13.h, v13.l
	.loc	1 685 25                        ; attention.py:685:25
	ds_load_u16_d16 v113, v98 offset:32
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_lt_i32_e64 s7, s72, v19
	.loc	1 694 30                        ; attention.py:694:30
	v_lshlrev_b32_e32 v19, 1, v111
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v111, v107, v138
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s72, s72, 64
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s7, s0, s7
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s72, s73
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt vmcnt(30)
	v_dual_mul_f32 v187, v111, v112 :: v_dual_lshlrev_b32 v112, 16, v147
	v_mul_f32_e32 v111, v107, v137
	s_waitcnt vmcnt(29)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v137, v111, v112 :: v_dual_lshlrev_b32 v112, 16, v170
	v_mul_f32_e32 v111, v107, v136
	v_mul_f32_e32 v136, v111, v112
	s_waitcnt vmcnt(28)
	v_dual_mul_f32 v111, v107, v134 :: v_dual_lshlrev_b32 v112, 16, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v170, v111, v112
	s_waitcnt vmcnt(27)
	v_dual_mul_f32 v111, v107, v132 :: v_dual_lshlrev_b32 v112, 16, v151
	v_mul_f32_e32 v171, v111, v112
	s_waitcnt vmcnt(26)
	v_dual_mul_f32 v111, v107, v135 :: v_dual_lshlrev_b32 v112, 16, v172
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v135.l, v13.l
	v_mov_b16_e64 v135.h, v184.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v147, v111, v112
	v_mul_f32_e32 v111, v107, v133
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v112, 16, v153
	.loc	1 685 25                        ; attention.py:685:25
	v_add_nc_u32_e32 v153, 0, v52
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v133.l, v13.l
	v_mov_b16_e64 v133.h, v183.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v154, v111, v112
	s_waitcnt vmcnt(24)
	v_dual_mul_f32 v111, v107, v131 :: v_dual_lshlrev_b32 v112, 16, v165
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v165.l, v13.l
	v_mov_b16_e64 v165.h, v186.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v151, v111, v112
	v_mul_f32_e32 v111, v107, v130
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v112, 16, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v138, v111, v112
	s_waitcnt vmcnt(22)
	v_dual_mul_f32 v111, v107, v129 :: v_dual_lshlrev_b32 v112, 16, v167
	v_mul_f32_e32 v130, v111, v112
	s_waitcnt vmcnt(21)
	v_dual_mul_f32 v111, v107, v128 :: v_dual_lshlrev_b32 v112, 16, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v129, v111, v112
	s_waitcnt vmcnt(20)
	v_dual_mul_f32 v111, v107, v127 :: v_dual_lshlrev_b32 v112, 16, v173
	v_mul_f32_e32 v128, v111, v112
	v_mul_f32_e32 v111, v107, v126
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v112, 16, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v127, v111, v112
	s_waitcnt vmcnt(18)
	v_dual_mul_f32 v111, v107, v125 :: v_dual_lshlrev_b32 v112, 16, v175
	v_mul_f32_e32 v126, v111, v112
	v_mul_f32_e32 v111, v107, v124
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v112, 16, v144
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v125, v111, v112 :: v_dual_add_nc_u32 v124, 0, v45
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v111, v107, v123 :: v_dual_lshlrev_b32 v112, 16, v168
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v123.h, v13.l
	.loc	1 685 25                        ; attention.py:685:25
	ds_load_u16_d16 v123, v103 offset:32
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v131, v111, v112
	v_dual_mov_b32 v111, v18 :: v_dual_mul_f32 v18, v107, v122
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v122, 16, v176
	v_dual_mov_b32 v112, v109 :: v_dual_max_f32 v109, v110, v110
	v_lshlrev_b32_e32 v110, 16, v177
	v_mov_b16_e64 v176.l, v13.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v132, v121, v122 :: v_dual_lshlrev_b32 v121, 16, v155
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v155.h, v150.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v18, v18, v110
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v110.l, v13.l
	v_mov_b16_e64 v110.h, v182.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v134, v120, v121
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v120, 16, v156
	v_mov_b16_e64 v156.l, v13.l
	v_mov_b16_e64 v156.h, v185.l
	v_mov_b16_e32 v122.l, v13.l
	v_mov_b16_e64 v122.h, v152.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v144, v119, v120 :: v_dual_lshlrev_b32 v119, 16, v157
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v120.l, v13.l
	v_mov_b16_e64 v120.h, v145.l
	v_mov_b16_e64 v155.l, v13.l
	v_mov_b16_e64 v176.h, v139.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v157, v118, v119
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v119, 16, v159
	v_lshlrev_b32_e32 v118, 16, v158
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v10, v107, v10
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v159.l, v13.l
	v_mov_b16_e64 v159.h, v149.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v119, v116, v119 :: v_dual_lshlrev_b32 v116, 16, v160
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v160.l, v13.l
	v_mov_b16_e64 v160.h, v148.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v159, 0x3fb8aa3b, v159
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v149, 0xffff0000, v149
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v121, v115, v116
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v115, 16, v161
	v_mov_b16_e64 v161.l, v13.l
	v_mov_b16_e64 v161.h, v146.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v160, 0x3fb8aa3b, v160
	.loc	1 685 25                        ; attention.py:685:25
	ds_load_u16_d16 v116, v100
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v167, v114, v115 :: v_dual_lshlrev_b32 v114, 16, v162
	v_mul_f32_e32 v161, 0x3fb8aa3b, v161
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v162.l, v13.l
	v_mov_b16_e64 v162.h, v142.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v118, v117, v118
	v_mul_f32_e32 v166, v16, v114
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v16, 16, v163
	v_mov_b16_e64 v163.l, v13.l
	v_mov_b16_e64 v163.h, v141.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v162, 0x3fb8aa3b, v162
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v159, s77, v166 :: v_dual_mul_f32 v168, v15, v16
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v15, 16, v164
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v163, 0x3fb8aa3b, v163
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v117.l, v13.l
	v_mov_b16_e64 v117.h, v143.l
	v_mov_b16_e64 v164.h, v140.l
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v169, v14, v15 :: v_dual_lshlrev_b32 v14, 16, v181
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v150, 0xffff0000, v150
	.loc	1 685 25                        ; attention.py:685:25
	ds_load_u16_d16 v16, v97
	ds_load_u16_d16 v115, v99 offset:32
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v161, s77, v169 :: v_dual_mul_f32 v172, v12, v14
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v12, 16, v180
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v150, 0x3fb8aa3b, v150
	.loc	1 685 25                        ; attention.py:685:25
	ds_load_u16_d16 v14, v153
	ds_load_u16_d16 v15, v153 offset:32
	.loc	1 649 37                        ; attention.py:649:37
	v_and_b32_e32 v143, 0xffff0000, v143
	v_mov_b16_e64 v164.l, v13.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v173, v11, v12
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v11, 16, v179
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v12, 0xffff0000, v183
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v150, s77, v151
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v143, 0x3fb8aa3b, v143 :: v_dual_fmac_f32 v160, s77, v168
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v174, v10, v11
	v_dual_mul_f32 v11, 0x3fb8aa3b, v133 :: v_dual_lshlrev_b32 v10, 16, v178
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v12, 0x3fb8aa3b, v12
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v133, 0x3fb8aa3b, v156
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v163, s77, v173 :: v_dual_and_b32 v148, 0xffff0000, v148
	v_fmac_f32_e32 v11, s77, v18
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v175, v9, v10
	v_dual_mul_f32 v9, 0x3fb8aa3b, v110 :: v_dual_fmac_f32 v12, s77, v137
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v133, s77, v134 :: v_dual_and_b32 v110, 0xffff0000, v184
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v158, 0x3fb8aa3b, v155 :: v_dual_mul_f32 v155, 0x3fb8aa3b, v148
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v9, s77, v131
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v131, 0x3fb8aa3b, v135
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v10, 0xffff0000, v182
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v135, 0x3fb8aa3b, v165
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v155, s77, v130
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v137, 0x3fb8aa3b, v117
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v131, s77, v132 :: v_dual_mul_f32 v10, 0x3fb8aa3b, v10
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v132, 0x3fb8aa3b, v110
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v135, s77, v144 :: v_dual_and_b32 v110, 0xffff0000, v185
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_mul_f32_e32 v144, 0x3fb8aa3b, v120
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v120, 0xffff0000, v145
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v10, s77, v187
	v_fmac_f32_e32 v132, s77, v136
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v165, 0x3fb8aa3b, v176
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v142, 0xffff0000, v142
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v145, 0x3fb8aa3b, v120
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v114, 0xffff0000, v186
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v134, 0x3fb8aa3b, v110 :: v_dual_fmac_f32 v137, s77, v157
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_fmac_f32_e32 v165, s77, v175
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v145, s77, v147
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_mul_f32_e32 v147, 0x3fb8aa3b, v122
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v122, 0xffff0000, v152
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v157, 0x3fb8aa3b, v142
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v146, 0xffff0000, v146
	.loc	1 685 25                        ; attention.py:685:25
	ds_load_u16_d16 v18, v97 offset:32
	ds_load_u16_d16 v110, v98
	ds_load_u16_d16 v117, v100 offset:32
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v152, 0x3fb8aa3b, v122 :: v_dual_fmac_f32 v157, s77, v128
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_fmac_f32_e32 v134, s77, v170
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v136, 0x3fb8aa3b, v114
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	ds_load_u16_d16 v114, v99
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v152, s77, v154
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v154, 0x3fb8aa3b, v149
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v139, 0xffff0000, v139
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v136, s77, v171 :: v_dual_fmac_f32 v143, s77, v118
	.loc	1 685 25                        ; attention.py:685:25
	ds_load_u16_d16 v118, v101
	ds_load_u16_d16 v120, v102
	ds_load_u16_d16 v122, v103
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v154, s77, v138
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_dual_mul_f32 v156, 0x3fb8aa3b, v146 :: v_dual_mul_f32 v149, 0x3fb8aa3b, v139
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v140, 0xffff0000, v140
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v144, s77, v119 :: v_dual_fmac_f32 v147, s77, v121
	.loc	1 685 25                        ; attention.py:685:25
	ds_load_u16_d16 v119, v101 offset:32
	ds_load_u16_d16 v121, v102 offset:32
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v149, s77, v125
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(10)
	v_and_b16 v125.l, 1, v14.l
	v_lshrrev_b16 v14.l, 8, v14.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v158, s77, v167 :: v_dual_and_b32 v141, 0xffff0000, v141
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v148, 0x3fb8aa3b, v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_cmp_eq_u16_e64 s25, 1, v125.l
	v_and_b16 v14.l, 1, v14.l
	s_waitcnt lgkmcnt(9)
	v_and_b16 v125.l, 1, v15.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v162, s77, v172
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v166, 0xff800000, v9, s25
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s28, 1, v14.l
	v_lshrrev_b16 v14.l, 8, v15.l
	v_cmp_eq_u16_e64 s8, 1, v125.l
	v_and_b16 v125.l, 1, v16.l
	.loc	1 686 26                        ; attention.py:686:26
	s_barrier
	v_cndmask_b32_e64 v167, 0xff800000, v10, s28
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v14.l, 1, v14.l
	v_lshrrev_b16 v15.l, 8, v119.l
	v_cmp_eq_u16_e64 s24, 1, v125.l
	v_and_b16 v125.l, 1, v18.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v146, 0x3fb8aa3b, v141
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s22, 1, v14.l
	v_lshrrev_b16 v14.l, 8, v16.l
	v_lshrrev_b16 v16.l, 8, v120.l
	v_cmp_eq_u16_e64 s9, 1, v125.l
	v_and_b16 v125.l, 1, v110.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v156, s77, v129
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v14.l, 1, v14.l
	v_and_b16 v16.l, 1, v16.l
	v_and_b16 v15.l, 1, v15.l
	v_cmp_eq_u16_e64 s20, 1, v125.l
	v_and_b16 v125.l, 1, v113.l
	v_cmp_eq_u16_e64 s26, 1, v14.l
	v_lshrrev_b16 v14.l, 8, v18.l
	v_lshrrev_b16 v18.l, 8, v121.l
	v_cmp_eq_u16_e64 s36, 1, v16.l
	v_cmp_eq_u16_e64 s10, 1, v125.l
	v_and_b16 v125.l, 1, v114.l
	v_and_b16 v14.l, 1, v14.l
	v_and_b16 v18.l, 1, v18.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v172, 0xff800000, v158, s8
	v_cndmask_b32_e64 v145, 0xff800000, v145, s36
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s21, 1, v125.l
	v_cmp_eq_u16_e64 s23, 1, v14.l
	v_lshrrev_b16 v14.l, 8, v110.l
	v_and_b16 v125.l, 1, v115.l
	v_lshrrev_b16 v110.l, 8, v122.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v173, 0xff800000, v150, s22
	v_cndmask_b32_e64 v168, 0xff800000, v11, s24
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v14.l, 1, v14.l
	v_cmp_eq_u16_e64 s11, 1, v125.l
	v_and_b16 v125.l, 1, v116.l
	v_and_b16 v110.l, 1, v110.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v131, 0xff800000, v131, s20
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s27, 1, v14.l
	v_lshrrev_b16 v14.l, 8, v113.l
	v_cmp_eq_u16_e64 s17, 1, v125.l
	v_and_b16 v125.l, 1, v117.l
	v_lshrrev_b16 v113.l, 8, v123.l
	v_cmp_eq_u16_e64 s34, 1, v110.l
	v_and_b16 v14.l, 1, v14.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v169, 0xff800000, v12, s26
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s12, 1, v125.l
	v_and_b16 v125.l, 1, v118.l
	v_and_b16 v113.l, 1, v113.l
	v_cmp_eq_u16_e64 s29, 1, v14.l
	v_lshrrev_b16 v14.l, 8, v114.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v152, 0xff800000, v152, s34
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s18, 1, v125.l
	v_and_b16 v125.l, 1, v119.l
	v_cmp_eq_u16_e64 s39, 1, v113.l
	v_and_b16 v14.l, 1, v14.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v132, 0xff800000, v132, s27
	v_cndmask_b32_e64 v170, 0xff800000, v137, s18
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s13, 1, v125.l
	v_and_b16 v125.l, 1, v120.l
	v_cmp_eq_u16_e64 s40, 1, v14.l
	v_lshrrev_b16 v14.l, 8, v115.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v181, 0xff800000, v149, s39
	v_cndmask_b32_e64 v153, 0xff800000, v159, s9
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s19, 1, v125.l
	v_and_b16 v125.l, 1, v121.l
	v_and_b16 v14.l, 1, v14.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v134, 0xff800000, v134, s40
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v148, s77, v126
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v144, 0xff800000, v144, s19
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s14, 1, v125.l
	v_cmp_eq_u16_e64 s30, 1, v14.l
	v_lshrrev_b16 v14.l, 8, v116.l
	v_and_b16 v125.l, 1, v122.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v176, 0xff800000, v161, s11
	v_cndmask_b32_e64 v154, 0xff800000, v154, s23
	v_cndmask_b32_e64 v162, 0xff800000, v162, s12
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v14.l, 1, v14.l
	v_cmp_eq_u16_e64 s16, 1, v125.l
	v_and_b16 v125.l, 1, v123.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v175, 0xff800000, v155, s29
	v_cndmask_b32_e64 v178, 0xff800000, v163, s13
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s33, 1, v14.l
	v_lshrrev_b16 v14.l, 8, v117.l
	v_cmp_eq_u16_e64 s15, 1, v125.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v151, 0xff800000, v147, s16
	v_cndmask_b32_e64 v177, 0xff800000, v156, s30
	v_cndmask_b32_e64 v136, 0xff800000, v136, s33
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v14.l, 1, v14.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v180, 0xff800000, v165, s15
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v164, 0x3fb8aa3b, v164
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s37, 1, v15.l
	v_cmp_eq_u16_e64 s38, 1, v18.l
	v_cmp_eq_u16_e64 s31, 1, v14.l
	v_lshrrev_b16 v14.l, 8, v118.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v164, s77, v174
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v174, 0xff800000, v160, s10
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v10, v144, v145, v151
.Ltmp2:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v163, 0xff800000, v157, s31
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v14.l, 1, v14.l
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v11, v152, v172, v173
.Ltmp4:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v133, 0xff800000, v133, s21
	v_cndmask_b32_e64 v135, 0xff800000, v135, s17
	v_cndmask_b32_e64 v164, 0xff800000, v164, s14
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s35, 1, v14.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v165, 0xff800000, v148, s38
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v12, v153, v154, v174
	v_max3_f32 v137, v162, v163, v178
.Ltmp6:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v142.h, v13.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v171, 0xff800000, v143, s35
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v143, v166, v167
.Ltmp8:
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v146, s77, v127
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v16.h, v13.l
	v_mov_b16_e32 v115.h, v13.l
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v9, v136, v170, v171
.Ltmp10:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v127.h, v13.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v179, 0xff800000, v146, s37
	ds_store_b64 v124, v[166:167]
	ds_store_b64 v64, v[168:169]
	ds_store_b64 v65, v[131:132]
	ds_store_b64 v66, v[133:134]
	ds_store_b64 v67, v[135:136]
	ds_store_b64 v68, v[170:171]
	ds_store_b64 v69, v[144:145]
	ds_store_b64 v70, v[151:152]
	ds_store_b64 v71, v[172:173]
	ds_store_b64 v72, v[153:154]
	ds_store_b64 v73, v[174:175]
	ds_store_b64 v74, v[176:177]
	ds_store_b64 v75, v[162:163]
	ds_store_b64 v76, v[178:179]
	ds_store_b64 v77, v[164:165]
	ds_store_b64 v78, v[180:181]
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v124, v175, v176, v177
	v_max3_f32 v9, v9, v10, v11
	v_max3_f32 v10, v169, v131, v132
	v_max3_f32 v11, v133, v134, v135
.Ltmp12:
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v124, v12, v124, v137
	v_dual_max_f32 v12, v179, v164 :: v_dual_max_f32 v137, v180, v181
	v_max3_f32 v10, v143, v168, v10
.Ltmp14:
	.loc	1 686 26                        ; attention.py:686:26
	s_barrier
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v14.h, v13.l
	v_mov_b16_e32 v15.h, v13.l
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v137, v12, v165, v137
	v_max3_f32 v143, v10, v11, v9
.Ltmp16:
	.loc	1 686 26                        ; attention.py:686:26
	ds_load_2addr_b64 v[9:12], v79 offset1:16
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v18.h, v13.l
	v_mov_b16_e32 v116.h, v13.l
	v_mov_b16_e32 v110.h, v13.l
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v124, v143, v124, v137
.Ltmp18:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v114.h, v13.l
	v_mov_b16_e32 v117.h, v13.l
	v_mov_b16_e32 v118.h, v13.l
	v_mov_b16_e32 v119.h, v13.l
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v137, v124, s76, 0xfedcba98 op_sel:[1,0]
.Ltmp20:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v120.h, v13.l
	v_mov_b16_e32 v121.h, v13.l
	v_mov_b16_e32 v122.h, v13.l
	v_mov_b16_e32 v125.h, v13.l
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v124, v17, v124, v137
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v126.h, v13.l
	v_mov_b16_e64 v128.h, v13.l
	v_mov_b16_e64 v129.h, v13.l
	v_mov_b16_e64 v138.h, v13.l
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v184, v131, v124
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v131, v17, v124
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v143, v11, v11
	v_max_f32_e32 v137, v9, v9
.Ltmp22:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v157, v136, v124
	v_sub_f32_e32 v167, v167, v124
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v131, v131
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v185, v134, v124 :: v_dual_max_f32 v182, v137, v143
	v_sub_f32_e32 v134, v152, v124
	v_sub_f32_e32 v169, v169, v124
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v139.h, v13.l
	v_mov_b16_e64 v140.h, v13.l
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v17, v182, v10, v12
.Ltmp24:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v168, v168, v124
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v141.h, v13.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v131, 0, v131, s41
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v130, v112, v112
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v166, v166, v124
	v_sub_f32_e32 v159, v171, v124
	v_dual_sub_f32 v161, v145, v124 :: v_dual_mul_f32 v4, v4, v131
	v_dual_sub_f32 v143, v154, v124 :: v_dual_mul_f32 v8, v8, v131
	v_dual_sub_f32 v137, v153, v124 :: v_dual_mul_f32 v6, v6, v131
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v1, v1, v131
	v_mul_f32_e32 v2, v2, v131
	v_mul_f32_e32 v3, v3, v131
	v_mul_f32_e32 v5, v5, v131
	v_mul_f32_e32 v7, v7, v131
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v131, v17
.Ltmp26:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v137, v137
	v_exp_f32_e32 v161, v161
	v_exp_f32_e32 v143, v143
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v183, v132, v124
.Ltmp27:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v131, v131 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp28:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v186, v133, v124
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v132.h, v13.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v157, v157
	v_exp_f32_e32 v159, v159
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v131, v131, v131
.Ltmp30:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v137, 0, v137, s9
	v_cndmask_b32_e64 v161, 0, v161, s36
	v_cndmask_b32_e64 v143, 0, v143, s23
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v131, v17, v131
.Ltmp32:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v17, v167
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v127.l, v137.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v152, v164, v124
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v118.l, v161.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v149, v163, v124
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v163.h, v13.l
	v_mov_b16_e64 v126.l, v143.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v153, v165, v124
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v165.h, v13.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v167, v183
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v17, 0, v17, s28
	v_cndmask_b32_e64 v157, 0, v157, s33
	v_cndmask_b32_e64 v159, 0, v159, s35
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v118, 1, v118
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v149, v149
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v123.l, v17.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v156, v135, v124
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s28, v17, v17
	v_mov_b16_e64 v110.l, v157.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v167, 0, v167, s27
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v123, 1, v123
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v156, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v145, v175, v124 :: v_dual_and_b32 v110, 1, v110
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v15.l, v167.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v123, v17, v123, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v17, v166
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v166.h, v13.l
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v160, v144, v124 :: v_dual_and_b32 v15, 1, v15
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v145, v145
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v156, 0, v156, s17
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v114.l, v159.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v160, v160
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v147, v177, v124
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v110, v157, v110, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v17, 0, v17, s25
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v113.l, v156.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v136, v173, v124
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v114, 1, v114
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v145, 0, v145, s29
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v16.l, v17.h
	v_cmp_o_f32_e64 s25, v17, v17
	v_and_b32_e32 v113, 1, v113
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v136, v136
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v160, 0, v160, s19
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v16, 1, v16
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v147, v147
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v128.l, v145.h
	v_cmp_o_f32_e64 s9, v156, v156
	v_mov_b16_e64 v119.l, v160.h
	v_add3_u32 v164, v17, v16, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v17, 0x80000000, v20, s7
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v20, v168
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v16, 0x80000000, v19, s7
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v19, v169
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v136, 0, v136, s22
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v146, v176, v124 :: v_dual_and_b32 v119, 1, v119
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v113, v156, v113, 0x7fff
	v_and_b32_e32 v128, 1, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v122.l, v136.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v146, v146
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v20, 0, v20, s24
	v_cndmask_b32_e64 v147, 0, v147, s30
	v_cndmask_b32_e64 v19, 0, v19, s26
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s26, v167, v167
	v_add3_u32 v167, v167, v15, 0x7fff
	v_mov_b16_e32 v14.l, v20.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v133, v151, v124
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s7, v19, v19
	v_cmp_o_f32_e64 s24, v20, v20
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v151, v179, v124 :: v_dual_and_b32 v122, 1, v122
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v14, 1, v14
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v133, v133
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v146, 0, v146, s11
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v151, v151
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v126, 1, v126
	v_add3_u32 v169, v20, v14, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v20, v185
	v_exp_f32_e32 v153, v153
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v127, 1, v127
	v_cndmask_b16 v110.l, 0x7fff, v113.h, s9
	v_add3_u32 v128, v145, v128, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v133, 0, v133, s16
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v152, v152
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v151, 0, v151, s37
	v_cndmask_b32_e64 v149, 0, v149, s31
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s19, v137, v137
	v_mov_b16_e64 v121.l, v133.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v148, v162, v124
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v162.h, v13.l
	v_mov_b16_e32 v13.l, v19.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v158, v170, v124
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v20, 0, v20, s40
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v170, v186
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v142.l, v151.h
	v_and_b32_e32 v13, 1, v13
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v158, v158
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v115.l, v20.h
	v_and_b32_e32 v121, 1, v121
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v148, v148
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v168, v19, v13, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v19, v184
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v115, 1, v115
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[13:16], v16, s[68:71], 0 offen
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v170, 0, v170, s21
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s21, v20, v20
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v158, 0, v158, s18
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v115, v20, v115, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v134, v134
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v116.l, v170.h
	v_and_b32_e32 v142, 1, v142
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v19, 0, v19, s20
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v117.l, v158.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v144, v174, v124
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v138.l, v147.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v155, v181, v124
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v18.l, v19.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v135, v172, v124
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s20, v19, v19
	v_and_b32_e32 v117, 1, v117
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v144, v144
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v18, 1, v18
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v135, v135
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v134, 0, v134, s34
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v139.l, v146.h
	v_cmp_o_f32_e64 s34, v151, v151
	v_add3_u32 v171, v19, v18, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[17:20], v17, s[68:71], 0 offen
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v120.l, v134.h
	v_add3_u32 v127, v137, v127, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v144, 0, v144, s10
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v137, v151, v142, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v135, 0, v135, s8
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s8, v157, v157
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v157, v131
.Ltmp34:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v129.l, v144.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v154, v180, v124
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v125.l, v135.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v150, v178, v124
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v157, v157 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v129, 1, v129
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v154, v154
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v125, 1, v125
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v150, v150
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v113, v157, v157 :: v_dual_and_b32 v116, 1, v116
.Ltmp38:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v110.h, 0x7fff, v110.h, s8
	v_and_b32_e32 v120, 1, v120
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v148, 0, v148, s12
	v_cndmask_b32_e64 v153, 0, v153, s38
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v151, v131, v113
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp40:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v154, 0, v154, s15
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v140.l, v149.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v150, 0, v150, s13
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v138, 1, v138
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v155, v155
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v166.l, v154.h
	v_and_b32_e32 v139, 1, v139
	v_mov_b16_e64 v132.l, v150.h
	v_cmp_o_f32_e64 s35, v150, v150
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v152, 0, v152, s14
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s15, v133, v133
	v_cmp_o_f32_e64 s16, v136, v136
	v_and_b32_e32 v132, 1, v132
	v_cmp_o_f32_e64 s17, v135, v135
	v_mov_b16_e64 v141.l, v148.h
	v_mov_b16_e64 v162.l, v153.h
	v_and_b32_e32 v140, 1, v140
	v_add3_u32 v132, v150, v132, 0x7fff
	v_and_b32_e32 v166, 1, v166
	v_add3_u32 v121, v133, v121, 0x7fff
	v_add3_u32 v122, v136, v122, 0x7fff
	v_add3_u32 v125, v135, v125, 0x7fff
	v_cndmask_b16 v128.l, 0x7fff, v132.h, s35
	v_permlanex16_b32 v132, v110, s76, 0xfedcba98 op_sel:[1,0]
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v155, 0, v155, s39
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s29, v147, v147
	v_mov_b16_e64 v163.l, v152.h
	v_cmp_o_f32_e64 s39, v154, v154
	v_perm_b32 v131, v132, v110, v104
	v_perm_b32 v132, v132, v110, v106
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v110, v151
.Ltmp42:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v162, 1, v162
	v_add3_u32 v133, v147, v138, 0x7fff
	v_add3_u32 v136, v149, v140, 0x7fff
	v_add3_u32 v140, v154, v166, 0x7fff
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v110, v110 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v141, 1, v141
	v_cndmask_b16 v147.l, 0x7fff, v121.h, s15
	v_cndmask_b16 v121.h, 0x7fff, v122.h, s16
	v_cndmask_b16 v121.l, 0x7fff, v125.h, s17
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v110, v110, v110
.Ltmp46:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s27, v170, v170
	v_add3_u32 v116, v170, v116, 0x7fff
	v_cmp_o_f32_e64 s14, v134, v134
	v_cmp_o_f32_e64 s23, v144, v144
	v_cmp_o_f32_e64 s36, v153, v153
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v110, v151, v110 :: v_dual_and_b32 v163, 1, v163
.Ltmp48:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v120, v134, v120, 0x7fff
	v_add3_u32 v129, v144, v129, 0x7fff
	v_add3_u32 v134, v146, v139, 0x7fff
	v_add3_u32 v139, v153, v162, 0x7fff
	v_cndmask_b16 v170.l, 0x7fff, v140.h, s39
	v_permlanex16_b32 v140, v121, s76, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v125.l, 0x7fff, v129.h, s23
	v_mov_b16_e64 v165.l, v155.h
	v_cndmask_b16 v129.h, 0x7fff, v139.h, s36
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v139, v140, v121, v104
	v_perm_b32 v140, v140, v121, v106
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v121, v110
.Ltmp50:
	.loc	1 694 30                        ; attention.py:694:30
	s_barrier
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s18, v143, v143
	v_add3_u32 v126, v143, v126, 0x7fff
	v_cndmask_b16 v142.h, 0x7fff, v168.h, s7
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v121, v121 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v142.l, 0x7fff, v169.h, s24
	v_cndmask_b16 v122.l, 0x7fff, v127.h, s19
	v_cndmask_b16 v122.h, 0x7fff, v126.h, s18
	v_cmp_o_f32_e64 s33, v148, v148
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v121, v121, v121
.Ltmp54:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s38, v155, v155
	v_add3_u32 v135, v148, v141, 0x7fff
	v_cndmask_b16 v144.l, 0x7fff, v116.h, s27
	v_permlanex16_b32 v116, v142, s76, 0xfedcba98 op_sel:[1,0]
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v121, v110, v121
.Ltmp56:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v148, v122, s76, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s10, v159, v159
	v_cmp_o_f32_e64 s11, v158, v158
	v_cmp_o_f32_e64 s12, v161, v161
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v110, v109, v121
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v165, 1, v165
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v109, v130, v121
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s13, v160, v160
	v_add3_u32 v114, v159, v114, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v10, v10, v110
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v141, v155, v165, 0x7fff
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v121, v112, v109
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v117, v158, v117, 0x7fff
	v_add3_u32 v118, v161, v118, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v10, v10
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v119, v160, v119, 0x7fff
	v_add3_u32 v138, v152, v163, 0x7fff
	v_cndmask_b16 v144.h, 0x7fff, v115.h, s21
	v_cndmask_b16 v170.h, 0x7fff, v141.h, s38
	v_perm_b32 v115, v116, v142, v104
	v_perm_b32 v116, v116, v142, v106
	v_perm_b32 v141, v148, v122, v104
	v_perm_b32 v142, v148, v122, v106
	v_cndmask_b16 v123.h, 0x7fff, v123.h, s28
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v10, 0, v10, s2
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v112
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v123.l, 0x7fff, v164.h, s25
	v_cndmask_b16 v143.h, 0x7fff, v167.h, s26
	v_cndmask_b16 v143.l, 0x7fff, v171.h, s20
	v_cmp_o_f32_e64 s22, v145, v145
	v_cmp_o_f32_e64 s30, v146, v146
	v_cndmask_b16 v145.h, 0x7fff, v114.h, s10
	v_cndmask_b16 v146.h, 0x7fff, v118.h, s12
	v_cndmask_b16 v147.h, 0x7fff, v120.h, s14
	v_permlanex16_b32 v114, v123, s76, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v118, v143, s76, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v120, v144, s76, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v145.l, 0x7fff, v117.h, s11
	v_cndmask_b16 v146.l, 0x7fff, v119.h, s13
	v_perm_b32 v113, v114, v123, v104
	v_perm_b32 v114, v114, v123, v106
	v_perm_b32 v117, v118, v143, v104
	v_perm_b32 v118, v118, v143, v106
	v_perm_b32 v119, v120, v144, v104
	v_perm_b32 v120, v120, v144, v106
	v_cmp_o_f32_e64 s31, v149, v149
	v_cmp_o_f32_e64 s37, v152, v152
	v_cndmask_b16 v125.h, 0x7fff, v128.h, s22
	v_cndmask_b16 v126.h, 0x7fff, v133.h, s29
	v_cndmask_b16 v126.l, 0x7fff, v134.h, s30
	v_cndmask_b16 v127.h, 0x7fff, v136.h, s31
	v_cndmask_b16 v129.l, 0x7fff, v138.h, s37
	v_permlanex16_b32 v134, v145, s76, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v136, v146, s76, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v138, v147, s76, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v127.l, 0x7fff, v135.h, s33
	v_cndmask_b16 v128.h, 0x7fff, v137.h, s34
	v_permlanex16_b32 v149, v125, s76, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v150, v126, s76, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v133, v134, v145, v104
	v_perm_b32 v134, v134, v145, v106
	v_perm_b32 v135, v136, v146, v104
	v_perm_b32 v136, v136, v146, v106
	v_perm_b32 v137, v138, v147, v104
	v_perm_b32 v138, v138, v147, v106
	v_permlanex16_b32 v152, v127, s76, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v153, v128, s76, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v171, v129, s76, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v172, v170, s76, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v143, v149, v125, v104
	v_perm_b32 v144, v149, v125, v106
	v_perm_b32 v145, v150, v126, v104
	v_perm_b32 v146, v150, v126, v106
	v_perm_b32 v147, v152, v127, v104
	v_perm_b32 v148, v152, v127, v106
	v_perm_b32 v149, v153, v128, v104
	v_perm_b32 v150, v153, v128, v106
	v_perm_b32 v151, v171, v129, v104
	v_perm_b32 v152, v171, v129, v106
	v_perm_b32 v153, v172, v170, v104
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(1)
	ds_store_b128 v47, v[13:16]
	s_waitcnt vmcnt(0)
	ds_store_b128 v47, v[17:20] offset:4096
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v17, v121
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v19, 0, v17, s2
	v_mov_b32_e32 v17, v124
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v11, v11, v110
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v11, 0, v11, s6
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v12, v12, v110
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v12, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v12, 0, v12, s5
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v9, v9, v110 :: v_dual_add_f32 v10, v10, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v9, v9
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v9, 0, v9, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v9, v9, v11
	v_add_f32_e32 v9, v9, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v10, v9
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v9, v9, v10
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v9, v9, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v10, v9
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v122, v9, v10
.Ltmp64:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v9, v46
	ds_load_u16_d16 v10, v46 offset:256
	ds_load_u16_d16 v11, v46 offset:512
	ds_load_u16_d16 v12, v46 offset:768
	ds_load_u16_d16 v13, v46 offset:1024
	ds_load_u16_d16 v14, v46 offset:1280
	ds_load_u16_d16 v15, v46 offset:1536
	ds_load_u16_d16 v16, v46 offset:1792
	ds_load_u16_d16 v154, v46 offset:2048
	ds_load_u16_d16 v155, v46 offset:2304
	ds_load_u16_d16 v156, v46 offset:2560
	ds_load_u16_d16 v157, v46 offset:2816
	ds_load_u16_d16 v158, v46 offset:3072
	ds_load_u16_d16 v159, v46 offset:3328
	ds_load_u16_d16 v160, v46 offset:3584
	ds_load_u16_d16 v161, v46 offset:3840
	ds_load_u16_d16 v162, v46 offset:4096
	ds_load_u16_d16 v163, v46 offset:4352
	ds_load_u16_d16 v164, v46 offset:4608
	ds_load_u16_d16 v165, v46 offset:4864
	ds_load_u16_d16 v166, v46 offset:5120
	ds_load_u16_d16 v167, v46 offset:5376
	ds_load_u16_d16 v168, v46 offset:5632
	ds_load_u16_d16 v169, v46 offset:5888
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v9, v46 offset:128
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v10, v46 offset:384
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v11, v46 offset:640
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v12, v46 offset:896
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v13, v46 offset:1152
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v14, v46 offset:1408
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v15, v46 offset:1664
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v16, v46 offset:1920
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v18, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v18, v122, v18
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp67:
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v18, v111, v19
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[113:120], v[1:8]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v9, v46 offset:6144
	ds_load_u16_d16 v10, v46 offset:6400
	ds_load_u16_d16 v11, v46 offset:6656
	ds_load_u16_d16 v12, v46 offset:6912
	ds_load_u16_d16 v13, v46 offset:7168
	ds_load_u16_d16 v14, v46 offset:7424
	ds_load_u16_d16 v15, v46 offset:7680
	ds_load_u16_d16 v16, v46 offset:7936
	ds_load_u16_d16_hi v154, v46 offset:2176
	ds_load_u16_d16_hi v155, v46 offset:2432
	ds_load_u16_d16_hi v156, v46 offset:2688
	ds_load_u16_d16_hi v157, v46 offset:2944
	ds_load_u16_d16_hi v158, v46 offset:3200
	ds_load_u16_d16_hi v159, v46 offset:3456
	ds_load_u16_d16_hi v160, v46 offset:3712
	ds_load_u16_d16_hi v161, v46 offset:3968
	ds_load_u16_d16_hi v162, v46 offset:4224
	ds_load_u16_d16_hi v163, v46 offset:4480
	ds_load_u16_d16_hi v164, v46 offset:4736
	ds_load_u16_d16_hi v165, v46 offset:4992
	ds_load_u16_d16_hi v166, v46 offset:5248
	ds_load_u16_d16_hi v167, v46 offset:5504
	ds_load_u16_d16_hi v168, v46 offset:5760
	ds_load_u16_d16_hi v169, v46 offset:6016
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v9, v46 offset:6272
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v10, v46 offset:6528
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v11, v46 offset:6784
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v12, v46 offset:7040
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v13, v46 offset:7296
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v14, v46 offset:7552
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v15, v46 offset:7808
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v16, v46 offset:8064
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[154:161], v[131:138], v[1:8]
	.loc	1 700 30 is_stmt 0              ; attention.py:700:30
	v_perm_b32 v154, v172, v170, v106
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(8)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[162:169], v[139:146], v[1:8]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[147:154], v[1:8]
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v109, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v18, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 825 26 is_stmt 1              ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v38
	s_mov_b32 s1, 0x76543210
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_and_b32_e32 v11, 28, v39
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp69:
	.loc	1 825 17                        ; attention.py:825:17
	v_dual_cndmask_b32 v9, 0xff800000, v109 :: v_dual_cndmask_b32 v12, 0, v18
	.loc	1 830 26                        ; attention.py:830:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v36
	.loc	1 835 13                        ; attention.py:835:13
	v_lshrrev_b32_e32 v21, 5, v0
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s55, s55, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_permlanex16_b32 v10, v9, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_permlanex16_b32 v13, v12, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_add_nc_u32_e32 v11, 0, v11
.Ltmp73:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp75:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v12, v12, v13 :: v_dual_cndmask_b32 v3, 0, v3
.Ltmp77:
	.loc	1 833 13                        ; attention.py:833:13
	v_or_b32_e32 v21, v21, v35
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v9, v10
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_lshl_add_u32 v10, v37, 2, 0
.Ltmp80:
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s0, s43, 2
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s54, s55
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s2, exec_lo
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	ds_store_b32 v11, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v10
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v11, v12
.Ltmp83:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v12, 0, v4, vcc_lo
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v4, v1 :: v_dual_cndmask_b32 v13, 0, v5
	v_mov_b32_e32 v6, v3
.Ltmp85:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v10
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v5, v2 :: v_dual_mov_b32 v16, v12
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	1 822 30 is_stmt 1              ; attention.py:822:30
	s_mul_i32 s0, s1, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp89:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v15, 0, v7, vcc_lo
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v4
	v_dual_add_f32 v3, v3, v6 :: v_dual_max_f32 v4, v9, v9
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v7, v9 :: v_dual_add_f32 v2, v2, v5
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v11, v3 :: v_dual_cndmask_b32 v8, 0, v8
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v12, v12, v16
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v9, v2 :: v_dual_max_f32 v6, v7, v7
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v16, v12
.Ltmp96:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v4, v4, v6 :: v_dual_mov_b32 v5, v10
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp98:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v6, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v8, v8, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v12, v12, v16
.Ltmp101:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v5, v10, v5 :: v_dual_add_f32 v10, v3, v11
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v7, v1 :: v_dual_max_f32 v6, v6, v6
	v_mov_b32_e32 v20, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v18, v10
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v2, v2, v9
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v4, v6
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp108:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v3, v5
.Ltmp109:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v1, v1, v7 :: v_dual_mov_b32 v16, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v4, v10, v18
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp111:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v11, v1 :: v_dual_mov_b32 v18, v14
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v6, v4 :: v_dual_add_f32 v7, v5, v3
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_dual_mov_b32 v10, v7 :: v_dual_add_f32 v1, v1, v11
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v17, v2
.Ltmp114:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v14, v14, v18 :: v_dual_mov_b32 v19, v15
.Ltmp115:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v11, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp117:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v18, v14
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp118:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v3, v2, v17
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v17, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v15, v19
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v5, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v19, v15 :: v_dual_add_f32 v14, v14, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v13, v17
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v17, v13
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v15, v19
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v19, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v13, v17
	v_dual_add_f32 v17, v8, v20 :: v_dual_add_f32 v14, v14, v19
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v20, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v18, v13
	v_mov_b32_e32 v22, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v8, v12, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v15, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v13, v13, v18 :: v_dual_mov_b32 v12, v8
	v_dual_add_f32 v17, v17, v22 :: v_dual_mov_b32 v18, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v16, v13
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp133:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp134:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v11, v11, v11
	v_dual_max_f32 v9, v9, v9 :: v_dual_add_f32 v10, v7, v10
.Ltmp135:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
	v_mov_b32_e32 v7, 0
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp136:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v9, v11
.Ltmp137:
	.loc	1 833 13                        ; attention.py:833:13
	s_add_u32 s4, s52, s4
	s_addc_u32 s5, s53, s5
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v7, v[9:10], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp138:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v6, v4, v6 :: v_dual_add_f32 v5, v3, v5
.Ltmp139:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v3, 0xc0, v34
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v7, v8, v12 :: v_dual_add_f32 v4, v1, v2
.Ltmp141:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v8, 0xe0, v32
	v_and_b32_e32 v1, 28, v32
	v_and_b32_e32 v2, 32, v33
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v20, v17, v20 :: v_dual_add_nc_u32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_add_f32 v19, v15, v19 :: v_dual_add_nc_u32 v8, 0, v8
	v_dual_add_f32 v18, v14, v18 :: v_dual_add_f32 v17, v13, v16
.Ltmp143:
	.loc	1 835 13                        ; attention.py:835:13
	v_add3_u32 v1, v3, v2, v1
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v0, 63, v0
	.loc	1 835 13                        ; attention.py:835:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[4:7]
	ds_store_b128 v8, v[17:20] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	.loc	1 836 17                        ; attention.py:836:17
	v_add_nc_u32_e32 v2, s0, v0
	.loc	1 838 22                        ; attention.py:838:22
	v_cmp_gt_i32_e32 vcc_lo, s43, v0
	.loc	1 835 13                        ; attention.py:835:13
	v_cmp_eq_u32_e64 s0, 0, v31
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s55, 0x31027000
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s54, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[52:55], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp144:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
		.amdhsa_next_free_vgpr 194
		.amdhsa_next_free_sgpr 78
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_vgpr, 194
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.numbered_sgpr, 78
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11280
; TotalNumSgprs: 80
; NumVgprs: 194
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 80
; NumVGPRsForWavesPerEU: 194
; Occupancy: 7
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
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
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
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     80
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     194
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
