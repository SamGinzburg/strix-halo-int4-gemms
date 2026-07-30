	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s34, s[0:1], 0x64
	s_load_b64 s[14:15], s[0:1], 0x5c
.Ltmp0:
	.loc	1 559 27 prologue_end           ; attention.py:559:27
	s_abs_i32 s7, s2
	.loc	1 584 86                        ; attention.py:584:86
	v_lshlrev_b32_e32 v27, 2, v0
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x40
	s_load_b64 s[16:17], s[0:1], 0x0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v31, 15, v0
	.loc	1 584 86                        ; attention.py:584:86
	v_and_b32_e32 v2, 28, v27
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v28, 1, v0
	.loc	1 771 51                        ; attention.py:771:51
	v_and_b32_e32 v29, 0x70, v0
	v_lshlrev_b32_e32 v30, 5, v0
	.loc	1 609 32                        ; attention.py:609:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s34
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s8, s2, s34
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 559 27                        ; attention.py:559:27
	s_ashr_i32 s8, s8, 31
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e32 vcc_lo, s14, v2
	.loc	1 609 32                        ; attention.py:609:32
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s4, v1
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v1, 3, v0
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[17:18], null, s14, v1, v[2:3]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 609 32                        ; attention.py:609:32
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
	s_and_b32 s17, s17, 0xffff
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s21, s7, 4
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s7, s7, s34
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v5, s21, v1
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s20, s21, s3
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s33, s2, s7
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[3:4], null, s20, s14, v[17:18]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s4, 1, v5
	.loc	1 587 22 is_stmt 0              ; attention.py:587:22
	s_and_b32 s4, vcc_lo, s4
	.loc	1 585 26 is_stmt 1              ; attention.py:585:26
	v_cndmask_b32_e64 v2, 0x80000000, v3, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s34, 0x7f
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 609 32 is_stmt 1              ; attention.py:609:32
	s_xor_b32 s8, s4, s34
	s_abs_i32 s4, s4
	.loc	1 585 26                        ; attention.py:585:26
	buffer_load_b32 v3, v2, s[16:19], 0 offen
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_hi_u32 s6, s4, s6
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	.loc	1 585 26                        ; attention.py:585:26
	v_and_b32_e32 v2, 0x60, v0
	.loc	1 609 32                        ; attention.py:609:32
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	.loc	1 585 26                        ; attention.py:585:26
	v_lshrrev_b32_e32 v4, 2, v2
	.loc	1 609 32                        ; attention.py:609:32
	s_cselect_b32 s2, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s8
	s_sub_i32 s2, s2, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v4, v27, v4
	.loc	1 610 18                        ; attention.py:610:18
	s_mul_i32 s4, s33, s2
	s_lshl_b32 s35, s4, 4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 611 33                        ; attention.py:611:33
	s_lshl4_add_u32 s2, s2, s35
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v32, 0, v4
	.loc	1 611 18                        ; attention.py:611:18
	s_min_i32 s36, s2, 0x800
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_ge_i32 s35, s36
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v32, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 570 21 is_stmt 1              ; attention.py:570:21
	v_or_b32_e32 v3, s21, v31
	.loc	1 590 31                        ; attention.py:590:31
	v_add_lshl_u32 v4, s20, v31, 1
	v_and_b32_e32 v6, 16, v0
	v_dual_mov_b32 v7, 0x5410 :: v_dual_lshlrev_b32 v18, 2, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 1, v3
	.loc	1 707 13                        ; attention.py:707:13
	v_sub_nc_u32_e32 v33, 0x800, v1
	v_dual_mov_b32 v9, 0 :: v_dual_lshlrev_b32 v8, 7, v0
	v_bfe_i32 v10, v0, 0, 1
	.loc	1 590 31                        ; attention.py:590:31
	v_cndmask_b32_e64 v3, 0x80000000, v4, s2
	v_dual_mov_b32 v19, 0x7632 :: v_dual_and_b32 v4, 24, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v11, v9 :: v_dual_lshlrev_b32 v22, 4, v2
	v_bfe_i32 v2, v0, 2, 1
	v_mov_b32_e32 v1, 0
	.loc	1 585 26                        ; attention.py:585:26
	v_lshl_or_b32 v23, v31, 5, v4
	.loc	1 771 51                        ; attention.py:771:51
	v_lshrrev_b32_e32 v5, 4, v29
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s9, 0xffff
	s_mov_b32 s16, s8
	s_clause 0x1
	s_load_b32 s8, s[0:1], 0x68
	s_load_b64 s[20:21], s[0:1], 0x28
	buffer_load_u16 v53, v3, s[16:19], 0 offen
	v_cmp_eq_u32_e64 s1, 0, v6
	.loc	1 570 31                        ; attention.py:570:31
	v_bfe_u32 v3, v0, 4, 1
	v_lshrrev_b32_e32 v20, 2, v29
	v_and_b32_e32 v21, 0x160, v30
	v_dual_mov_b32 v12, v9 :: v_dual_and_b32 v25, 0x700, v8
	v_cndmask_b32_e64 v24, 0x1054, v7, s1
	v_dual_mov_b32 v15, v9 :: v_dual_and_b32 v26, 0x90, v10
	v_and_b32_e32 v46, 0x90, v2
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v47, 8, v23
	v_xor_b32_e32 v48, 16, v23
	.loc	1 710 32                        ; attention.py:710:32
	s_lshl_b32 s37, s3, 11
	.loc	1 707 13                        ; attention.py:707:13
	v_sub_nc_u32_e32 v35, 0x400, v5
	v_lshl_or_b32 v37, s3, 10, v5
	v_dual_mov_b32 v5, v1 :: v_dual_add_nc_u32 v38, 0, v23
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v23, 24, v23
	.loc	1 707 13                        ; attention.py:707:13
	v_sub_nc_u32_e32 v34, 0x800, v3
	v_or_b32_e32 v36, s37, v3
	v_mov_b32_e32 v10, v9
	v_dual_mov_b32 v14, v9 :: v_dual_add_nc_u32 v25, 0, v25
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v6, v1
	v_cndmask_b32_e64 v19, 0x3276, v19, s1
	v_lshl_or_b32 v24, v24, 8, v24
	v_xor_b32_e32 v20, v26, v20
	v_or3_b32 v21, v21, v22, v46
	v_dual_mov_b32 v7, v1 :: v_dual_add_nc_u32 v46, 0, v47
	v_dual_mov_b32 v16, v9 :: v_dual_add_nc_u32 v47, 0, v48
	v_dual_mov_b32 v2, v1 :: v_dual_and_b32 v51, 0x540054, v24
	v_lshl_or_b32 v54, v19, 8, v19
	v_xor_b32_e32 v55, 16, v21
	v_add_nc_u32_e32 v49, v25, v20
	v_add_nc_u32_e32 v50, 0, v21
	v_mov_b32_e32 v4, v1
	v_and_b32_e32 v54, 0x760076, v54
	v_lshl_or_b32 v56, v51, 4, v51
	v_add_nc_u32_e32 v51, 0, v55
	.loc	1 742 27                        ; attention.py:742:27
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s40, s8, 0x3fb8aa3b
	v_dual_mov_b32 v52, 0xff800000 :: v_dual_mov_b32 v13, v9
	v_lshl_or_b32 v55, v54, 4, v54
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e64 s0, s15, v18
	v_mov_b32_e32 v8, v1
	v_or_b32_e32 v39, 2, v36
	v_or_b32_e32 v40, 4, v36
	v_or_b32_e32 v41, 6, v36
	v_or_b32_e32 v42, 8, v36
	v_or_b32_e32 v43, 10, v36
	v_or_b32_e32 v44, 12, v36
	v_or_b32_e32 v45, 14, v36
	v_and_b32_e32 v54, 0x5040504, v56
	v_dual_mov_b32 v62, v1 :: v_dual_and_b32 v55, 0x7060706, v55
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	.loc	1 794 21                        ; attention.py:794:21
	s_lshl_b32 s38, s3, 7
	s_mov_b32 s39, 0x76543210
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	s_mov_b32 s30, s18
	s_and_b32 s29, s7, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s24, s10
	s_mov_b32 s28, s6
	s_mov_b32 s16, s4
	s_mov_b32 s17, s5
	s_mov_b32 s25, s11
	.loc	1 742 17                        ; attention.py:742:17
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s31, s19
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v53, 16, v53
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mov_b32 v57, v53 :: v_dual_add_nc_u32 v48, 0, v23
	.loc	1 585 26                        ; attention.py:585:26
	ds_load_b64 v[19:20], v38
	ds_load_b64 v[21:22], v46
	ds_load_b64 v[23:24], v47
	ds_load_b64 v[25:26], v48
	.loc	1 732 30                        ; attention.py:732:30
	v_mov_b32_e32 v56, v53
	v_mov_b32_e32 v58, v53
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 711 32                        ; attention.py:711:32
	s_add_i32 s1, s35, s37
	v_dual_mov_b32 v76, v52 :: v_dual_mov_b32 v59, v62
	v_mad_u64_u32 v[60:61], null, s1, s14, v[17:18]
	.loc	1 714 73                        ; attention.py:714:73
	v_cmp_lt_i32_e64 s1, s35, v33
	v_cmp_lt_i32_e64 s4, s35, v34
	.loc	1 798 53                        ; attention.py:798:53
	s_ashr_i32 s44, s35, 4
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 798 25 is_stmt 0              ; attention.py:798:25
	s_add_i32 s44, s44, s38
	.loc	1 714 30 is_stmt 1              ; attention.py:714:30
	s_and_b32 s1, vcc_lo, s1
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s44, s44, s15
	.loc	1 712 32                        ; attention.py:712:32
	v_cndmask_b32_e64 v52, 0x80000000, v60, s1
	.loc	1 743 25                        ; attention.py:743:25
	s_and_b32 s1, s2, s4
	.loc	1 712 32                        ; attention.py:712:32
	buffer_load_b32 v52, v52, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b32 v32, v52
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[68:69], v38
	ds_load_b64 v[70:71], v46
	ds_load_b64 v[72:73], v47
	ds_load_b64 v[74:75], v48
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v52, s35, v36, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v52, 0x80000000, v52, s4
	buffer_load_u16 v52, v52, s[24:27], 0 offen
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[60:67], v[68:69], v[19:20], v[9:16] neg_lo:[1,1,0]
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v68, v39, s35, 1
	v_add_lshl_u32 v69, v40, s35, 1
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[60:67], v[70:71], v[21:22], v[60:67] neg_lo:[1,1,0]
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v70, v41, s35, 1
	v_cndmask_b32_e64 v68, 0x80000000, v68, s4
	v_cndmask_b32_e64 v69, 0x80000000, v69, s4
	v_add_lshl_u32 v71, v42, s35, 1
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[60:67], v[72:73], v[23:24], v[60:67] neg_lo:[1,1,0]
	.loc	1 727 37                        ; attention.py:727:37
	v_cndmask_b32_e64 v70, 0x80000000, v70, s4
	s_clause 0x1
	buffer_load_u16 v68, v68, s[24:27], 0 offen
	buffer_load_u16 v69, v69, s[24:27], 0 offen
	v_add_lshl_u32 v72, v43, s35, 1
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[60:67], v[74:75], v[25:26], v[60:67] neg_lo:[1,1,0]
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v73, v44, s35, 1
	v_add_lshl_u32 v74, v45, s35, 1
	buffer_load_u16 v70, v70, s[24:27], 0 offen
	v_cndmask_b32_e64 v71, 0x80000000, v71, s4
	v_cndmask_b32_e64 v72, 0x80000000, v72, s4
	v_cndmask_b32_e64 v73, 0x80000000, v73, s4
	v_cndmask_b32_e64 v74, 0x80000000, v74, s4
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v61, v61
	.loc	1 727 37                        ; attention.py:727:37
	s_clause 0x3
	buffer_load_u16 v71, v71, s[24:27], 0 offen
	buffer_load_u16 v72, v72, s[24:27], 0 offen
	buffer_load_u16 v73, v73, s[24:27], 0 offen
	buffer_load_u16 v74, v74, s[24:27], 0 offen
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v64, v64
	v_mul_f32_e32 v62, v57, v62
	v_cvt_f32_i32_e32 v66, v66
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s4, 0xff800000, v76
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v61, v56, v61 :: v_dual_mul_f32 v64, v53, v64
	v_dual_mul_f32 v60, v53, v60 :: v_dual_mul_f32 v63, v58, v63
	v_mul_f32_e32 v67, v58, v67
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v65, v56, v65 :: v_dual_lshlrev_b32 v52, 16, v52
	.loc	1 727 37                        ; attention.py:727:37
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v68, 16, v68
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v69, 16, v69
	.loc	1 732 30                        ; attention.py:732:30
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v61, v61, v68 :: v_dual_lshlrev_b32 v70, 16, v70
	v_mul_f32_e32 v62, v62, v69
	v_mul_f32_e32 v52, v60, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v60, s41, v61 :: v_dual_mul_f32 v63, v63, v70
	v_dual_mul_f32 v61, s42, v62 :: v_dual_mul_f32 v52, s40, v52
	.loc	1 727 37                        ; attention.py:727:37
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v69, 16, v73
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v70, 16, v74
	.loc	1 742 17                        ; attention.py:742:17
	v_mul_f32_e32 v62, s43, v63
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v63, 0xff800000, v60, s1
	v_cndmask_b32_e64 v68, 0xff800000, v52, s1
	.loc	1 775 32                        ; attention.py:775:32
	v_mov_b16_e32 v73.h, 0
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v67, v67, v70 :: v_dual_lshlrev_b32 v60, 16, v72
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v61, 0xff800000, v61, s1
	v_cndmask_b32_e64 v62, 0xff800000, v62, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v80.l, v73.h
	v_mov_b16_e32 v82.l, v73.h
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v60, v65, v60 :: v_dual_mul_f32 v65, s43, v67
	.loc	1 742 17                        ; attention.py:742:17
	v_mul_f32_e32 v60, s41, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v65, 0xff800000, v65, s1
	.loc	1 727 37                        ; attention.py:727:37
	v_lshlrev_b32_e32 v52, 16, v71
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v52, v64, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 742 17                        ; attention.py:742:17
	v_mul_f32_e32 v52, s40, v52
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v67, 0xff800000, v52, s1
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v66, v57, v66
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v52, v68, v63, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp2:
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v66, v66, v69
	.loc	1 742 17                        ; attention.py:742:17
	v_mul_f32_e32 v64, s42, v66
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v66, 0xff800000, v60, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v64, 0xff800000, v64, s1
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v60, v62, v67, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v69, v64, v65
	v_max3_f32 v52, v52, v60, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v60, v52, s39, 0xfedcba98 op_sel:[1,0]
