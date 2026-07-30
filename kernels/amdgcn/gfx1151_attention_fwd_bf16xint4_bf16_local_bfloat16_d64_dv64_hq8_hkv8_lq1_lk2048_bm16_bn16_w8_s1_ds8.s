	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b32 s33, s[0:1], 0x60
	s_load_b32 s26, s[0:1], 0x80
	s_load_b32 s24, s[0:1], 0x58
	s_load_b64 s[8:9], s[0:1], 0x0
.Ltmp0:
	.loc	1 559 27 prologue_end           ; attention.py:559:27
	s_abs_i32 s6, s2
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v55, 15, v0
	v_lshrrev_b32_e32 v56, 4, v0
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 599 26                        ; attention.py:599:26
	v_and_b32_e32 v51, 0x70, v0
	.loc	1 598 79                        ; attention.py:598:79
	v_lshlrev_b32_e32 v2, 2, v55
	.loc	1 771 51                        ; attention.py:771:51
	v_and_b32_e32 v33, 0xe0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_lshrrev_b32_e32 v59, 3, v33
	.loc	1 609 32                        ; attention.py:609:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s12, s33
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[3:4], null, s24, v56, v[2:3]
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_f32_u32 s4, s12
	s_sub_i32 s5, 0, s12
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v4, 3, v0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 609 32                        ; attention.py:609:32
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v4, v4, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_nc_u32_e32 v58, 0, v4
	.loc	1 609 32                        ; attention.py:609:32
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s5, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s4, s5
	s_add_i32 s13, s4, s5
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s5, s2, s33
	s_mul_hi_u32 s4, s6, s13
	s_ashr_i32 s25, s5, 31
	s_mul_i32 s7, s4, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s5, s6, s7
	s_add_i32 s6, s4, 1
	s_sub_i32 s7, s5, s12
	s_cmp_ge_u32 s5, s12
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s5, s7, s5
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s5, s12
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e64 s5, s24, v2
	.loc	1 559 27                        ; attention.py:559:27
	s_cselect_b32 s4, s6, s4
	.loc	1 599 26                        ; attention.py:599:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s28, s4, s25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s14, s28, s25
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s15, s14, 4
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s14, s14, s33
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s15, v56
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s4, s15, s3
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s19, s2, s14
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s6, s4, s24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s4, 1, v1
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v2, s6, v3, 1
	s_load_b64 s[6:7], s[0:1], 0x78
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, s4
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	buffer_load_b64 v[2:3], v2, s[8:11], 0 offen
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s9, s33, 0x7f
	s_mov_b32 s8, 0
	.loc	1 609 32 is_stmt 1              ; attention.py:609:32
	s_xor_b32 s10, s9, s33
	s_abs_i32 s9, s9
	s_ashr_i32 s10, s10, 31
	s_mul_hi_u32 s11, s9, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s13, s11, s12
	s_add_i32 s16, s11, 1
	s_sub_i32 s9, s9, s13
	s_sub_i32 s2, s9, s12
	s_cmp_ge_u32 s9, s12
	s_cselect_b32 s11, s16, s11
	s_cselect_b32 s2, s2, s9
	s_add_i32 s9, s11, 1
	s_cmp_ge_u32 s2, s12
	s_cselect_b32 s2, s9, s11
	.loc	1 616 17                        ; attention.py:616:17
	s_waitcnt lgkmcnt(0)
	s_add_i32 s11, s7, s26
	.loc	1 609 32                        ; attention.py:609:32
	s_xor_b32 s2, s2, s10
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s11, s11, s15
	.loc	1 609 32                        ; attention.py:609:32
	s_sub_i32 s2, s2, s10
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s11, s11, 16
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s9, s26, s6
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s10, s11, 0x800
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s9, s9, s15
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s10, s10, 15
	.loc	1 610 18                        ; attention.py:610:18
	s_mul_i32 s11, s19, s2
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s12, s10, 31
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s9, s9, 0
	.loc	1 619 34                        ; attention.py:619:34
	s_lshr_b32 s12, s12, 28
	.loc	1 610 18                        ; attention.py:610:18
	s_lshl_b32 s11, s11, 4
	.loc	1 619 34                        ; attention.py:619:34
	s_add_i32 s10, s10, s12
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s9, s9, 0x7ffffff0
	.loc	1 611 33                        ; attention.py:611:33
	s_lshl4_add_u32 s2, s2, s11
	.loc	1 619 33                        ; attention.py:619:33
	s_and_b32 s10, s10, -16
	.loc	1 618 18                        ; attention.py:618:18
	s_max_i32 s34, s11, s9
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s35, s2, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s34, s35
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v58, v[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_lshrrev_b32_e32 v2, 3, v33
	s_branch .LBB0_3
.Ltmp2:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr2
.LBB0_3:                                ; %Flow76
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x40
	s_load_b32 s18, s[0:1], 0x5c
	v_lshlrev_b32_e32 v52, 1, v0
	v_and_b32_e32 v57, 7, v0
	v_lshlrev_b32_e32 v53, 5, v0
	v_lshlrev_b32_e32 v54, 2, v0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v36, 0x1a0, v53
	v_dual_mov_b32 v94, 0xff800000 :: v_dual_and_b32 v37, 14, v0
	v_dual_mov_b32 v95, 0xff800000 :: v_dual_and_b32 v38, 64, v54
	v_and_b32_e32 v39, 0x1bc, v52
	v_lshrrev_b32_e32 v40, 4, v33
	s_clause 0x2
	s_load_b128 s[12:15], s[0:1], 0x64
	s_load_b128 s[8:11], s[0:1], 0x8
	s_load_b128 s[20:23], s[0:1], 0x28
	v_or3_b32 v70, v37, v36, v38
	v_dual_mov_b32 v96, 0xff800000 :: v_dual_and_b32 v41, 1, v0
	v_xor_b32_e32 v36, v39, v40
	v_bfe_i32 v40, v0, 3, 1
	v_lshrrev_b32_e32 v45, 1, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_add_u32 v39, v41, 6, 0
	v_lshlrev_b32_e32 v41, 5, v41
	v_mul_u32_u24_e32 v37, 0x42, v37
	v_and_b32_e32 v40, 0x84, v40
	.loc	1 566 23 is_stmt 1              ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v1, s26, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s0, s0, 29
	v_add3_u32 v72, v37, v41, v38
	v_and_or_b32 v40, v45, 3, v40
	v_and_b32_e32 v37, 16, v0
	s_add_i32 s0, s3, s0
	.loc	1 742 27                        ; attention.py:742:27
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s40, s12, 0x3fb8aa3b
	v_and_b32_e32 v45, 0x60, v0
	v_or3_b32 v71, v40, v41, v38
	v_dual_mov_b32 v38, 0x5410 :: v_dual_add_nc_u32 v61, s7, v1
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s7, s0, -8
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s0, 3
	v_lshlrev_b32_e32 v41, 6, v0
	.loc	1 753 27                        ; attention.py:753:27
	s_mul_i32 s12, s13, s0
	v_cmp_eq_u32_e64 s0, 0, v37
	v_and_b32_e32 v50, 0x160, v53
	v_lshlrev_b32_e32 v45, 4, v45
	v_and_b32_e32 v41, 0x740, v41
	v_bfe_i32 v49, v0, 1, 1
	v_cndmask_b32_e64 v37, 0x1054, v38, s0
	v_mov_b32_e32 v38, 0x7632
	v_and_b32_e32 v46, 60, v52
	v_add_nc_u32_e32 v92, 0, v41
	.loc	1 707 13                        ; attention.py:707:13
	v_lshl_or_b32 v41, s28, 4, v56
	v_lshl_or_b32 v37, v37, 8, v37
	v_cndmask_b32_e64 v38, 0x3276, v38, s0
	s_lshl_b32 s0, s25, 4
	.loc	1 748 47                        ; attention.py:748:47
	v_subrev_nc_u32_e32 v60, s6, v1
	.loc	1 707 13                        ; attention.py:707:13
	v_subrev_nc_u32_e32 v41, s0, v41
	v_and_b32_e32 v37, 0x540054, v37
	v_lshl_or_b32 v38, v38, 8, v38
	.loc	1 794 21                        ; attention.py:794:21
	s_lshl_b32 s6, s3, 7
	v_and_b32_e32 v49, 0x90, v49
	.loc	1 707 13                        ; attention.py:707:13
	s_lshr_b32 s13, s34, 4
	v_lshl_or_b32 v37, v37, 4, v37
	v_and_b32_e32 v38, 0x760076, v38
	v_mul_lo_u32 v41, s15, v41
	.loc	1 771 51                        ; attention.py:771:51
	v_lshrrev_b32_e32 v35, 5, v33
	v_lshl_or_b32 v33, v33, 2, v46
	v_and_b32_e32 v73, 0x5040504, v37
	v_lshl_or_b32 v37, v38, 4, v38
	v_bfe_i32 v38, v0, 2, 1
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s13, s13, s6
	.loc	1 734 32                        ; attention.py:734:32
	s_lshl_b32 s1, s3, 11
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s7, s3, s7
	.loc	1 707 13                        ; attention.py:707:13
	s_mul_i32 s0, s18, s13
	v_and_b32_e32 v38, 0x90, v38
	.loc	1 773 30                        ; attention.py:773:30
	s_lshl_b32 s2, s3, 10
	v_and_b32_e32 v74, 0x7060706, v37
	v_xor_b32_e32 v37, v49, v59
	.loc	1 707 13                        ; attention.py:707:13
	v_add3_u32 v49, s34, s1, v56
	v_or3_b32 v75, v50, v45, v38
	v_and_b32_e32 v38, 31, v0
	s_lshr_b32 s1, s34, 1
	.loc	1 754 27                        ; attention.py:754:27
	s_mul_i32 s7, s14, s7
	.loc	1 572 22                        ; attention.py:572:22
	v_and_b32_e32 v34, 62, v52
	v_xor_b32_e32 v33, v33, v59
	.loc	1 707 13                        ; attention.py:707:13
	v_lshlrev_b32_e32 v38, 2, v38
	v_add3_u32 v35, s1, s2, v35
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v2, 4, v57
	v_lshrrev_b32_e32 v47, 5, v0
	v_add_nc_u32_e32 v91, v39, v33
	.loc	1 707 13                        ; attention.py:707:13
	v_lshl_add_u32 v76, s0, 1, v38
	s_add_i32 s0, s34, s12
	v_mul_lo_u32 v38, s24, v49
	v_add3_u32 v41, s7, s0, v41
	v_mov_b32_e32 v33, 0
	v_mad_u64_u32 v[49:50], null, s18, v35, v[34:35]
	v_bfe_i32 v48, v0, 7, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_add_lshl_u32 v50, v41, v55, 1
	v_mov_b32_e32 v41, 0
	.loc	1 599 26                        ; attention.py:599:26
	v_lshl_or_b32 v9, v55, 7, v2
	v_and_or_b32 v47, v47, 3, v46
	v_and_b32_e32 v48, 0x84, v48
	.loc	1 707 13                        ; attention.py:707:13
	v_lshlrev_b32_e32 v77, 3, v55
	v_add_nc_u32_e32 v78, v39, v36
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v14, 0x50, v9
	v_xor_b32_e32 v13, 64, v9
	v_xor_b32_e32 v12, 48, v9
	v_xor_b32_e32 v11, 32, v9
	v_xor_b32_e32 v10, 16, v9
	v_xor_b32_e32 v2, 0x70, v9
	v_xor_b32_e32 v1, 0x60, v9
	v_add_nc_u32_e32 v64, 0, v14
	v_xor_b32_e32 v40, v47, v48
	v_dual_mov_b32 v36, v41 :: v_dual_add_nc_u32 v65, 0, v13
	v_add_nc_u32_e32 v66, 0, v12
	v_add_nc_u32_e32 v67, 0, v11
	v_dual_mov_b32 v35, v41 :: v_dual_add_nc_u32 v62, 0, v2
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v68, 0, v10
	v_add_nc_u32_e32 v63, 0, v1
	v_add_nc_u32_e32 v69, 0, v9
	.loc	1 707 13                        ; attention.py:707:13
	v_lshl_add_u32 v77, v38, 1, v77
	v_add_nc_u32_e32 v82, v39, v40
	v_add_nc_u32_e32 v92, v92, v37
	v_mov_b32_e32 v37, v41
	v_mov_b32_e32 v38, v41
	v_mov_b32_e32 v39, v41
	v_mov_b32_e32 v40, v41
	.loc	1 599 26                        ; attention.py:599:26
	ds_load_b128 v[13:16], v64
	ds_load_b128 v[9:12], v65
	ds_load_b128 v[21:24], v66
	ds_load_b128 v[17:20], v67
	ds_load_b128 v[29:32], v68
	ds_load_b128 v[25:28], v69
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e32 vcc_lo, s18, v34
	v_mov_b32_e32 v34, v41
	.loc	1 599 26                        ; attention.py:599:26
	ds_load_b128 v[5:8], v62
	ds_load_b128 v[1:4], v63
	v_xor_b32_e32 v42, 4, v70
	v_xor_b32_e32 v43, 8, v70
	v_xor_b32_e32 v44, 12, v70
	v_xor_b32_e32 v47, 4, v71
	v_xor_b32_e32 v48, 4, v72
	v_xor_b32_e32 v85, 8, v72
	v_xor_b32_e32 v86, 12, v72
	v_xor_b32_e32 v87, 16, v72
	v_xor_b32_e32 v88, 20, v72
	v_xor_b32_e32 v46, 24, v72
	v_xor_b32_e32 v90, 28, v72
	v_xor_b32_e32 v45, 16, v75
	v_add_nc_u32_e32 v79, 0, v42
	v_add_nc_u32_e32 v80, 0, v43
	v_add_nc_u32_e32 v81, 0, v44
	v_add_nc_u32_e32 v83, 0, v47
	v_add_nc_u32_e32 v84, 0, v48
	v_add_nc_u32_e32 v85, 0, v85
	v_add_nc_u32_e32 v86, 0, v86
	v_add_nc_u32_e32 v87, 0, v87
	v_add_nc_u32_e32 v88, 0, v88
	v_add_nc_u32_e32 v89, 0, v46
	v_add_nc_u32_e32 v90, 0, v90
	v_add_nc_u32_e32 v93, 0, v45
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s23, s23, 0xffff
	s_and_b32 s37, s11, 0xffff
	s_and_b32 s21, s21, 0xffff
	.loc	1 707 13                        ; attention.py:707:13
	s_lshl_b32 s13, s18, 1
	s_lshl_b32 s14, s18, 3
	s_lshl_b32 s15, s24, 5
	s_mov_b32 s24, s8
	s_mov_b32 s25, s9
	s_mov_b32 s28, s22
	s_mov_b32 s29, s23
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s41, 0x76543210
	s_mov_b32 s36, s10
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s22, s26
	s_mov_b32 s23, s27
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 736 32                        ; attention.py:736:32
	v_cndmask_b32_e64 v42, 0x80000000, v77, s5
	.loc	1 735 32                        ; attention.py:735:32
	v_add_nc_u32_e32 v44, s34, v55
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v48, v41
	v_dual_mov_b32 v45, v41 :: v_dual_add_nc_u32 v100, 0, v70
	.loc	1 736 32                        ; attention.py:736:32
	buffer_load_b64 v[42:43], v42, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 741 30                        ; attention.py:741:30
	v_dual_mov_b32 v46, v41 :: v_dual_add_nc_u32 v121, 0, v75
	v_dual_mov_b32 v47, v41 :: v_dual_add_nc_u32 v102, 0, v72
	.loc	1 797 41                        ; attention.py:797:41
	v_dual_cndmask_b32 v120, 0x80000000, v76 :: v_dual_mov_b32 v123, v97
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v98.l, 0
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s12, 0xff800000, v94
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s34, s34, 16
	.loc	1 763 25                        ; attention.py:763:25
	.loc	1 787 39                        ; attention.py:787:39
	.loc	1 763 25                        ; attention.py:763:25
	v_add_nc_u32_e32 v101, 0, v71
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e32 v119, 0x80000000, v49, vcc_lo
	.loc	1 707 13                        ; attention.py:707:13
	v_add_nc_u32_e32 v49, s14, v49
	v_add_nc_u32_e32 v77, s15, v77
	.loc	1 736 32                        ; attention.py:736:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v58, v[42:43]
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v43, v41
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s0, v44, v60
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s1, v44, v61
	.loc	1 736 32                        ; attention.py:736:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[111:114], v69
	ds_load_b128 v[115:118], v68
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v42, v41
	.loc	1 749 21                        ; attention.py:749:21
	s_and_b32 s0, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s0, s4, s0
	.loc	1 761 36                        ; attention.py:761:36
	v_cndmask_b32_e64 v44, 0x80000000, v50, s0
	.loc	1 707 13                        ; attention.py:707:13
	v_add_nc_u32_e32 v50, 32, v50
	.loc	1 761 36                        ; attention.py:761:36
	buffer_load_u16 v99, v44, s[28:31], 0 offen
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v44, v41
	v_dual_mov_b32 v110, v48 :: v_dual_mov_b32 v103, v41
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v96, v96, v96 :: v_dual_mov_b32 v109, v47
	v_dual_mov_b32 v122, v95 :: v_dual_mov_b32 v107, v45
	.loc	1 741 30                        ; attention.py:741:30
	v_dual_mov_b32 v105, v43 :: v_dual_add_nc_u32 v76, s13, v76
	v_mov_b32_e32 v108, v46
	v_mov_b32_e32 v106, v44
	v_mov_b32_e32 v104, v42
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v46.h, v98.l
	v_mov_b16_e32 v45.h, v98.l
	v_mov_b16_e32 v47.h, v98.l
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[103:110], v[111:118], v[25:32], v[103:110]
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[111:114], v67
	ds_load_b128 v[115:118], v66
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[103:110], v[111:118], v[17:24], v[103:110]
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[111:114], v65
	ds_load_b128 v[115:118], v64
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[103:110], v[111:118], v[9:16], v[103:110]
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[111:114], v63
	ds_load_b128 v[115:118], v62
	.loc	1 762 35                        ; attention.py:762:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 741 30                        ; attention.py:741:30
	v_wmma_f32_16x16x16_bf16 v[103:110], v[111:118], v[1:8], v[103:110]
	.loc	1 761 36                        ; attention.py:761:36
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v98.h, 0xff80, v99.l, s0
	.loc	1 762 35                        ; attention.py:762:35
	ds_store_b16_d16_hi v78, v98
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 761 36                        ; attention.py:761:36
	ds_load_u16 v42, v100
	ds_load_u16 v43, v100 offset:16
	ds_load_u16 v44, v79
	ds_load_u16 v48, v80
	ds_load_u16 v95, v81
	ds_load_u16 v97, v81 offset:16
	ds_load_u16 v99, v80 offset:16
	ds_load_u16 v100, v79 offset:16
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v98
	.loc	1 763 25 is_stmt 0              ; attention.py:763:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_mov_b16_e32 v98.h, v98.l
	.loc	1 763 25                        ; attention.py:763:25
	s_and_b32 s0, s0, s1
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s34, s35
	.loc	1 761 36                        ; attention.py:761:36
	v_lshlrev_b32_e32 v43, 16, v43
	v_lshlrev_b32_e32 v48, 16, v48
	v_lshlrev_b32_e32 v95, 16, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v113, 0x3fb8aa3b, v43 :: v_dual_lshlrev_b32 v42, 16, v42
	.loc	1 761 36                        ; attention.py:761:36
	v_lshlrev_b32_e32 v99, 16, v99
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v95, 0x3fb8aa3b, v95 :: v_dual_lshlrev_b32 v100, 16, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v111, 0x3fb8aa3b, v42 :: v_dual_lshlrev_b32 v44, 16, v44
	.loc	1 763 25                        ; attention.py:763:25
	v_cndmask_b32_e64 v42, 0, 1, s0
	.loc	1 761 36                        ; attention.py:761:36
	v_lshlrev_b32_e32 v97, 16, v97
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v99, 0x3fb8aa3b, v99 :: v_dual_mul_f32 v112, 0x3fb8aa3b, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v100, 0x3fb8aa3b, v100 :: v_dual_fmac_f32 v111, s40, v103
	.loc	1 763 25                        ; attention.py:763:25
	ds_store_b8 v82, v42
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v42, v83
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v42, v101 offset:8
	ds_load_u8_d16 v43, v83 offset:8
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v43, v83 offset:16
	ds_load_u8_d16 v44, v83 offset:24
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v44, v101 offset:24
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v48, 0x3fb8aa3b, v48 :: v_dual_mul_f32 v97, 0x3fb8aa3b, v97
	.loc	1 762 25 is_stmt 0              ; attention.py:762:25
	v_dual_fmac_f32 v100, s40, v108 :: v_dual_fmac_f32 v99, s40, v109
	v_dual_fmac_f32 v112, s40, v104 :: v_dual_fmac_f32 v95, s40, v106
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v48, s40, v105 :: v_dual_fmac_f32 v113, s40, v107
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_mov_b16_e32 v103.h, v98.l
	v_mov_b16_e32 v105.h, v98.l
	v_mov_b16_e32 v104.h, v98.l
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v106.h, v98.l
	.loc	1 763 25                        ; attention.py:763:25
	v_and_b16 v42.l, 1, v42.l
	v_and_b16 v42.h, 1, v42.h
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_eq_u16_e64 s1, 1, v42.l
	ds_load_u8_d16 v42, v101 offset:16
	ds_load_u8_d16 v45, v101
	s_waitcnt lgkmcnt(1)
	v_cmp_eq_u16_e64 s2, 1, v42.h
	v_and_b16 v42.h, 1, v43.l
	v_and_b16 v43.l, 1, v44.l
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v107, 0xff800000, v112, s1
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v48, 0xff800000, v48, s2
	.loc	1 763 25                        ; attention.py:763:25
	v_cmp_eq_u16_e64 s6, 1, v42.h
	v_and_b16 v42.h, 1, v44.h
	v_cmp_eq_u16_e64 s11, 1, v43.l
	.loc	1 764 26                        ; attention.py:764:26
	s_barrier
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v101.h, v98.l
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v95, 0xff800000, v95, s6
	.loc	1 763 25                        ; attention.py:763:25
	v_cmp_eq_u16_e64 s10, 1, v42.h
	v_and_b16 v42.l, 1, v42.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s7, 1, v42.l
	v_and_b16 v42.l, 1, v45.l
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v108, 0xff800000, v113, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 763 25                        ; attention.py:763:25
	v_cmp_eq_u16_e64 s8, 1, v42.l
	v_and_b16 v42.l, 1, v43.h
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v44, 0xff800000, v111, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 763 25                        ; attention.py:763:25
	v_cmp_eq_u16_e64 s9, 1, v42.l
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v42, 0xff800000, v99, s10
	.loc	1 762 25                        ; attention.py:762:25
	v_fmac_f32_e32 v97, s40, v110
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v99, v44, v107, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp4:
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v100, 0xff800000, v100, s9
	v_cndmask_b32_e64 v43, 0xff800000, v97, s11
	ds_store_b32 v102, v44
	ds_store_b32 v84, v107
	ds_store_b32 v85, v48
	ds_store_b32 v86, v95
	ds_store_b32 v87, v108
	ds_store_b32 v88, v100
	ds_store_b32 v89, v42
	ds_store_b32 v90, v43
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 775 32                        ; attention.py:775:32
	buffer_load_u16 v97, v119, s[36:39], 0 offen
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_b32 v102, v120, s[20:23], 0 offen
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v109, v95, v108, v100
	v_max_f32_e32 v110, v42, v43
.Ltmp6:
	.loc	1 764 26                        ; attention.py:764:26
	ds_load_b32 v111, v91
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v97.h, v98.l
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v99, v99, v109, v110
.Ltmp8:
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v110.h, v98.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v109, v99, s41, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v114, v94, v99, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 767 74                        ; attention.py:767:74
	v_dual_sub_f32 v99, v94, v114 :: v_dual_max_f32 v94, v111, v111
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v44, v44, v114
	v_sub_f32_e32 v48, v48, v114
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v99, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v48, v48
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v99, 0, v99, s12
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v109, v111
.Ltmp12:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v44, 0, v44, s8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v48, 0, v48, s2
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v35, v35, v99
	v_mul_f32_e32 v34, v34, v99
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v109, v109 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp14:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v37, v37, v99
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v46.l, v44.h
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v33, v33, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v36, v36, v99 :: v_dual_max_f32 v109, v109, v109
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s2, v44, v44
	v_and_b32_e32 v46, 1, v46
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v38, v38, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v39, v39, v99 :: v_dual_max_f32 v94, v94, v109
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v95, v95, v114
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v44, v44, v46, 0x7fff
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v40, v40, v99 :: v_dual_sub_f32 v99, v107, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v46, v94
.Ltmp16:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v95, v95
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v103.l, v48.h
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v109.h, v98.l
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v99, v99
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v46, v46 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v46, v46, v46 :: v_dual_and_b32 v103, 1, v103
.Ltmp19:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v95, 0, v95, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v99, 0, v99, s1
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v47.l, v95.h
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v42, v42, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s6, v95, v95
	v_mov_b16_e32 v45.l, v99.h
	v_cmp_o_f32_e64 s1, v99, v99
	v_and_b32_e32 v47, 1, v47
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v47, v95, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add3_u32 v45, v99, v45, 0x7fff
	v_cndmask_b16 v45.l, 0x7fff, v44.h, s2
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v44, v94, v46
.Ltmp21:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v42, 0, v42, s10
	.loc	1 768 62 is_stmt 0              ; attention.py:768:62
	v_sub_f32_e32 v43, v43, v114
	v_sub_f32_e32 v99, v100, v114
	v_sub_f32_e32 v100, v108, v114
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_cndmask_b16 v45.h, 0x7fff, v45.h, s1
	v_mov_b16_e32 v105.l, v42.h
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v43, v43
	v_exp_f32_e32 v99, v99
	v_exp_f32_e32 v100, v100
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v47.h, 0x7fff, v47.h, s6
	v_and_b32_e32 v105, 1, v105
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v43, 0, v43, s11
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s11, v42, v42
	v_add3_u32 v42, v42, v105, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v100, 0, v100, s7
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s7, v48, v48
	v_add3_u32 v48, v48, v103, 0x7fff
	v_mov_b16_e32 v101.l, v43.h
	v_cndmask_b16 v48.l, 0x7fff, v42.h, s11
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v42, v44
.Ltmp23:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v99, 0, v99, s9
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v98.l, v100.h
	v_cmp_o_f32_e64 s10, v43, v43
	v_cmp_o_f32_e64 s9, v100, v100
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v42, v42 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v101, 1, v101
	v_mov_b16_e32 v104.l, v99.h
	v_and_b32_e32 v98, 1, v98
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v107, v122, v122
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v42, v42, v42
.Ltmp27:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v43, v43, v101, 0x7fff
	v_and_b32_e32 v104, 1, v104
	v_add3_u32 v98, v100, v98, 0x7fff
	v_cndmask_b16 v47.l, 0x7fff, v48.h, s7
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v42, v44, v42
.Ltmp29:
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v48.h, 0x7fff, v43.h, s10
	v_permlanex16_b32 v43, v45, s41, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s8, v99, v99
	v_add3_u32 v95, v99, v104, 0x7fff
	v_cndmask_b16 v46.l, 0x7fff, v98.h, s9
	v_permlanex16_b32 v94, v47, s41, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v98, v43, v45, v73
	v_perm_b32 v99, v43, v45, v74
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v43, v42
.Ltmp31:
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v46.h, 0x7fff, v95.h, s8
	v_permlanex16_b32 v105, v48, s41, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v103, v46, s41, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v42, v42, v43
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp35:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v96, v96, v42
	v_max_f32_e32 v95, v107, v42
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v44, v97, 0, 8
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v100, 16, v102
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v42, v111, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s1, 0, v44.l
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v42, 0, v42, s0
.Ltmp36:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v42, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v43, v42
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v42, v42, v43
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v45, v42, v43
.Ltmp42:
	.loc	1 775 32                        ; attention.py:775:32
	v_ashrrev_i16 v42.l, 8, v97.l
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v42.h, 12, v97.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v43.l, v97.l, 15
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b16 v43.h, 8, v97.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s0, 0, v42.l
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v42.l, 4, v97.l
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v44.l, v42.h, -16
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s2, 7, v43.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v43.h, v43.h, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v42.l, v42.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v44.l, v42.h, v44.l, s0
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v42.h, 0, -16, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 786 38 is_stmt 0              ; attention.py:786:38
	v_cmp_lt_u16_e64 s0, 7, v43.h
	.loc	1 814 31 is_stmt 1              ; attention.py:814:31
	v_bfe_i32 v44, v44, 0, 16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v43.l, v43.l, v42.h
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v42.h, v42.l, -16
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v97.l, v42.l, v42.h, s1
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v42.l, 0, -16, s0
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v101, v97, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v42.l, v43.h, v42.l
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v43, v43, 0, 16
	v_cvt_f32_i32_e32 v101, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_bfe_i32 v42, v42, 0, 16
	v_cvt_f32_i32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v101, v100, v101
	v_cvt_f32_i32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v43, v100, v43 :: v_dual_and_b32 v100, 0xffff0000, v102
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v102, v122, v95
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v109.l, v101.h
	v_cmp_o_f32_e64 s2, v101, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v42, v100, v42
	v_mul_f32_e32 v44, v100, v44
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v110.l, v42.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v106.l, v44.h
	v_cmp_o_f32_e64 s6, v42, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s0, v44, v44
	v_and_b32_e32 v104, 1, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v100, 1, v106
	v_mov_b16_e32 v97.l, v43.h
	v_cmp_o_f32_e64 s1, v43, v43
	v_add3_u32 v42, v42, v104, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v44, v44, v100, 0x7fff
	v_and_b32_e32 v97, 1, v97
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_perm_b32 v104, v105, v48, v73
	v_perm_b32 v105, v105, v48, v74
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v44.l, 0x7fff, v42.h, s6
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v42, v102
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s0
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s0, 0xff800000, v122
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v43, v43, v97, 0x7fff
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v102, v103, v46, v73
	v_perm_b32 v103, v103, v46, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v42, 0, v42, s0
	.loc	1 814 30                        ; attention.py:814:30
	v_and_b32_e32 v100, 1, v109
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v97, v101, v100, 0x7fff
	v_cndmask_b16 v97.l, 0x7fff, v43.h, s1
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v43, v45
.Ltmp44:
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v100, v94, v47, v73
	v_perm_b32 v101, v94, v47, v74
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v97.h, 0x7fff, v97.h, s2
	v_mov_b32_e32 v94, v114
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	1 814 30                        ; attention.py:814:30
	ds_store_2addr_b32 v92, v97, v44 offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[106:109], v121
	ds_load_b128 v[110:113], v93
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v97, v45, v43
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp48:
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v97, v123, v42
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[106:113], v[98:105], v[33:40]
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v2, v59
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v95, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v39, v40
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v36, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v97, v40
.LBB0_8:                                ; %._crit_edge
	.loc	1 825 26 is_stmt 1              ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v56
	s_mov_b32 s1, 0x76543210
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp50:
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s33, s33, s3
	.loc	1 825 17                        ; attention.py:825:17
	v_dual_cndmask_b32 v1, 0xff800000, v95 :: v_dual_add_nc_u32 v2, 0, v2
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s0, s18, 2
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s2, exec_lo
	.loc	1 828 36                        ; attention.py:828:36
	v_cndmask_b32_e32 v4, 0, v97, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_permlanex16_b32 v3, v1, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp52:
	.loc	1 830 26                        ; attention.py:830:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v55
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_permlanex16_b32 v6, v4, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v1, v1, v1
.Ltmp55:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v13, 0, v38 :: v_dual_cndmask_b32 v14, 0, v39
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s19, s33
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v4, v4, v6 :: v_dual_max_f32 v1, v1, v3
.Ltmp57:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v6, 0, v34, vcc_lo
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_lshl_add_u32 v3, v57, 2, 0
.Ltmp59:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v5, 0, v33, vcc_lo
	.loc	1 822 30                        ; attention.py:822:30
	s_mul_i32 s0, s1, s0
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v3
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v2, v4
.Ltmp62:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v4, v6
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v2, v3
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v7, v5 :: v_dual_cndmask_b32 v12, 0, v37
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	1 830 17 is_stmt 1              ; attention.py:830:17
	v_cndmask_b32_e32 v3, 0, v35, vcc_lo
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v19, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v4, v6, v4
.Ltmp68:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v11, 0, v36 :: v_dual_mov_b32 v8, v3
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v5, v5, v7
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v14, v14, v19
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v13, v18
	v_add_f32_e32 v3, v3, v8
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v7, v1 :: v_dual_mov_b32 v8, v4
.Ltmp75:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v15, 0, v40 :: v_dual_mov_b32 v6, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v7, v7, v7 :: v_dual_add_f32 v4, v4, v8
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v20, v15
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v12, v12, v17
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v18, v13
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v16, v1, v7 :: v_dual_mov_b32 v9, v2
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v7, v4
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp89:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v5, v6
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v15, v20
.Ltmp92:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v5, v2, v9 :: v_dual_mov_b32 v2, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v3, v3, v10 :: v_dual_add_f32 v12, v12, v17
.Ltmp94:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v20, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp95:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v8, v5
.Ltmp96:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp98:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp99:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v10, v2, v2
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v2, v4, v7
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v9, v3
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v7, v5, v8 :: v_dual_max_f32 v8, v16, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v4, v2
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v11
.Ltmp104:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v10, v8 :: v_dual_mov_b32 v19, v14
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v5, v3, v9
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp107:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v9, v7
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v3, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v6, v5 :: v_dual_add_f32 v11, v11, v16
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v11, v16
	v_add_f32_e32 v16, v15, v20
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v13, v13, v18 :: v_dual_mov_b32 v20, v16
	v_dual_add_f32 v14, v14, v19 :: v_dual_mov_b32 v15, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v19, v14
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v11, v15
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v17, v12
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v13, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v15, v14, v19 :: v_dual_mov_b32 v14, v11
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v12, v12, v17
	v_add_f32_e32 v17, v16, v20
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v19, v15
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp122:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_10
; %bb.9:
.Ltmp123:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp124:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp126:
	.loc	1 833 13                        ; attention.py:833:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp127:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp128:
	.loc	1 833 13                        ; attention.py:833:13
	s_add_u32 s4, s16, s4
	s_addc_u32 s5, s17, s5
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_10:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp129:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_dual_add_f32 v13, v5, v6 :: v_dual_add_f32 v12, v2, v4
.Ltmp130:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v5, 0xc0, v54
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v14, v11, v14 :: v_dual_add_f32 v11, v1, v3
.Ltmp132:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v1, 28, v52
	v_and_b32_e32 v2, 32, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v5
	v_lshl_add_u32 v4, v51, 1, 0
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp134:
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
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 836 17                        ; attention.py:836:17
	v_add_nc_u32_e32 v2, s0, v5
	.loc	1 838 22                        ; attention.py:838:22
	v_cmp_gt_i32_e32 vcc_lo, s18, v5
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
.Ltmp135:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
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
		.amdhsa_next_free_vgpr 124
		.amdhsa_next_free_sgpr 42
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
		.amdhsa_inst_pref_size 43
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.num_vgpr, 124
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.numbered_sgpr, 42
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5432
; TotalNumSgprs: 44
; NumVgprs: 124
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 44
; NumVGPRsForWavesPerEU: 124
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
	.short	765                             ; DW_AT_call_line
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
	.short	769                             ; DW_AT_call_line
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
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     44
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     124
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
