	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s19, s[0:1], 0x60
	s_load_b64 s[14:15], s[0:1], 0x58
.Ltmp0:
	.loc	1 559 27 prologue_end           ; attention.py:559:27
	s_abs_i32 s7, s2
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v59, 3, v0
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x40
	s_load_b64 s[20:21], s[0:1], 0x0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v53, 1, v0
	v_lshlrev_b32_e32 v6, 4, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v57, 31, v0
	.loc	1 572 22                        ; attention.py:572:22
	v_and_b32_e32 v60, 15, v0
	.loc	1 771 51                        ; attention.py:771:51
	v_and_b32_e32 v54, 0x70, v0
	.loc	1 599 26                        ; attention.py:599:26
	v_and_b32_e32 v7, 0x70, v53
	v_lshlrev_b32_e32 v55, 2, v0
	v_lshrrev_b32_e32 v58, 5, v0
	v_lshlrev_b32_e32 v56, 5, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v6, v6, v7
	.loc	1 609 32                        ; attention.py:609:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s19
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s8, s2, s19
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 559 27                        ; attention.py:559:27
	s_ashr_i32 s12, s8, 31
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v61, 0, v6
	.loc	1 609 32                        ; attention.py:609:32
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s4, v1
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v1, 7, v0
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 598 79                        ; attention.py:598:79
	v_lshlrev_b32_e32 v2, 3, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_u32_f32 s4, s4
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[3:4], null, s14, v59, v[2:3]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_i32 s6, s6, s4
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e32 vcc_lo, s14, v2
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_hi_u32 s6, s4, s6
	s_add_i32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 559 27                        ; attention.py:559:27
	s_mul_hi_u32 s4, s7, s6
	s_mul_i32 s9, s4, s5
	s_add_i32 s8, s4, 1
	s_sub_i32 s7, s7, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s9, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s8, s4
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s4, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s8, s4
	.loc	1 599 26                        ; attention.py:599:26
	s_and_b32 s21, s21, 0xffff
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s28, s4, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s28, s12
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s4, s7, 4
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s7, s7, s19
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, s4, v59
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s4, s4, s3
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s18, s2, s7
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s4, s4, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v2, s4, v3, 1
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s13, 1, v4
	.loc	1 601 22 is_stmt 0              ; attention.py:601:22
	s_and_b32 s4, vcc_lo, s13
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s19, 0x7f
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 609 32 is_stmt 1              ; attention.py:609:32
	s_xor_b32 s8, s4, s19
	s_abs_i32 s4, s4
	.loc	1 599 26                        ; attention.py:599:26
	buffer_load_b128 v[2:5], v2, s[20:23], 0 offen
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_hi_u32 s6, s4, s6
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 610 18                        ; attention.py:610:18
	s_mul_i32 s4, s18, s2
	s_lshl_b32 s33, s4, 4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 611 33                        ; attention.py:611:33
	s_lshl4_add_u32 s2, s2, s33
	.loc	1 611 18 is_stmt 0              ; attention.py:611:18
	s_min_i32 s34, s2, 0x800
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	s_cmp_ge_i32 s33, s34
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v61, v[2:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_clause 0x2
	s_load_b128 s[8:11], s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	s_load_b128 s[24:27], s[0:1], 0x28
	v_dual_mov_b32 v44, 0x5410 :: v_dual_lshlrev_b32 v9, 4, v1
	.loc	1 566 23 is_stmt 1              ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	v_and_b32_e32 v43, 16, v0
	s_lshr_b32 s1, s0, 29
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 599 26                        ; attention.py:599:26
	v_lshl_or_b32 v12, v60, 7, v9
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s1, s3, s1
	v_lshrrev_b32_e32 v41, 2, v0
	v_bfe_i32 v46, v0, 4, 1
	.loc	1 771 51                        ; attention.py:771:51
	v_lshrrev_b32_e32 v11, 4, v54
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v4, 0x70, v12
	v_xor_b32_e32 v13, 16, v12
	v_or_b32_e32 v41, v41, v56
	v_and_b32_e32 v46, 0x84, v46
	.loc	1 707 13                        ; attention.py:707:13
	v_sub_nc_u32_e32 v64, 0x400, v11
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v65, 0, v4
	v_and_b32_e32 v16, 0x60, v0
	.loc	1 742 27                        ; attention.py:742:27
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s40, s8, 0x3fb8aa3b
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s8, s1, -8
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s1, s1, 3
	v_and_or_b32 v76, 0x63, v41, v46
	.loc	1 753 27                        ; attention.py:753:27
	s_mul_i32 s9, s9, s1
	v_cmp_eq_u32_e64 s1, 0, v43
	v_lshl_or_b32 v77, s3, 10, v11
	.loc	1 707 13                        ; attention.py:707:13
	v_lshl_or_b32 v49, s28, 4, v59
	v_bfe_i32 v51, v0, 2, 1
	.loc	1 734 32                        ; attention.py:734:32
	s_lshl_b32 s2, s3, 11
	v_cndmask_b32_e64 v43, 0x1054, v44, s1
	v_dual_mov_b32 v44, 0x7632 :: v_dual_add_nc_u32 v71, 0, v13
	v_lshrrev_b32_e32 v13, 3, v16
	v_and_b32_e32 v52, 0x160, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v43, v43, 8, v43
	v_cndmask_b32_e64 v44, 0x3276, v44, s1
	.loc	1 707 13                        ; attention.py:707:13
	s_lshl_b32 s1, s12, 4
	v_lshlrev_b32_e32 v16, 4, v16
	v_add3_u32 v79, s33, s2, v59
	v_and_b32_e32 v41, 0x540054, v43
	v_lshl_or_b32 v43, v44, 8, v44
	v_and_b32_e32 v51, 0x90, v51
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v14, 32, v12
	v_lshrrev_b32_e32 v81, 2, v54
	v_lshl_or_b32 v11, v41, 4, v41
	v_and_b32_e32 v41, 0x760076, v43
	v_lshlrev_b32_e32 v43, 7, v0
	.loc	1 707 13                        ; attention.py:707:13
	v_mul_lo_u32 v82, s14, v79
	v_or3_b32 v79, v52, v16, v51
	v_and_b32_e32 v78, 0x5040504, v11
	v_lshl_or_b32 v11, v41, 4, v41
	v_and_b32_e32 v41, 0x700, v43
	v_subrev_nc_u32_e32 v43, s1, v49
	v_bfe_i32 v49, v0, 0, 1
	v_dual_mov_b32 v103, 0xff800000 :: v_dual_add_nc_u32 v70, 0, v14
	v_and_b32_e32 v14, 28, v0
	v_and_b32_e32 v80, 0x7060706, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v49, 0x90, v49
	v_mul_lo_u32 v43, s11, v43
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s8, s3, s8
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v15, 48, v12
	v_xor_b32_e32 v2, 0x50, v12
	v_xor_b32_e32 v11, v49, v81
	v_xor_b32_e32 v49, 16, v79
	v_xor_b32_e32 v73, v55, v13
	.loc	1 570 31                        ; attention.py:570:31
	v_lshlrev_b32_e32 v10, 1, v1
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v1, 64, v12
	v_xor_b32_e32 v3, 0x60, v12
	v_add_nc_u32_e32 v94, 0, v49
	v_mov_b32_e32 v49, 0
	v_lshl_or_b32 v74, v57, 5, v14
	.loc	1 754 27                        ; attention.py:754:27
	s_mul_i32 s8, s10, s8
	v_dual_mov_b32 v100, 0xff800000 :: v_dual_add_nc_u32 v67, 0, v2
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s1, s33, s8
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v72, 0, v12
	v_xor_b32_e32 v12, 0x210, v73
	v_xor_b32_e32 v13, 4, v74
	.loc	1 707 13                        ; attention.py:707:13
	v_add3_u32 v16, s1, s9, v43
	v_dual_mov_b32 v108, 0xff800000 :: v_dual_add_nc_u32 v43, 0, v41
	v_mov_b32_e32 v41, 0
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v69, 0, v15
	v_add_nc_u32_e32 v66, 0, v3
	v_add_nc_u32_e32 v68, 0, v1
	.loc	1 707 13                        ; attention.py:707:13
	v_sub_nc_u32_e32 v63, 0x800, v10
	v_add_lshl_u32 v81, v16, v10, 2
	v_add_nc_u32_e32 v83, 0, v12
	v_add_nc_u32_e32 v84, 0, v13
	v_dual_mov_b32 v10, v41 :: v_dual_add_nc_u32 v93, v43, v11
	.loc	1 599 26                        ; attention.py:599:26
	ds_load_b128 v[29:32], v69
	ds_load_b128 v[25:28], v70
	v_mov_b32_e32 v11, v41
	ds_load_b128 v[5:8], v65
	ds_load_b128 v[1:4], v66
	v_mov_b32_e32 v12, v41
	ds_load_b128 v[37:40], v71
	ds_load_b128 v[33:36], v72
	v_mov_b32_e32 v13, v41
	ds_load_b128 v[21:24], v67
	ds_load_b128 v[17:20], v68
	v_lshl_or_b32 v75, v57, 2, v58
	.loc	1 572 22                        ; attention.py:572:22
	v_lshlrev_b32_e32 v50, 2, v60
	v_xor_b32_e32 v14, 8, v74
	v_xor_b32_e32 v15, 12, v74
	v_xor_b32_e32 v42, 16, v74
	v_xor_b32_e32 v45, 20, v74
	v_xor_b32_e32 v47, 24, v74
	v_xor_b32_e32 v46, 28, v74
	v_xor_b32_e32 v48, 0x84, v75
	v_xor_b32_e32 v44, 4, v76
	.loc	1 707 13                        ; attention.py:707:13
	v_sub_nc_u32_e32 v62, 0x800, v59
	v_lshl_add_u32 v82, v82, 1, v9
	v_add_nc_u32_e32 v85, 0, v14
	v_add_nc_u32_e32 v86, 0, v15
	v_add_nc_u32_e32 v87, 0, v42
	v_add_nc_u32_e32 v88, 0, v45
	v_add_nc_u32_e32 v89, 0, v47
	v_add_nc_u32_e32 v90, 0, v46
	v_add_nc_u32_e32 v91, 0, v48
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v92, 0, v44
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e64 s0, s15, v50
	v_mov_b32_e32 v14, v41
	v_mov_b32_e32 v15, v41
	v_mov_b32_e32 v16, v41
	v_mov_b16_e32 v96.h, 0
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s27, s27, 0xffff
	.loc	1 794 21                        ; attention.py:794:21
	s_lshl_b32 s35, s3, 7
	s_and_b32 s37, s7, 0xffff
	s_and_b32 s25, s25, 0xffff
	.loc	1 707 13                        ; attention.py:707:13
	s_lshl_b32 s41, s14, 5
	s_mov_b32 s42, 0x76543210
	s_mov_b32 s20, s4
	s_mov_b32 s21, s5
	s_mov_b32 s28, s26
	s_mov_b32 s29, s27
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	s_mov_b32 s36, s6
	s_mov_b32 s38, s22
	s_mov_b32 s39, s23
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 738 65                        ; attention.py:738:65
	v_cmp_lt_i32_e64 s1, s33, v62
	.loc	1 741 30                        ; attention.py:741:30
	v_dual_mov_b32 v48, v41 :: v_dual_max_f32 v103, v103, v103
	v_dual_mov_b32 v47, v41 :: v_dual_mov_b32 v102, v108
	.loc	1 738 30                        ; attention.py:738:30
	s_and_b32 s1, vcc_lo, s1
	.loc	1 771 36                        ; attention.py:771:36
	s_ashr_i32 s2, s33, 1
	.loc	1 736 32                        ; attention.py:736:32
	v_cndmask_b32_e64 v42, 0x80000000, v82, s1
	.loc	1 738 65                        ; attention.py:738:65
	v_cmp_lt_i32_e64 s1, s33, v63
	v_dual_mov_b32 v95, v49 :: v_dual_add_nc_u32 v108, s2, v77
	.loc	1 798 53                        ; attention.py:798:53
	s_ashr_i32 s5, s33, 4
	.loc	1 736 32                        ; attention.py:736:32
	buffer_load_b128 v[42:45], v42, s[20:23], 0 offen
	.loc	1 743 25                        ; attention.py:743:25
	s_and_b32 s4, s13, s1
	.loc	1 736 32                        ; attention.py:736:32
	s_waitcnt lgkmcnt(0)
	.loc	1 761 36                        ; attention.py:761:36
	v_cndmask_b32_e64 v46, 0x80000000, v81, s4
	.loc	1 736 32                        ; attention.py:736:32
	s_barrier
	.loc	1 777 27                        ; attention.py:777:27
	v_cmp_lt_i32_e64 s1, s2, v64
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s5, s5, s35
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s12, 0xff800000, v100
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s2, s5, s15
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v98.h, v96.h
	.loc	1 785 30                        ; attention.py:785:30
	v_mov_b16_e32 v101.h, v96.h
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v99.l, v96.h
	.loc	1 707 13                        ; attention.py:707:13
	v_add_nc_u32_e32 v81, 64, v81
	s_add_i32 s33, s33, 16
	.loc	1 763 25                        ; attention.py:763:25
	.loc	1 762 35                        ; attention.py:762:35
	v_add_nc_u32_e32 v104, 0, v73
	v_add_nc_u32_e32 v105, 0, v74
	.loc	1 763 25                        ; attention.py:763:25
	v_add_nc_u32_e32 v107, 0, v75
	v_add_nc_u32_e32 v106, 0, v76
	.loc	1 814 30                        ; attention.py:814:30
	v_add_nc_u32_e32 v97, 0, v79
	.loc	1 707 13                        ; attention.py:707:13
	v_add_nc_u32_e32 v82, s41, v82
	.loc	1 736 32                        ; attention.py:736:32
	s_waitcnt vmcnt(0)
	ds_store_b128 v61, v[42:45]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 761 36                        ; attention.py:761:36
	buffer_load_b64 v[51:52], v46, s[28:31], 0 offen
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[109:112], v72
	ds_load_b128 v[113:116], v71
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v42, v41
	v_mov_b32_e32 v43, v41
	v_mov_b32_e32 v44, v41
	v_mov_b32_e32 v45, v41
	v_mov_b32_e32 v46, v41
	v_mov_b32_e32 v49, v48
	v_mov_b32_e32 v48, v47
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v47, v46
	v_mov_b32_e32 v46, v45
	v_mov_b32_e32 v45, v44
	v_mov_b32_e32 v44, v43
	v_mov_b32_e32 v43, v42
	v_mov_b32_e32 v42, v41
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[109:116], v[33:40], v[42:49]
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[109:112], v70
	ds_load_b128 v[113:116], v69
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[109:116], v[25:32], v[42:49]
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[109:112], v68
	ds_load_b128 v[113:116], v67
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[109:116], v[17:24], v[42:49]
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[109:112], v66
	ds_load_b128 v[113:116], v65
	.loc	1 762 35                        ; attention.py:762:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 741 30                        ; attention.py:741:30
	v_wmma_f32_16x16x16_bf16 v[42:49], v[109:116], v[1:8], v[42:49]
	.loc	1 761 36                        ; attention.py:761:36
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v51, 0xff800000, v51, s4
	v_cndmask_b32_e64 v52, 0xff800000, v52, s4
	.loc	1 762 35                        ; attention.py:762:35
	ds_store_b32 v104, v51
	ds_store_b32 v83, v52
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v109, v105
	ds_load_b32 v110, v84
	ds_load_b32 v111, v85
	ds_load_b32 v112, v86
	ds_load_b32 v113, v87
	ds_load_b32 v114, v88
	ds_load_b32 v115, v89
	ds_load_b32 v116, v90
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v52
	.loc	1 763 25 is_stmt 0              ; attention.py:763:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_b32 s14, s4, s5
	.loc	1 762 35 is_stmt 1              ; attention.py:762:35
	v_dual_mul_f32 v109, 0x3fb8aa3b, v109 :: v_dual_mul_f32 v110, 0x3fb8aa3b, v110
	v_dual_mul_f32 v111, 0x3fb8aa3b, v111 :: v_dual_mul_f32 v112, 0x3fb8aa3b, v112
	v_dual_mul_f32 v113, 0x3fb8aa3b, v113 :: v_dual_mul_f32 v114, 0x3fb8aa3b, v114
	v_mul_f32_e32 v115, 0x3fb8aa3b, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 762 25 is_stmt 0              ; attention.py:762:25
	v_dual_fmac_f32 v111, s40, v44 :: v_dual_fmac_f32 v112, s40, v45
	v_dual_fmac_f32 v113, s40, v46 :: v_dual_fmac_f32 v114, s40, v47
	.loc	1 774 30 is_stmt 1              ; attention.py:774:30
	v_mad_u64_u32 v[45:46], null, v108, s15, v[50:51]
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v116, 0x3fb8aa3b, v116 :: v_dual_fmac_f32 v109, s40, v42
	.loc	1 762 25 is_stmt 0              ; attention.py:762:25
	v_fmac_f32_e32 v110, s40, v43
	.loc	1 797 41 is_stmt 1              ; attention.py:797:41
	v_add_lshl_u32 v42, s2, v50, 1
	.loc	1 777 26                        ; attention.py:777:26
	s_and_b32 s2, s0, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 762 25                        ; attention.py:762:25
	v_dual_fmac_f32 v115, s40, v48 :: v_dual_fmac_f32 v116, s40, v49
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v49, 0x80000000, v45, s2
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v51
	.loc	1 763 25 is_stmt 0              ; attention.py:763:25
	v_cndmask_b32_e64 v45, 0, 1, s14
	.loc	1 797 41 is_stmt 1              ; attention.py:797:41
	v_cndmask_b32_e64 v47, 0x80000000, v42, s0
	v_mov_b16_e32 v44.l, v96.h
	.loc	1 785 30                        ; attention.py:785:30
	v_mov_b16_e32 v48.h, v96.h
	.loc	1 763 25                        ; attention.py:763:25
	s_and_b32 s2, s4, s2
	v_mov_b16_e32 v43.l, v45.l
	v_cndmask_b32_e64 v42, 0, 1, s2
	ds_store_b8 v107, v42
	ds_store_b8 v91, v43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v42, v92
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v42, v106 offset:8
	ds_load_u8_d16 v43, v92 offset:8
	ds_load_u8_d16_hi v44, v106 offset:16
	ds_load_u8_d16 v45, v92 offset:16
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v45, v92 offset:24
	ds_load_u8_d16 v46, v106 offset:24
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v46, v106
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v43.h, v96.h
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s33, s34
	.loc	1 763 25                        ; attention.py:763:25
	v_and_b16 v42.l, 1, v42.l
	v_and_b16 v42.h, 1, v42.h
	v_and_b16 v43.l, 1, v43.l
	v_and_b16 v44.h, 1, v44.h
	v_and_b16 v45.l, 1, v45.l
	v_and_b16 v45.h, 1, v45.h
	v_and_b16 v46.l, 1, v46.l
	v_and_b16 v46.h, 1, v46.h
	v_cmp_eq_u16_e64 s4, 1, v42.l
	v_cmp_eq_u16_e64 s9, 1, v42.h
	v_cmp_eq_u16_e64 s5, 1, v43.l
	v_cmp_eq_u16_e64 s10, 1, v44.h
	v_cmp_eq_u16_e64 s8, 1, v46.h
	v_cmp_eq_u16_e64 s6, 1, v45.l
	v_cmp_eq_u16_e64 s11, 1, v46.l
	v_cmp_eq_u16_e64 s7, 1, v45.h
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v52, 0xff800000, v110, s4
	v_cndmask_b32_e64 v51, 0xff800000, v109, s8
	v_cndmask_b32_e64 v106, 0xff800000, v111, s9
	v_cndmask_b32_e64 v107, 0xff800000, v112, s5
	v_cndmask_b32_e64 v108, 0xff800000, v113, s10
	v_cndmask_b32_e64 v109, 0xff800000, v114, s6
	v_cndmask_b32_e64 v110, 0xff800000, v115, s11
	v_cndmask_b32_e64 v111, 0xff800000, v116, s7
	ds_store_b32 v105, v51
	ds_store_b32 v84, v52
	ds_store_b32 v85, v106
	ds_store_b32 v86, v107
	ds_store_b32 v87, v108
	ds_store_b32 v88, v109
	ds_store_b32 v89, v110
	ds_store_b32 v90, v111
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 775 32                        ; attention.py:775:32
	buffer_load_b32 v105, v49, s[36:39], 0 offen
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_b64 v[46:47], v47, s[24:27], 0 offen
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v42, v51, v52, v106
	v_max3_f32 v114, v107, v108, v109
	v_max_f32_e32 v115, v110, v111
.Ltmp2:
	.loc	1 764 26                        ; attention.py:764:26
	ds_load_b32 v104, v104
	ds_load_b32 v116, v83
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v45.h, v96.h
	v_mov_b16_e32 v49.h, v96.h
	v_mov_b16_e32 v112.h, v96.h
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v42, v42, v114, v115
.Ltmp4:
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v113.h, v96.h
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v114, v42, s42, 0xfedcba98 op_sel:[1,0]
.Ltmp6:
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v42, v100, v42, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v114, v100, v42
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v115, v116, v116 :: v_dual_sub_f32 v106, v106, v42
	v_dual_max_f32 v100, v104, v104 :: v_dual_sub_f32 v51, v51, v42
.Ltmp8:
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v114, v114
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v52, v52, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v106, v106
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v100, v100, v115
.Ltmp10:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v51, v51
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v115, v102, v102
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v109, v109, v42
	v_sub_f32_e32 v111, v111, v42
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v52, v52
	.loc	1 767 25 is_stmt 1              ; attention.py:767:25
	v_cndmask_b32_e64 v114, 0, v114, s12
	v_cmp_neq_f32_e64 s12, 0xff800000, v102
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v106, 0, v106, s9
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v109, v109
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v51, 0, v51, s8
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_mul_f32_e32 v9, v9, v114
	v_mul_f32_e32 v12, v12, v114
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v49.l, v106.h
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v110, v110, v42
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v45.l, v51.h
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v108, v108, v42
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v13, v13, v114
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v49, 1, v49
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v110, v110
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v45, 1, v45
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v108, v108
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v14, v14, v114
	v_mul_f32_e32 v15, v15, v114
	v_mul_f32_e32 v16, v16, v114
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s8, v51, v51
	v_add3_u32 v51, v51, v45, 0x7fff
	v_cmp_o_f32_e64 s9, v106, v106
	v_add3_u32 v106, v106, v49, 0x7fff
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v110, 0, v110, s11
	v_cndmask_b32_e64 v117, 0, v109, s6
	v_cndmask_b32_e64 v108, 0, v108, s10
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v111, v111
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_cndmask_b16 v51.l, 0x7fff, v51.h, s8
	v_mov_b16_e32 v113.l, v110.h
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v10, v10, v114
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v112.l, v108.h
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v11, v11, v114 :: v_dual_mov_b32 v114, v100
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s10, v108, v108
	v_and_b32_e32 v113, 1, v113
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v112, 1, v112
	v_cmp_o_f32_e64 s11, v110, v110
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v114, v114 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp12:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v52, 0, v52, s4
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v110, v110, v113, 0x7fff
	v_add3_u32 v112, v108, v112, 0x7fff
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v118, 0, v111, s7
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v114, v114, v114
.Ltmp14:
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s6, v52, v52
	v_cndmask_b16 v124.l, 0x7fff, v110.h, s11
	v_cndmask_b16 v122.l, 0x7fff, v112.h, s10
	v_cndmask_b16 v106.l, 0x7fff, v106.h, s9
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v100, v100, v114
.Ltmp16:
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s4, v117, v117
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v114, v100
	v_mov_b32_dpp v114, v114 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v45, v114, v114
	v_max_f32_e32 v45, v100, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v49, v45
	v_mov_b32_dpp v49, v49 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v49, v49, v49
	v_max_f32_e32 v45, v45, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v103, v103, v45
	v_dual_max_f32 v108, v115, v45 :: v_dual_sub_f32 v45, v104, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v49, v116, v103 :: v_dual_sub_f32 v100, v102, v108
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 767 61 is_stmt 1              ; attention.py:767:61
	v_exp_f32_e32 v100, v100
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v45, 0, v45, s2
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v125, 0, v100, s12
	.loc	1 775 32                        ; attention.py:775:32
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v104, 8, v105
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v99.h, v46.l
	v_and_b32_e32 v46, 0xffff0000, v46
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v49, v49
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v44.h, v47.l
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v104.h, v96.h
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v43.l, v105.l, 15
	.loc	1 784 29                        ; attention.py:784:29
	v_and_b32_e32 v102, 15, v105
	v_bfe_u32 v115, v105, 8, 4
	v_bfe_u32 v113, v105, 16, 4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s2, 7, v43.l
	.loc	1 786 54 is_stmt 0              ; attention.py:786:54
	v_or_b32_e32 v114, -16, v102
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 768 33 is_stmt 1              ; attention.py:768:33
	v_cndmask_b32_e64 v49, 0, v49, s14
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v43.l, v104.l, 15
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v116, -16, v113
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v45, v45, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v49, v45
	v_mov_b32_dpp v49, v49 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v45, v45, v49
.Ltmp25:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v49, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v49, v49 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v45, v45, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v49, v45
	v_mov_b32_dpp v49, v49 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v49, v45, v49
.Ltmp29:
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v45.l, 4, v105.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v45.h, v105.h, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v96.l, v45.l, 15
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s14, 7, v45.h
	.loc	1 786 29 is_stmt 0              ; attention.py:786:29
	v_cndmask_b32_e64 v45, v102, v114, s2
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v102, -16, v115
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s2, 7, v43.l
	.loc	1 775 32 is_stmt 1              ; attention.py:775:32
	v_lshrrev_b32_e32 v114, 24, v105
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v43.l, 4, v104.l
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v113, v113, v116, s14
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e64 v116, 0, v96, s1
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v102, v115, v102, s2
	.loc	1 784 29                        ; attention.py:784:29
	v_bfe_u32 v115, v105, 24, 4
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v101.l, v43.l, 15
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v43.l, v114.l, 15
	.loc	1 785 30                        ; attention.py:785:30
	v_bfe_u32 v105, v105, 20, 4
	.loc	1 785 32 is_stmt 0              ; attention.py:785:32
	v_lshrrev_b16 v48.l, 4, v114.l
	.loc	1 786 54 is_stmt 1              ; attention.py:786:54
	v_or_b32_e32 v114, -16, v115
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e64 v101, 0, v101, s1
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s2, 7, v43.l
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e64 v105, 0, v105, s1
	v_cndmask_b32_e64 v48, 0, v48, s1
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v100, v102
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v114, v115, v114, s2
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b32_e32 v115, -16, v116
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_lt_u32_e64 s2, 7, v116
	v_cmp_lt_u32_e64 s1, 7, v48
	.loc	1 814 31 is_stmt 1              ; attention.py:814:31
	v_cvt_f32_i32_e32 v102, v113
	v_cvt_f32_i32_e32 v109, v114
	v_mul_f32_e32 v45, v99, v45
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b32_e64 v115, v116, v115, s2
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b32_e32 v116, -16, v105
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_lt_u32_e64 s2, 7, v105
	.loc	1 814 31 is_stmt 1              ; attention.py:814:31
	v_mul_f32_e32 v102, v44, v102
	v_mul_f32_e32 v100, v46, v100
	v_cvt_f32_i32_e32 v110, v115
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_mov_b16_e32 v96.l, v45.h
	.loc	1 787 30 is_stmt 1              ; attention.py:787:30
	v_cndmask_b32_e64 v105, v105, v116, s2
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b32_e32 v116, -16, v48
	.loc	1 814 30 is_stmt 1              ; attention.py:814:30
	v_mov_b16_e32 v104.l, v102.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_dual_mul_f32 v99, v99, v110 :: v_dual_and_b32 v110, 1, v96
	v_cvt_f32_i32_e32 v105, v105
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 787 30 is_stmt 1              ; attention.py:787:30
	v_cndmask_b32_e64 v48, v48, v116, s1
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b32_e32 v116, -16, v101
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_lt_u32_e64 s1, 7, v101
	.loc	1 814 30 is_stmt 1              ; attention.py:814:30
	v_mov_b16_e32 v96.l, v100.h
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v44, v44, v105
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v98.l, v99.h
	.loc	1 787 30 is_stmt 1              ; attention.py:787:30
	v_cndmask_b32_e64 v101, v101, v116, s1
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v116.h, v96.h
	v_cmp_o_f32_e64 s8, v102, v102
	v_cmp_o_f32_e64 s7, v100, v100
	v_and_b32_e32 v98, 1, v98
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_cvt_f32_i32_e32 v101, v101
	.loc	1 797 41 is_stmt 1              ; attention.py:797:41
	v_and_b32_e32 v47, 0xffff0000, v47
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s11, v44, v44
	v_cmp_o_f32_e64 s2, v45, v45
	v_add3_u32 v98, v99, v98, 0x7fff
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v46, v46, v101
	v_mul_f32_e32 v109, v47, v109
	v_mul_f32_e32 v47, v47, v48
	.loc	1 814 30                        ; attention.py:814:30
	v_and_b32_e32 v48, 1, v104
	v_and_b32_e32 v101, 1, v96
	v_mov_b16_e32 v96.l, v44.h
	v_mov_b16_e32 v43.l, v46.h
	v_mov_b16_e32 v116.l, v47.h
	.loc	1 768 62 is_stmt 1              ; attention.py:768:62
	v_sub_f32_e32 v107, v107, v42
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v48, v102, v48, 0x7fff
	v_add3_u32 v100, v100, v101, 0x7fff
	v_and_b32_e32 v101, 1, v96
	v_and_b32_e32 v102, 1, v116
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v107, v107
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v96.l, v109.h
	v_and_b32_e32 v43, 1, v43
	v_cndmask_b16 v98.l, 0x7fff, v100.h, s7
	v_add3_u32 v44, v44, v101, 0x7fff
	v_mov_b32_e32 v100, v42
	v_cmp_o_f32_e64 s10, v99, v99
	v_and_b32_e32 v99, 1, v96
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v96.l, v52.h
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v45, v45, v110, 0x7fff
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v107, 0, v107, s5
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s14, v46, v46
	v_cndmask_b16 v48.l, 0x7fff, v48.h, s8
	v_add3_u32 v43, v46, v43, 0x7fff
	v_cndmask_b16 v48.h, 0x7fff, v44.h, s11
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v44, 1, v96
	v_mov_b16_e32 v96.l, v107.h
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s2
	v_cndmask_b16 v45.h, 0x7fff, v98.h, s10
	v_cndmask_b16 v98.h, 0x7fff, v43.h, s14
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v43, v52, v44, 0x7fff
	v_and_b32_e32 v44, 1, v96
	v_mov_b16_e32 v96.l, v117.h
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s9, v109, v109
	v_cmp_o_f32_e64 s12, v47, v47
	v_add3_u32 v47, v47, v102, 0x7fff
	v_add3_u32 v46, v109, v99, 0x7fff
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v51.h, 0x7fff, v43.h, s6
	v_add3_u32 v43, v107, v44, 0x7fff
	v_and_b32_e32 v44, 1, v96
	v_mov_b16_e32 v96.l, v118.h
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v47.h, 0x7fff, v47.h, s12
	v_cndmask_b16 v47.l, 0x7fff, v46.h, s9
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s5, v107, v107
	.loc	1 814 30                        ; attention.py:814:30
	ds_store_2addr_b32 v93, v45, v98 offset1:8
	ds_store_2addr_b32 v93, v48, v47 offset0:16 offset1:24
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v45, 1, v96
	v_cmp_o_f32_e64 s1, v118, v118
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[109:112], v97
	ds_load_b128 v[113:116], v94
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v44, v117, v44, 0x7fff
	v_cndmask_b16 v106.h, 0x7fff, v43.h, s5
	v_add3_u32 v43, v118, v45, 0x7fff
	v_permlanex16_b32 v46, v51, s42, 0xfedcba98 op_sel:[1,0]
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v49, v95, v125
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v122.h, 0x7fff, v44.h, s4
	v_permlanex16_b32 v44, v106, s42, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v124.h, 0x7fff, v43.h, s1
	v_perm_b32 v117, v46, v51, v78
	v_perm_b32 v118, v46, v51, v80
	v_permlanex16_b32 v43, v122, s42, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v119, v44, v106, v78
	v_permlanex16_b32 v45, v124, s42, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v120, v44, v106, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_perm_b32 v121, v43, v122, v78
	v_perm_b32 v122, v43, v122, v80
	v_perm_b32 v123, v45, v124, v78
	v_perm_b32 v124, v45, v124, v80
	.loc	1 816 23 is_stmt 0              ; attention.py:816:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[109:116], v[117:124], v[9:16]
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v16, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v108, 0xff800000 :: v_dual_mov_b32 v15, v16
	v_mov_b32_e32 v14, v16
	v_mov_b32_e32 v13, v16
	v_mov_b32_e32 v12, v16
	v_mov_b32_e32 v11, v16
	v_mov_b32_e32 v10, v16
	v_mov_b32_e32 v9, v16
	v_mov_b32_e32 v49, v16
.LBB0_4:                                ; %._crit_edge
	.loc	1 825 26 is_stmt 1              ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v59
	s_mov_b32 s1, 0x76543210
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp31:
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s19, s19, s3
	.loc	1 825 17                        ; attention.py:825:17
	v_cndmask_b32_e32 v1, 0xff800000, v108, vcc_lo
	.loc	1 828 36                        ; attention.py:828:36
	v_dual_cndmask_b32 v3, 0, v49 :: v_dual_and_b32 v4, 12, v55
	.loc	1 830 26                        ; attention.py:830:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v60
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s0, s15, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_permlanex16_b32 v2, v1, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_permlanex16_b32 v5, v3, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp34:
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s18, s19
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s2, exec_lo
	.loc	1 822 30                        ; attention.py:822:30
	s_mul_i32 s0, s1, s0
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v1, v1, v1
.Ltmp36:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v7, 0, v9 :: v_dual_add_nc_u32 v4, 0, v4
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v3, v3, v5
.Ltmp38:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v9, 0, v11, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v1, v1, v2 :: v_dual_and_b32 v2, 12, v59
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v5, v7 :: v_dual_cndmask_b32 v8, 0, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp41:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp42:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v6, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v17, v9 :: v_dual_add_nc_u32 v2, 0, v2
	v_mov_b32_e32 v11, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp44:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v16, 0, v16, vcc_lo
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v3, v3, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_add_f32 v5, v7, v5
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v20, v16 :: v_dual_max_f32 v1, v1, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v4
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v2, v3
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v3, v8, v11
.Ltmp55:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v11, 0, v12 :: v_dual_cndmask_b32 v12, 0, v13
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v2, v4
.Ltmp58:
	.loc	1 830 17 is_stmt 1              ; attention.py:830:17
	v_dual_cndmask_b32 v13, 0, v14 :: v_dual_add_f32 v4, v9, v17
	v_cndmask_b32_e32 v14, 0, v15, vcc_lo
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v16, v16, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v8, v4 :: v_dual_mov_b32 v19, v14
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v20, v16
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v7, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v5, v5, v6
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v6, v1
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_add_f32 v4, v4, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v15, v11
	v_mov_b32_e32 v17, v4
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v14, v14, v19
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_add_f32 v3, v3, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v16, v16, v20
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v8, v1, v6
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v10, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v18, v13 :: v_dual_mov_b32 v21, v16
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v7, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp77:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v13, v18
.Ltmp78:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v7, v2, v7 :: v_dual_add_f32 v2, v3, v10
.Ltmp79:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v10, v8 :: v_dual_mov_b32 v9, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v18, v13
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v11, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v1, v5, v9
	v_add_f32_e32 v5, v4, v17
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v17, v12 :: v_dual_add_f32 v18, v13, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v15, v11
	v_dual_mov_b32 v3, v1 :: v_dual_mov_b32 v4, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp85:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v9, v7
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v6, v5
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v12, v12, v17
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v11, v15
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v15, v11
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v11, v15
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v19, v14
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v19, v14, v19
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v17, v12 :: v_dual_mov_b32 v14, v18
	v_mov_b32_e32 v20, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v14, v18, v14 :: v_dual_add_f32 v17, v12, v17
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v12, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v15, v19, v20 :: v_dual_mov_b32 v18, v14
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v13, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v17, v13
	v_add_f32_e32 v17, v16, v21
.Ltmp100:
	.loc	1 833 13                        ; attention.py:833:13
	v_or_b32_e32 v21, v58, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v16, v13
	v_mov_b32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp102:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp103:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp104:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp106:
	.loc	1 833 13                        ; attention.py:833:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp107:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp108:
	.loc	1 833 13                        ; attention.py:833:13
	s_add_u32 s4, s16, s4
	s_addc_u32 s5, s17, s5
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp109:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v8, v14, v18 :: v_dual_add_f32 v7, v13, v16
	v_dual_add_f32 v14, v11, v12 :: v_dual_add_f32 v13, v5, v6
	v_dual_add_f32 v12, v2, v4 :: v_dual_and_b32 v5, 0xc0, v55
	v_dual_add_f32 v11, v1, v3 :: v_dual_and_b32 v2, 32, v56
.Ltmp110:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v1, 28, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v5
	v_lshl_add_u32 v4, v54, 1, 0
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp112:
	.loc	1 572 22                        ; attention.py:572:22
	v_and_b32_e32 v5, 63, v0
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
	v_cmp_gt_i32_e32 vcc_lo, s15, v5
	.loc	1 835 13                        ; attention.py:835:13
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[16:19], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp113:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 126
		.amdhsa_next_free_sgpr 43
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
		.amdhsa_inst_pref_size 44
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_vgpr, 126
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.numbered_sgpr, 43
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5508
; TotalNumSgprs: 45
; NumVgprs: 126
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 45
; NumVGPRsForWavesPerEU: 126
; Occupancy: 10
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
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	1                               ; Abbrev [1] 0xb:0xc5 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x9f DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	765                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x5b:0x23 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp22                         ; DW_AT_low_pc
	.long	.Ltmp29-.Ltmp22                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	769                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x70:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x7e:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	824                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x8b:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x98:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	828                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xa5:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xb3:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	829                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xc0:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
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
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
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
        .size:           1
        .value_kind:     by_value
      - .offset:         117
        .size:           1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     45
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     126
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