.Ltmp5:
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v52, v76, v52, v60
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v60, v76, v52
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v61, v61, v52
	v_sub_f32_e32 v62, v62, v52
	v_sub_f32_e32 v63, v63, v52
	v_sub_f32_e32 v67, v67, v52
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v60, v60
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v70, v61
	v_exp_f32_e32 v71, v62
	v_exp_f32_e32 v69, v63
	.loc	1 785 30                        ; attention.py:785:30
	v_mov_b16_e32 v63.h, v73.h
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v67, v67
	.loc	1 768 62 is_stmt 0              ; attention.py:768:62
	v_sub_f32_e32 v65, v65, v52
	.loc	1 767 25 is_stmt 1              ; attention.py:767:25
	v_cndmask_b32_e64 v60, 0, v60, s4
	.loc	1 771 36                        ; attention.py:771:36
	s_ashr_i32 s4, s35, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v65, v65
	.loc	1 774 30                        ; attention.py:774:30
	v_add_nc_u32_e32 v61, s4, v37
	.loc	1 777 27                        ; attention.py:777:27
	v_cmp_lt_i32_e64 s4, s4, v35
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v8, v8, v60
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s35, s35, 16
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v1, v1, v60
	.loc	1 774 30                        ; attention.py:774:30
	v_mad_u64_u32 v[61:62], null, v61, s15, v[18:19]
	.loc	1 777 26                        ; attention.py:777:26
	s_and_b32 s5, s0, s4
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s35, s36
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v3, v3, v60
	v_mul_f32_e32 v5, v5, v60
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v61, 0x80000000, v61, s5
	buffer_load_b32 v72, v61, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v74, 8, v72
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v63.l, 4, v72.l
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b32_e32 v75, 24, v72
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v61.l, v72.l, 15
	v_and_b16 v62.l, v72.h, 15
	v_and_b16 v61.h, v74.l, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v73.l, v63.l, 15
	v_lshrrev_b16 v63.l, 4, v74.l
	.loc	1 784 29                        ; attention.py:784:29
	v_and_b32_e32 v76, 15, v72
	v_bfe_u32 v77, v72, 8, 4
	v_bfe_u32 v78, v72, 16, 4
	v_bfe_u32 v79, v72, 24, 4
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v63.l, v63.l, 15
	v_lshrrev_b16 v74.l, 4, v75.l
	.loc	1 785 30 is_stmt 0              ; attention.py:785:30
	v_bfe_u32 v72, v72, 20, 4
	v_mov_b16_e32 v74.h, v73.h
	.loc	1 783 76 is_stmt 1              ; attention.py:783:76
	v_and_b16 v62.h, v75.l, 15
	.loc	1 783 32 is_stmt 0              ; attention.py:783:32
	v_cndmask_b32_e64 v75, 0, v73, s4
	v_cndmask_b32_e64 v63, 0, v63, s4
	v_cndmask_b32_e64 v72, 0, v72, s4
	v_cndmask_b32_e64 v74, 0, v74, s4
	.loc	1 786 38 is_stmt 1              ; attention.py:786:38
	v_cmp_lt_u16_e64 s4, 7, v61.l
	v_cmp_lt_u16_e64 s5, 7, v61.h
	.loc	1 797 41                        ; attention.py:797:41
	v_add_lshl_u32 v61, s44, v18, 1
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s6, 7, v62.l
	v_cmp_lt_u16_e64 s7, 7, v62.h
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_lt_u32_e64 s8, 7, v75
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v83, -16, v76
	.loc	1 797 41                        ; attention.py:797:41
	v_cndmask_b32_e64 v61, 0x80000000, v61, s0
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_lt_u32_e64 s9, 7, v63
	v_cmp_lt_u32_e64 s10, 7, v72
	v_cmp_lt_u32_e64 s11, 7, v74
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_b64 v[61:62], v61, s[20:23], 0 offen
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v80.h, v61.l
	v_and_b32_e32 v81, 0xffff0000, v61
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b32_e32 v61, -16, v75
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v82.h, v62.l
	v_and_b32_e32 v62, 0xffff0000, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b32_e64 v61, v75, v61, s8
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v75, v76, v83, s4
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v76.h, v73.h
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_cvt_f32_i32_e32 v61, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v75, v75
	v_mul_f32_e32 v61, v80, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v75, v80, v75
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v76.l, v61.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v73.l, v75.h
	v_cmp_o_f32_e64 s4, v61, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v76, 1, v76
	v_and_b32_e32 v80, 1, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v76, v61, v76, 0x7fff
	v_add3_u32 v80, v75, v80, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v61.h, 0x7fff, v76.h, s4
	v_cmp_o_f32_e64 s4, v75, v75
	.loc	1 787 56 is_stmt 1              ; attention.py:787:56
	v_or_b32_e32 v75, -16, v63
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v76, -16, v77
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v61.l, 0x7fff, v80.h, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b32_e64 v63, v63, v75, s9
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v75, v77, v76, s5
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v76.h, v73.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v75, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v63, v81, v63
	v_mul_f32_e32 v75, v81, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v76.l, v63.h
	v_mov_b16_e32 v73.l, v75.h
	.loc	1 768 62 is_stmt 1              ; attention.py:768:62
	v_sub_f32_e32 v68, v68, v52
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s4, v63, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v76, 1, v76
	v_and_b32_e32 v77, 1, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v68, v68
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v76, v63, v76, 0x7fff
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b32_e32 v63, -16, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v77, v75, v77, 0x7fff
	v_cndmask_b16 v76.h, 0x7fff, v76.h, s4
	v_cmp_o_f32_e64 s4, v75, v75
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v75, -16, v78
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b32_e64 v63, v72, v63, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v76.l, 0x7fff, v77.h, s4
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v72, v78, v75, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v63, v63
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v64, v64, v52
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v75.h, v73.h
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_cvt_f32_i32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v63, v82, v63
	.loc	1 768 49 is_stmt 1              ; attention.py:768:49
	v_exp_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v72, v82, v72
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_mov_b16_e32 v73.l, v63.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s4, v63, v63
	v_mov_b16_e32 v75.l, v72.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 768 62 is_stmt 1              ; attention.py:768:62
	v_dual_sub_f32 v66, v66, v52 :: v_dual_and_b32 v77, 1, v73
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v64, 0, v64, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 814 30 is_stmt 1              ; attention.py:814:30
	v_and_b32_e32 v75, 1, v75
	v_add3_u32 v77, v63, v77, 0x7fff
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b32_e32 v63, -16, v74
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v75, v72, v75, 0x7fff
	v_cndmask_b16 v77.h, 0x7fff, v77.h, s4
	v_cmp_o_f32_e64 s4, v72, v72
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v72, -16, v79
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b32_e64 v63, v74, v63, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v77.l, 0x7fff, v75.h, s4
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v72, v79, v72, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v63, v62, v63
	v_mul_f32_e32 v62, v62, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_mov_b16_e32 v72.l, v63.h
	v_mov_b16_e32 v72.h, v73.h
	v_cmp_o_f32_e64 s4, v63, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v73.l, v62.h
	v_and_b32_e32 v72, 1, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v74, 1, v73
	v_add3_u32 v72, v63, v72, 0x7fff
	.loc	1 768 33 is_stmt 1              ; attention.py:768:33
	v_cndmask_b32_e64 v63, 0, v68, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v74, v62, v74, 0x7fff
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s4
	v_cmp_o_f32_e64 s4, v62, v62
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v62, 0, v69, s1
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v69.l, v63.h
	v_mov_b16_e32 v69.h, v73.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v72.l, 0x7fff, v74.h, s4
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v73.l, v62.h
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v7, v7, v60
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v69, 1, v69
	v_cmp_o_f32_e64 s4, v62, v62
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v68, v63, v62
.Ltmp7:
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v74, 1, v73
	.loc	1 814 30                        ; attention.py:814:30
	ds_store_2addr_b32 v49, v61, v76 offset1:8
	ds_store_2addr_b32 v49, v77, v72 offset0:16 offset1:24
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v69, v63, v69, 0x7fff
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v74, v62, v74, 0x7fff
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v62, 0, v71, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v74.h, 0x7fff, v74.h, s4
	v_cmp_o_f32_e64 s4, v63, v63
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v63, 0, v70, s1
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v73.l, v62.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v74.l, 0x7fff, v69.h, s4
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v69, v63, v62 :: v_dual_and_b32 v70, 1, v73
.Ltmp9:
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s4, v62, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v68, v68, v69
.Ltmp11:
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v69.l, v63.h
	v_mov_b16_e32 v69.h, v73.h
	v_add3_u32 v70, v62, v70, 0x7fff
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v62, 0, v66, s1
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v69, 1, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s4
	v_cmp_o_f32_e64 s4, v63, v63
	v_mov_b16_e32 v73.l, v62.h
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v2, v2, v60
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v69, v63, v69, 0x7fff
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v63, 0, v67, s1
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v67.h, v73.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s4
	v_mov_b16_e32 v67.l, v63.h
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v4, v4, v60 :: v_dual_and_b32 v69, 1, v73
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s4, v62, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v66, v63, v62 :: v_dual_and_b32 v67, 1, v67
.Ltmp13:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v69, v62, v69, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v67, v63, v67, 0x7fff
	v_cndmask_b16 v69.h, 0x7fff, v69.h, s4
	v_cmp_o_f32_e64 s4, v63, v63
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v63, 0, v65, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v69.l, 0x7fff, v67.h, s4
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v62, v64, v63
.Ltmp15:
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v73.l, v63.h
	v_cmp_o_f32_e64 s1, v63, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v62, v66, v62
.Ltmp17:
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v66, 1, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v62, v68, v62
.Ltmp19:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v66, v63, v66, 0x7fff
	v_permlanex16_b32 v68, v69, s39, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp20:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_permlanex16_b32 v65, v62, s39, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v71.h, 0x7fff, v66.h, s1
	v_cmp_o_f32_e64 s1, v64, v64
	v_permlanex16_b32 v66, v70, s39, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v68, v69, v54
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v62, v62, v65
.Ltmp23:
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v65.l, v64.h
	v_mov_b16_e32 v65.h, v73.h
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v6, v6, v60
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v68, v68, v69, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 817 23                        ; attention.py:817:23
	v_dual_fmac_f32 v62, v59, v60 :: v_dual_and_b32 v65, 1, v65
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v65, v64, v65, 0x7fff
	v_permlanex16_b32 v64, v74, s39, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v71.l, 0x7fff, v65.h, s1
	v_perm_b32 v63, v64, v74, v54
	v_perm_b32 v64, v64, v74, v55
	v_perm_b32 v65, v66, v70, v54
	v_perm_b32 v66, v66, v70, v55
	v_permlanex16_b32 v73, v71, s39, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v69, v73, v71, v54
	v_perm_b32 v70, v73, v71, v55
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_b128 v[71:74], v50
	ds_load_b128 v[75:78], v51
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[71:78], v[63:70], v[1:8]
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v52, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v62, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 825 26 is_stmt 1              ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v31
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s34, s34, s3
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s0, s15, 2
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s33, s34
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s2, exec_lo
	.loc	1 825 17                        ; attention.py:825:17
	v_dual_cndmask_b32 v9, 0xff800000, v52 :: v_dual_cndmask_b32 v2, 0, v2
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v15, 0, v7 :: v_dual_mov_b32 v10, v9
	.loc	1 828 36                        ; attention.py:828:36
	v_cndmask_b32_e32 v11, 0, v62, vcc_lo
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v12, 0, v4
.Ltmp25:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v13, 0, v5 :: v_dual_cndmask_b32 v16, 0, v8
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_mov_b32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp28:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v17, v13 :: v_dual_mov_b32 v20, v16
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v4, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp30:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v7, v2 :: v_dual_mov_b32 v8, v3
.Ltmp31:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v5, v11
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v4, v9, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v9, v4 :: v_dual_add_f32 v2, v2, v7
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v5, v11, v5
.Ltmp40:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v3, v3, v8
.Ltmp41:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v8, v2 :: v_dual_add_f32 v1, v1, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp43:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v10, v3 :: v_dual_mov_b32 v11, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp47:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v2, v2, v8 :: v_dual_mov_b32 v7, v1
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v4, v4, v9 :: v_dual_add_f32 v5, v5, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v3, v3, v10
	v_add_f32_e32 v11, v12, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v6, v4
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v12, v13, v17
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp55:
	.loc	1 822 30                        ; attention.py:822:30
	s_mul_i32 s0, s1, s0
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v7, v5
.Ltmp59:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
	v_mov_b32_e32 v8, v1
.Ltmp60:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp62:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp63:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v7, v5, v7
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v9, v2
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v5, v3, v10
	v_add_f32_e32 v1, v1, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v13, v14, v18 :: v_dual_mov_b32 v8, v7
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v18, v13
.Ltmp67:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp68:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v2, v2, v9 :: v_dual_max_f32 v9, v4, v6
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v6, v5
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v4, v2 :: v_dual_mov_b32 v3, v1
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v10, v9
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v14, v15, v19 :: v_dual_add_f32 v15, v16, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v15
	v_dual_mov_b32 v16, v11 :: v_dual_mov_b32 v19, v14
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v13, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v14, v14, v19
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v16, v15, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v18, v13 :: v_dual_mov_b32 v15, v11
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v19, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v20, v16
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v13, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v11, v11, v15
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v17, v12
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v15, v14, v19 :: v_dual_mov_b32 v18, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v14, v11
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v12, v12, v17
	v_add_f32_e32 v17, v16, v20
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v16, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp89:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v8, v7, v8
.Ltmp91:
	.loc	1 833 13                        ; attention.py:833:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp92:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v7, v9, v10
.Ltmp93:
	.loc	1 833 13                        ; attention.py:833:13
	v_mov_b32_e32 v9, 0
	s_add_u32 s4, s12, s4
	s_addc_u32 s5, s13, s5
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp94:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v13, v5, v6 :: v_dual_add_f32 v12, v2, v4
.Ltmp95:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v5, 0xc0, v27
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v11, v1, v3 :: v_dual_and_b32 v2, 32, v30
.Ltmp97:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v1, 28, v28
	v_lshl_add_u32 v4, v29, 1, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_nc_u32 v3, 0, v5
	v_add_f32_e32 v9, v15, v19
.Ltmp99:
	.loc	1 572 22                        ; attention.py:572:22
	v_and_b32_e32 v5, 63, v0
	.loc	1 835 13                        ; attention.py:835:13
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v1, v3, v2, v1
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
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s14, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[12:15], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_endpgm
.Ltmp100:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 84
		.amdhsa_next_free_sgpr 45
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
		.amdhsa_inst_pref_size 38
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_vgpr, 84
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4836
; TotalNumSgprs: 47
; NumVgprs: 84
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 10
; NumSGPRsForWavesPerEU: 47
; NumVGPRsForWavesPerEU: 84
; Occupancy: 16
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
	.short	765                             ; DW_AT_call_line
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
	.short	769                             ; DW_AT_call_line
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
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
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
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
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
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     84
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
