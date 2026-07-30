	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b32 s35, s[0:1], 0x64
	s_load_b64 s[18:19], s[0:1], 0x7c
	s_load_b32 s48, s[0:1], 0x5c
.Ltmp0:
	.loc	1 559 27 prologue_end           ; attention.py:559:27
	s_abs_i32 s6, s2
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v2, 7, v0
	v_lshrrev_b32_e32 v40, 3, v0
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_load_b32 s28, s[0:1], 0x84
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v36, 2, v0
	.loc	1 609 32                        ; attention.py:609:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s12, s35
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s12
	s_sub_i32 s5, 0, s12
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s4, v1
	.loc	1 584 86                        ; attention.py:584:86
	v_lshlrev_b32_e32 v1, 2, v2
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s4
	s_mul_hi_u32 s5, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s13, s4, s5
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s5, s2, s35
	s_mul_hi_u32 s4, s6, s13
	s_ashr_i32 s5, s5, 31
	s_mul_i32 s7, s4, s12
	s_sub_i32 s6, s6, s7
	s_add_i32 s7, s4, 1
	s_sub_i32 s8, s6, s12
	s_cmp_ge_u32 s6, s12
	s_cselect_b32 s4, s7, s4
	s_cselect_b32 s6, s8, s6
	s_add_i32 s7, s4, 1
	s_cmp_ge_u32 s6, s12
	s_load_b64 s[8:9], s[0:1], 0x0
	s_cselect_b32 s4, s7, s4
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[18:19], null, s48, v40, v[1:2]
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s4, s4, s5
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s7, s48, v1
	.loc	1 559 27                        ; attention.py:559:27
	s_sub_i32 s14, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s5, s14, 4
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s14, s14, s35
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v3, s5, v40
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s6, s5, s3
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s34, s2, s14
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[4:5], null, s6, s48, v[18:19]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s4, 1, v3
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s7, s4
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v1, 0x80000000, v4, vcc_lo
	buffer_load_b32 v4, v1, s[8:11], 0 offen
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s9, s35, 0x7f
	.loc	1 585 26                        ; attention.py:585:26
	v_and_b32_e32 v1, 0x60, v0
	.loc	1 609 32 is_stmt 1              ; attention.py:609:32
	s_xor_b32 s10, s9, s35
	s_abs_i32 s9, s9
	s_ashr_i32 s10, s10, 31
	s_mul_hi_u32 s11, s9, s13
	.loc	1 585 26                        ; attention.py:585:26
	v_lshrrev_b32_e32 v5, 2, v1
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_i32 s13, s11, s12
	s_add_i32 s15, s11, 1
	s_sub_i32 s9, s9, s13
	v_lshrrev_b32_e32 v43, 3, v1
	s_sub_i32 s2, s9, s12
	s_cmp_ge_u32 s9, s12
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v5, v36, v5
	.loc	1 609 32                        ; attention.py:609:32
	s_cselect_b32 s11, s15, s11
	s_cselect_b32 s2, s2, s9
	s_add_i32 s9, s11, 1
	s_cmp_ge_u32 s2, s12
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v42, 0, v5
	.loc	1 609 32                        ; attention.py:609:32
	s_cselect_b32 s2, s9, s11
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s11, s19, s28
	.loc	1 609 32                        ; attention.py:609:32
	s_xor_b32 s2, s2, s10
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s11, s11, s5
	.loc	1 609 32                        ; attention.py:609:32
	s_sub_i32 s2, s2, s10
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s11, s11, 16
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s9, s28, s18
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s10, s11, 0x800
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s9, s9, s5
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s10, s10, 15
	.loc	1 610 18                        ; attention.py:610:18
	s_mul_i32 s11, s34, s2
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
	s_max_i32 s49, s11, s9
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s50, s2, s10
	s_mov_b32 s8, 0
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s49, s50
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v42, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_lshrrev_b32_e32 v9, 3, v1
	s_branch .LBB0_3
.Ltmp2:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr9
.LBB0_3:                                ; %Flow65
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x40
	s_load_b32 s33, s[0:1], 0x60
	v_and_b32_e32 v39, 31, v0
	v_and_b32_e32 v41, 15, v0
	v_and_b32_e32 v37, 0x70, v0
	v_lshlrev_b32_e32 v38, 5, v0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x8
	.loc	1 570 21 is_stmt 1              ; attention.py:570:21
	v_or_b32_e32 v4, s5, v41
	.loc	1 590 31                        ; attention.py:590:31
	v_add_lshl_u32 v5, s6, v41, 1
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x28
	s_load_b128 s[44:47], s[0:1], 0x68
	.loc	1 592 22                        ; attention.py:592:22
	v_cmp_gt_i32_e32 vcc_lo, 1, v4
	.loc	1 570 31                        ; attention.py:570:31
	v_bfe_i32 v6, v0, 4, 1
	v_lshlrev_b32_e32 v12, 2, v39
	v_dual_mov_b32 v9, 0 :: v_dual_lshlrev_b32 v8, 4, v0
	.loc	1 590 31                        ; attention.py:590:31
	v_dual_cndmask_b32 v4, 0x80000000, v5 :: v_dual_lshlrev_b32 v19, 1, v2
	v_dual_mov_b32 v21, 0x7632 :: v_dual_add_nc_u32 v2, s28, v3
	v_dual_mov_b32 v94, 0xff800000 :: v_dual_and_b32 v3, 12, v0
	v_dual_mov_b32 v95, 0xff800000 :: v_dual_and_b32 v14, 28, v0
	v_lshrrev_b32_e32 v15, 5, v1
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s20, s12
	v_bfe_i32 v7, v0, 6, 1
	buffer_load_u16 v10, v4, s[20:23], 0 offen
	v_xor_b32_e32 v44, v36, v43
	v_lshlrev_b32_e32 v26, 4, v1
	v_dual_mov_b32 v1, 0 :: v_dual_lshlrev_b32 v28, 1, v3
	v_bfe_i32 v24, v0, 0, 1
	v_bfe_i32 v27, v0, 2, 1
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v5, 16, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v3, v1 :: v_dual_lshlrev_b32 v22, 7, v0
	.loc	1 771 51                        ; attention.py:771:51
	v_lshrrev_b32_e32 v4, 4, v37
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	v_and_b32_e32 v13, 0x60, v38
	v_bfe_u32 v16, v0, 2, 2
	v_lshrrev_b32_e32 v31, 1, v14
	v_or_b32_e32 v49, v15, v12
	v_dual_mov_b32 v98, v1 :: v_dual_and_b32 v29, 0x84, v7
	v_lshl_or_b32 v50, v39, 5, v14
	v_xor_b32_e32 v14, 0x210, v44
	v_mov_b32_e32 v7, v1
	.loc	1 585 26                        ; attention.py:585:26
	v_lshl_or_b32 v28, v41, 5, v28
	v_lshrrev_b32_e32 v23, 2, v37
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s0, s0, 29
	v_and_b32_e32 v25, 0x160, v38
	s_add_i32 s1, s3, s0
	.loc	1 748 47                        ; attention.py:748:47
	v_subrev_nc_u32_e32 v46, s18, v2
	.loc	1 749 47                        ; attention.py:749:47
	v_add_nc_u32_e32 v47, s19, v2
	v_mov_b32_e32 v2, v1
	v_cmp_eq_u32_e64 s0, 0, v5
	v_lshl_or_b32 v51, s3, 10, v4
	v_mov_b32_e32 v4, v1
	v_add_nc_u32_e32 v62, 0, v14
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v14, 8, v28
	v_dual_mov_b32 v17, 0x5410 :: v_dual_lshlrev_b32 v20, 2, v41
	v_mov_b32_e32 v5, v1
	v_cndmask_b32_e64 v21, 0x3276, v21, s0
	v_xor_b32_e32 v12, v29, v12
	v_xor_b32_e32 v29, 0x84, v49
	v_add_nc_u32_e32 v73, 0, v14
	v_cndmask_b32_e64 v17, 0x1054, v17, s0
	v_lshl_or_b32 v34, v21, 8, v21
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v11, 4, v0
	v_add_nc_u32_e32 v64, 0, v29
	.loc	1 710 32                        ; attention.py:710:32
	s_lshl_b32 s51, s3, 11
	v_lshl_or_b32 v17, v17, 8, v17
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s2, s1, -8
	v_and_or_b32 v48, v11, 1, s51
	v_and_or_b32 v11, v11, 2, v12
	v_xor_b32_e32 v32, 24, v50
	v_and_b32_e32 v17, 0x540054, v17
	v_xor_b32_e32 v33, 28, v50
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s1, s1, 3
	v_add_nc_u32_e32 v76, 0, v11
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s2, s3, s2
	v_lshl_or_b32 v14, v17, 4, v17
	.loc	1 742 27                        ; attention.py:742:27
	s_mul_f32 s18, s44, 0x3fb8aa3b
	.loc	1 754 27                        ; attention.py:754:27
	s_mul_i32 s0, s46, s2
	.loc	1 753 27                        ; attention.py:753:27
	s_mul_i32 s1, s45, s1
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v45, 1, v19
	v_or_b32_e32 v52, 2, v48
	v_or_b32_e32 v53, 4, v48
	v_or_b32_e32 v54, 6, v48
	v_or_b32_e32 v55, 8, v48
	v_or_b32_e32 v56, 10, v48
	v_or_b32_e32 v57, 12, v48
	v_or_b32_e32 v58, 14, v48
	v_add_nc_u32_e32 v70, 0, v32
	v_add_nc_u32_e32 v71, 0, v33
	v_and_b32_e32 v83, 0x5040504, v14
	.loc	1 752 25                        ; attention.py:752:25
	s_mul_i32 s5, s5, s47
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s27, s27, 0xffff
	s_mov_b32 s28, s14
	s_add_i32 s14, s0, s1
	.loc	1 794 21                        ; attention.py:794:21
	s_lshl_b32 s52, s3, 7
	s_mov_b32 s53, 0x76543210
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	s_mov_b32 s38, s22
	s_mov_b32 s39, s23
	s_mov_b32 s42, s22
	s_and_b32 s41, s11, 0xffff
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s36, s26
	s_mov_b32 s40, s10
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s29, s15
	s_mov_b32 s37, s27
	s_add_i32 s14, s14, s5
	.loc	1 742 17                        ; attention.py:742:17
	s_mov_b32 s15, s18
	s_mov_b32 s19, s18
	s_mov_b32 s44, s18
	s_mov_b32 s45, s18
	s_mov_b32 s46, s18
	s_mov_b32 s54, s18
	s_mov_b32 s43, s23
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e32 vcc_lo, s33, v20
	v_mov_b32_e32 v96, 0xff800000
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v82, 16, v10
	v_and_b32_e32 v30, 0x180, v8
	v_and_b32_e32 v15, 0x84, v6
	v_and_b32_e32 v24, 0x90, v24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mov_b32 v90, v82 :: v_dual_and_b32 v27, 0x90, v27
	v_dual_mov_b32 v89, v82 :: v_dual_and_b32 v22, 0x700, v22
	v_mov_b32_e32 v87, v82
	v_or3_b32 v59, v30, v31, v13
	v_mov_b32_e32 v88, v82
	v_or3_b32 v60, v16, v15, v13
	v_mov_b32_e32 v91, v82
	v_xor_b32_e32 v23, v24, v23
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v24, 16, v28
	v_mov_b32_e32 v6, v1
	v_or3_b32 v61, v25, v26, v27
	v_xor_b32_e32 v25, 24, v28
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mov_b32 v93, v82 :: v_dual_add_nc_u32 v22, 0, v22
	v_dual_mov_b32 v92, v82 :: v_dual_add_nc_u32 v63, 0, v28
	v_xor_b32_e32 v26, 8, v59
	v_xor_b32_e32 v27, 12, v59
	v_xor_b32_e32 v28, 4, v60
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v74, 0, v24
	v_add_nc_u32_e32 v75, 0, v25
	v_add_nc_u32_e32 v72, v22, v23
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[21:22], null, s47, v40, v[19:20]
	v_add_nc_u32_e32 v78, 0, v26
	v_add_nc_u32_e32 v79, 0, v27
	v_add_nc_u32_e32 v80, 0, v28
	.loc	1 585 26                        ; attention.py:585:26
	ds_load_b64 v[22:23], v63
	ds_load_b64 v[24:25], v73
	ds_load_b64 v[26:27], v74
	ds_load_b64 v[28:29], v75
	v_xor_b32_e32 v15, 8, v50
	v_xor_b32_e32 v13, 4, v50
	v_xor_b32_e32 v16, 12, v50
	v_xor_b32_e32 v30, 16, v50
	v_xor_b32_e32 v31, 20, v50
	v_add_nc_u32_e32 v66, 0, v15
	v_and_b32_e32 v15, 0x760076, v34
	v_xor_b32_e32 v12, 4, v59
	v_xor_b32_e32 v35, 16, v61
	v_add_nc_u32_e32 v65, 0, v13
	v_xor_b32_e32 v13, 0x108, v11
	v_lshl_or_b32 v11, v15, 4, v15
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v67, 0, v16
	v_add_nc_u32_e32 v68, 0, v30
	v_add_nc_u32_e32 v69, 0, v31
	v_add_nc_u32_e32 v77, 0, v12
	v_add_nc_u32_e32 v81, 0, v35
	v_add_nc_u32_e32 v84, 0, v13
	.loc	1 707 13                        ; attention.py:707:13
	v_add_nc_u32_e32 v85, 1, v21
	v_and_b32_e32 v86, 0x7060706, v11
	.loc	1 742 17                        ; attention.py:742:17
	s_mov_b32 s47, s18
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 711 32                        ; attention.py:711:32
	s_add_i32 s0, s49, s51
	.loc	1 717 33                        ; attention.py:717:33
	v_mov_b32_e32 v16, v9
	.loc	1 711 32                        ; attention.py:711:32
	v_mad_u64_u32 v[30:31], null, s0, s48, v[18:19]
	.loc	1 717 33                        ; attention.py:717:33
	v_dual_mov_b32 v10, v9 :: v_dual_add_nc_u32 v101, 0, v59
	v_dual_mov_b32 v11, v9 :: v_dual_add_nc_u32 v100, 0, v49
	v_dual_mov_b32 v12, v9 :: v_dual_add_nc_u32 v99, 0, v60
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 712 32                        ; attention.py:712:32
	v_cndmask_b32_e64 v30, 0x80000000, v30, s7
	.loc	1 717 33                        ; attention.py:717:33
	v_dual_mov_b32 v14, v9 :: v_dual_add_nc_u32 v115, 0, v50
	v_mov_b32_e32 v15, v9
	.loc	1 771 36                        ; attention.py:771:36
	s_lshr_b32 s8, s49, 1
	.loc	1 712 32                        ; attention.py:712:32
	buffer_load_b32 v30, v30, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 717 33                        ; attention.py:717:33
	v_mov_b32_e32 v13, v9
	v_mov_b32_e32 v17, v16
	v_mov_b32_e32 v16, v15
	v_mov_b32_e32 v15, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v14, v13
	v_dual_mov_b32 v13, v12 :: v_dual_add_nc_u32 v116, 0, v44
	v_mov_b32_e32 v12, v11
	v_mov_b32_e32 v11, v10
	v_mov_b32_e32 v10, v9
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v113, s49, v45
	v_or_b32_e32 v112, s49, v19
	.loc	1 752 25                        ; attention.py:752:25
	s_add_i32 s2, s14, s49
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v102, v58, s49, 1
	v_add_lshl_u32 v103, v57, s49, 1
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s5, v113, v46
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s6, v113, v47
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s0, v112, v46
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s1, v112, v47
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v104, v56, s49, 1
	v_add_lshl_u32 v105, v55, s49, 1
	v_add_lshl_u32 v106, v54, s49, 1
	v_add_lshl_u32 v107, v53, s49, 1
	.loc	1 749 21                        ; attention.py:749:21
	s_and_b32 s0, s0, s1
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v109, v52, s49, 1
	.loc	1 749 21                        ; attention.py:749:21
	s_and_b32 s0, s4, s0
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v108, s49, v48, 1
	.loc	1 775 32                        ; attention.py:775:32
	v_mov_b16_e32 v97.l, 0
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s13, 0xff800000, v94
	.loc	1 763 25                        ; attention.py:763:25
	.loc	1 787 39                        ; attention.py:787:39
	.loc	1 712 32                        ; attention.py:712:32
	s_waitcnt vmcnt(0)
	ds_store_b32 v42, v30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[110:111], v63
	ds_load_b64 v[30:31], v73
	ds_load_b64 v[32:33], v74
	ds_load_b64 v[34:35], v75
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[10:17], v[110:111], v[22:23], v[10:17] neg_lo:[1,1,0]
	.loc	1 761 36                        ; attention.py:761:36
	v_add_lshl_u32 v111, s2, v85, 1
	v_add_lshl_u32 v110, s2, v21, 1
	.loc	1 749 21                        ; attention.py:749:21
	s_and_b32 s2, s5, s6
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[10:17], v[30:31], v[24:25], v[10:17] neg_lo:[1,1,0]
	.loc	1 749 21                        ; attention.py:749:21
	s_and_b32 s1, s4, s2
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[10:17], v[32:33], v[26:27], v[10:17] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[10:17], v[34:35], v[28:29], v[10:17] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v34, v11
	.loc	1 761 36                        ; attention.py:761:36
	v_cndmask_b32_e64 v11, 0x80000000, v111, s1
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v33, v12
	.loc	1 761 36                        ; attention.py:761:36
	v_cndmask_b32_e64 v12, 0x80000000, v110, s0
	s_clause 0x1
	buffer_load_u16 v11, v11, s[36:39], 0 offen
	buffer_load_u16 v12, v12, s[36:39], 0 offen
	.loc	1 727 37                        ; attention.py:727:37
	s_clause 0x7
	buffer_load_u16 v30, v102, s[28:31], 0 offen
	buffer_load_u16 v31, v103, s[28:31], 0 offen
	buffer_load_u16 v102, v104, s[28:31], 0 offen
	buffer_load_u16 v103, v105, s[28:31], 0 offen
	buffer_load_u16 v104, v106, s[28:31], 0 offen
	buffer_load_u16 v105, v107, s[28:31], 0 offen
	buffer_load_u16 v106, v109, s[28:31], 0 offen
	buffer_load_u16 v107, v108, s[28:31], 0 offen
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v35, v10
	.loc	1 761 36                        ; attention.py:761:36
	v_mov_b16_e32 v10.l, v97.l
	.loc	1 762 35                        ; attention.py:762:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v32, v13
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v14, v14
	v_dual_mul_f32 v34, v87, v34 :: v_dual_mul_f32 v35, v82, v35
	.loc	1 761 36                        ; attention.py:761:36
	s_waitcnt vmcnt(9)
	v_cndmask_b16 v10.h, 0xff80, v11.l, s1
	s_waitcnt vmcnt(8)
	v_cndmask_b16 v97.h, 0xff80, v12.l, s0
	.loc	1 762 35                        ; attention.py:762:35
	ds_store_b16_d16_hi v84, v10
	ds_store_b16_d16_hi v76, v97
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v97
	v_cmp_neq_f32_e64 s5, 0xff800000, v10
	.loc	1 762 35                        ; attention.py:762:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v108, v101
	.loc	1 761 36                        ; attention.py:761:36
	ds_load_u16 v101, v101 offset:16
	ds_load_u16 v109, v79 offset:16
	ds_load_u16 v110, v78 offset:16
	ds_load_u16 v111, v77 offset:16
	.loc	1 762 35                        ; attention.py:762:35
	ds_load_u16 v112, v79
	ds_load_u16 v113, v78
	ds_load_u16 v114, v77
	.loc	1 763 25                        ; attention.py:763:25
	s_and_b32 s0, s0, s2
	s_and_b32 s1, s1, s5
	v_cndmask_b32_e64 v10, 0, 1, s0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v11, 0, 1, s1
	.loc	1 798 53                        ; attention.py:798:53
	s_lshr_b32 s2, s49, 4
	.loc	1 763 25                        ; attention.py:763:25
	ds_store_b8 v100, v10
	.loc	1 774 30                        ; attention.py:774:30
	v_add_nc_u32_e32 v10, s8, v51
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s9, s2, s52
	.loc	1 763 25                        ; attention.py:763:25
	ds_store_b8 v64, v11
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 774 30                        ; attention.py:774:30
	v_mad_u64_u32 v[12:13], null, v10, s33, v[20:21]
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v10, v93, v17 :: v_dual_max_f32 v13, v95, v95
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v95.h, v97.l
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s9, s9, s33
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s49, s49, 16
	.loc	1 761 36                        ; attention.py:761:36
	v_lshlrev_b32_e32 v11, 16, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e32 v100, 0x80000000, v12, vcc_lo
	.loc	1 727 37                        ; attention.py:727:37
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v12, 16, v30
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s49, s50
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v17, v10, v12
	v_mul_f32_e32 v10, v92, v16
	.loc	1 727 37                        ; attention.py:727:37
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v12, 16, v31
	v_mov_b32_e32 v31, v96
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v96.h, v97.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v16, v10, v12
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v10, v91, v15 :: v_dual_lshlrev_b32 v15, 16, v102
	v_dual_mul_f32 v15, v10, v15 :: v_dual_add_nc_u32 v12, 0, v61
	v_mul_f32_e32 v10, v90, v14
	.loc	1 727 37                        ; attention.py:727:37
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v14, 16, v103
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v30, v98 :: v_dual_lshlrev_b32 v103, 16, v107
	v_lshlrev_b32_e32 v102, 16, v106
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v98.h, v97.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v35, v35, v103 :: v_dual_mul_f32 v14, v10, v14
	v_mul_f32_e32 v10, v89, v32
	.loc	1 727 37                        ; attention.py:727:37
	v_lshlrev_b32_e32 v32, 16, v104
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v103.h, v97.l
	v_mov_b16_e32 v104.h, v97.l
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v32, v10, v32
	v_mul_f32_e32 v10, v88, v33
	.loc	1 727 37                        ; attention.py:727:37
	v_lshlrev_b32_e32 v33, 16, v105
	.loc	1 762 35                        ; attention.py:762:35
	v_mul_f32_e32 v105, 0x3fb8aa3b, v11
	.loc	1 761 36                        ; attention.py:761:36
	v_lshlrev_b32_e32 v11, 16, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 762 25                        ; attention.py:762:25
	v_fmac_f32_e32 v105, s18, v35
	.loc	1 762 35 is_stmt 0              ; attention.py:762:35
	v_dual_mul_f32 v106, 0x3fb8aa3b, v11 :: v_dual_lshlrev_b32 v11, 16, v113
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_mov_b16_e32 v35.h, v97.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 762 35                        ; attention.py:762:35
	v_mul_f32_e32 v107, 0x3fb8aa3b, v11
	.loc	1 761 36                        ; attention.py:761:36
	v_lshlrev_b32_e32 v11, 16, v112
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v108, 0x3fb8aa3b, v11 :: v_dual_lshlrev_b32 v11, 16, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 762 25 is_stmt 0              ; attention.py:762:25
	v_fmac_f32_e32 v108, s44, v32
	.loc	1 762 35                        ; attention.py:762:35
	v_mul_f32_e32 v32, 0x3fb8aa3b, v11
	.loc	1 763 25 is_stmt 1              ; attention.py:763:25
	ds_load_u8_d16_hi v11, v80
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16 v11, v99 offset:24
	.loc	1 762 25                        ; attention.py:762:25
	v_fmac_f32_e32 v32, s45, v14
	.loc	1 761 36                        ; attention.py:761:36
	v_lshlrev_b32_e32 v14, 16, v111
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v10, v10, v33
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v33.h, v97.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 762 35                        ; attention.py:762:35
	v_mul_f32_e32 v101, 0x3fb8aa3b, v14
	.loc	1 762 25 is_stmt 0              ; attention.py:762:25
	v_fmac_f32_e32 v107, s19, v10
	.loc	1 763 25 is_stmt 1              ; attention.py:763:25
	ds_load_u8_d16 v10, v99 offset:8
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v10, v99 offset:16
	.loc	1 762 25                        ; attention.py:762:25
	v_dual_fmac_f32 v101, s46, v15 :: v_dual_lshlrev_b32 v14, 16, v110
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v34, v34, v102
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v102.h, v97.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 762 35                        ; attention.py:762:35
	v_mul_f32_e32 v15, 0x3fb8aa3b, v14
	.loc	1 763 25                        ; attention.py:763:25
	ds_load_u8_d16 v14, v80 offset:24
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v14, v80 offset:8
	.loc	1 762 25                        ; attention.py:762:25
	v_fmac_f32_e32 v15, s47, v16
	.loc	1 763 25                        ; attention.py:763:25
	v_and_b16 v10.l, 1, v10.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s2, 1, v10.l
	v_and_b16 v10.l, 1, v10.h
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v107, 0xff800000, v107, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 763 25                        ; attention.py:763:25
	v_cmp_eq_u16_e64 s5, 1, v10.l
	ds_load_u8_d16 v10, v80 offset:16
	s_waitcnt lgkmcnt(0)
	v_and_b16 v10.l, 1, v10.l
	v_cmp_eq_u16_e64 s6, 1, v10.l
	v_and_b16 v10.l, 1, v14.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s8, 1, v10.l
	.loc	1 797 41                        ; attention.py:797:41
	v_add_lshl_u32 v10, s9, v20, 1
	v_cndmask_b32_e32 v110, 0x80000000, v10, vcc_lo
	.loc	1 763 25                        ; attention.py:763:25
	ds_load_u8_d16 v10, v99
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v99, 0xff800000, v101, s6
	.loc	1 761 36                        ; attention.py:761:36
	v_lshlrev_b32_e32 v16, 16, v109
	.loc	1 763 25                        ; attention.py:763:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v10.h, 1, v11.l
	v_and_b16 v11.l, 1, v11.h
	v_and_b16 v11.h, 1, v14.h
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v109, v31, v31 :: v_dual_mul_f32 v16, 0x3fb8aa3b, v16
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v101, 0xff800000, v32, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 763 25                        ; attention.py:763:25
	v_cmp_eq_u16_e64 s9, 1, v11.l
	v_cmp_eq_u16_e64 s11, 1, v11.h
	v_cmp_eq_u16_e64 s12, 1, v10.h
	.loc	1 762 25                        ; attention.py:762:25
	v_fmac_f32_e32 v16, s54, v17
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v11, 0xff800000, v108, s11
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v17.h, v97.l
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v16, 0xff800000, v16, s8
	.loc	1 763 25                        ; attention.py:763:25
	v_and_b16 v10.l, 1, v10.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v108, v11, v101, v99
.Ltmp4:
	.loc	1 763 25                        ; attention.py:763:25
	v_cmp_eq_u16_e64 s10, 1, v10.l
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v10, 0xff800000, v15, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v105, 0xff800000, v105, s10
	.loc	1 762 25                        ; attention.py:762:25
	v_fmac_f32_e32 v106, s15, v34
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v34.h, v97.l
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v106, 0xff800000, v106, s9
	ds_store_b32 v115, v105
	ds_store_b32 v65, v106
	ds_store_b32 v66, v107
	ds_store_b32 v67, v11
	ds_store_b32 v68, v101
	ds_store_b32 v69, v99
	ds_store_b32 v70, v10
	ds_store_b32 v71, v16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 775 32                        ; attention.py:775:32
	buffer_load_b32 v100, v100, s[40:43], 0 offen
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_b64 v[14:15], v110, s[24:27], 0 offen
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v32, v105, v106, v107
	v_max_f32_e32 v110, v10, v16
.Ltmp6:
	.loc	1 764 26                        ; attention.py:764:26
	ds_load_b32 v111, v116
	ds_load_b32 v112, v62
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v32, v32, v108, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v108, v32, s53, 0xfedcba98 op_sel:[1,0]
.Ltmp9:
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v32, v94, v32, v108
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v10, v10, v32
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v110, v111, v111
.Ltmp11:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v11, v11, v32
	v_sub_f32_e32 v99, v99, v32
	v_sub_f32_e32 v101, v101, v32
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v10, v10
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v107, v107, v32
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v11, v11
	v_exp_f32_e32 v99, v99
	v_exp_f32_e32 v101, v101
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v105, v105, v32
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v107, v107
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v16, v16, v32
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v10, 0, v10, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v105, v105
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v11, 0, v11, s11
	v_cndmask_b32_e64 v99, 0, v99, s6
	v_cndmask_b32_e64 v101, 0, v101, s5
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_mov_b16_e32 v35.l, v10.h
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v108, v112, v112
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp13:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v107, 0, v107, s2
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v98.l, v11.h
	v_mov_b16_e32 v102.l, v99.h
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v108, v110, v108 :: v_dual_and_b32 v35, 1, v35
.Ltmp15:
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v110, v94, v32
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v103.l, v101.h
	v_mov_b16_e32 v33.l, v107.h
	v_and_b32_e32 v98, 1, v98
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v94, v108
.Ltmp17:
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v110, v110
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v103, 1, v103
	v_and_b32_e32 v33, 1, v33
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v16, v16
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v105, 0, v105, s10
.Ltmp18:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v94, v94 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp19:
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s6, v11, v11
	v_cmp_o_f32_e64 s10, v101, v101
	v_add3_u32 v11, v11, v98, 0x7fff
	v_add3_u32 v33, v107, v33, 0x7fff
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v110, 0, v110, s13
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v106, v106, v32
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s12, v10, v10
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v16, 0, v16, s8
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v10, v10, v35, 0x7fff
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v7, v7, v110
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v106, v106
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s8, v107, v107
	v_mov_b16_e32 v104.l, v16.h
	v_cmp_o_f32_e64 s11, v16, v16
	v_mov_b16_e32 v96.l, v105.h
	v_cmp_o_f32_e64 s5, v105, v105
	v_cndmask_b16 v107.l, 0x7fff, v33.h, s8
	v_and_b32_e32 v104, 1, v104
	v_cndmask_b16 v107.h, 0x7fff, v11.h, s6
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v8, v8, v110
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v106, 0, v106, s9
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s9, v99, v99
	v_add3_u32 v16, v16, v104, 0x7fff
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v1, v1, v110
	v_mul_f32_e32 v3, v3, v110
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v95.l, v106.h
	v_cmp_o_f32_e64 s2, v106, v106
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v5, v5, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v95, 1, v95
	v_add3_u32 v95, v106, v95, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v95.h, 0x7fff, v95.h, s2
	.loc	1 775 32                        ; attention.py:775:32
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v17.l, v100.h
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v97.h, v14.l
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v102, 1, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v104, v17, 0, 8
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v98, v99, v102, 0x7fff
	v_add3_u32 v99, v101, v103, 0x7fff
	v_cndmask_b16 v98.l, 0x7fff, v10.h, s12
	.loc	1 797 41                        ; attention.py:797:41
	v_and_b32_e32 v101, 0xffff0000, v15
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b32_e32 v102, 24, v100
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v33.h, 0x7fff, v98.h, s9
	v_cndmask_b16 v33.l, 0x7fff, v99.h, s10
	.loc	1 797 41                        ; attention.py:797:41
	v_and_b32_e32 v99, 0xffff0000, v14
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v94, v94, v94
.Ltmp21:
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v98.h, 0x7fff, v16.h, s11
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v14.l, v100.h, 15
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v103.h, v97.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v94, v108, v94
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v35, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v10, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max_f32_e32 v16, v94, v10
.Ltmp25:
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b32_e32 v94, 8, v100
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v94.h, v15.l
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_dual_mov_b32 v35, v16 :: v_dual_and_b32 v96, 1, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp27:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v96, v105, v96, 0x7fff
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp29:
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v95.l, 0x7fff, v96.h, s5
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp31:
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v11, v95, s53, 0xfedcba98 op_sel:[1,0]
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v16, v16, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp33:
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v10, v11, v95, v83
	v_perm_b32 v11, v11, v95, v86
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v95, v13, v16
	v_max_f32_e32 v96, v109, v16
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v109, v33, s53, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v13, v111, v95
	v_sub_f32_e32 v16, v112, v95
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v108, v107, s53, 0xfedcba98 op_sel:[1,0]
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v16, v16
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v13, 0, v13, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_dual_mul_f32 v2, v2, v110 :: v_dual_add_f32 v13, v13, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v16, v13
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v4, v4, v110 :: v_dual_add_f32 v13, v13, v16
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v16, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v6, v6, v110
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v110, v98, s53, 0xfedcba98 op_sel:[1,0]
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v35, v13, v16
.Ltmp39:
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v13.l, v100.l, 15
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v16, v100, 0, 8
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v13.h, 4, v100.l
	v_lshrrev_b32_e32 v100, 20, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s0, 7, v13.l
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v15.l, v16.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v13.h, v13.h, 15
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v16, v94, 0, 8
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v14.h, 0, -16, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s1, 0, v15.l
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s0, 7, v14.l
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v15.l, v16.l
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v16, v102, 0, 8
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v34.l, v13.l, v14.h
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v13.l, v13.h, -16
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v14.h, v100.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s5, 0, v16.l
	.loc	1 787 30 is_stmt 0              ; attention.py:787:30
	v_cndmask_b16 v103.l, v13.h, v13.l, s1
	.loc	1 783 76 is_stmt 1              ; attention.py:783:76
	v_and_b16 v13.l, v94.l, 15
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s1, 0, v15.l
	v_mov_b16_e32 v15.l, v104.l
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v13.h, 4, v94.l
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v105, v103, 0, 16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s2, 0, v15.l
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v15.l, 0, -16, s0
	.loc	1 786 38 is_stmt 0              ; attention.py:786:38
	v_cmp_lt_u16_e64 s0, 7, v13.l
	.loc	1 785 32 is_stmt 1              ; attention.py:785:32
	v_and_b16 v13.h, v13.h, 15
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v105, v105
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v17.l, v14.l, v15.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b16 v15.h, 0, -16, s0
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v14.l, v102.l, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v15.l, 4, v102.l
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v105, v97, v105
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v16.l, v13.l, v15.h
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v13.l, v13.h, -16
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s0, 7, v14.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v16, v16, 0, 16
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v94.l, v13.h, v13.l, s1
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b16 v13.l, v14.h, -16
	.loc	1 814 30 is_stmt 1              ; attention.py:814:30
	v_mov_b16_e32 v13.h, v97.l
	v_cmp_o_f32_e64 s1, v105, v105
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_cvt_f32_i32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 787 30 is_stmt 1              ; attention.py:787:30
	v_cndmask_b16 v100.l, v14.h, v13.l, s2
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v13.l, 0, -16, s0
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v14.h, v97.l
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v16, v99, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_bfe_i32 v100, v100, 0, 16
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_or_b16 v14.l, v14.l, v13.l
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v13.l, v15.l, -16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s6, v16, v16
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_cvt_f32_i32_e32 v100, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_bfe_i32 v104, v14, 0, 16
	.loc	1 787 30 is_stmt 1              ; attention.py:787:30
	v_cndmask_b16 v13.l, v15.l, v13.l, s5
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v15, v94, 0, 16
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v94.l, v97.l
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v14.l, v16.h
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_cvt_f32_i32_e32 v104, v104
	v_bfe_i32 v102, v13, 0, 16
	v_cvt_f32_i32_e32 v15, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 814 30                        ; attention.py:814:30
	v_and_b32_e32 v14, 1, v14
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v102, v102
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v15, v99, v15
	v_bfe_i32 v99, v17, 0, 16
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v17.l, v105.h
	v_add3_u32 v14, v16, v14, 0x7fff
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v102, v101, v102
	v_mul_f32_e32 v101, v101, v104
	v_bfe_i32 v104, v34, 0, 16
	v_cvt_f32_i32_e32 v99, v99
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v13.l, v15.h
	v_and_b32_e32 v17, 1, v17
	v_cmp_o_f32_e64 s5, v15, v15
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v104, v104
	v_mul_f32_e32 v99, v94, v99
	v_mul_f32_e32 v94, v94, v100
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v100.h, v97.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 814 31                        ; attention.py:814:31
	v_dual_mul_f32 v104, v97, v104 :: v_dual_and_b32 v13, 1, v13
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v100.l, v99.h
	v_mov_b16_e32 v97.h, v97.l
	v_mov_b16_e32 v103.l, v94.h
	v_cmp_o_f32_e64 s2, v99, v99
	v_mov_b16_e32 v34.l, v104.h
	v_cmp_o_f32_e64 s0, v104, v104
	v_and_b32_e32 v100, 1, v100
	v_and_b32_e32 v16, 1, v103
	v_add3_u32 v17, v105, v17, 0x7fff
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v13, v15, v13, 0x7fff
	v_add3_u32 v99, v99, v100, 0x7fff
	v_cmp_o_f32_e64 s8, v94, v94
	v_cmp_o_f32_e64 s9, v102, v102
	v_add3_u32 v34, v104, v34, 0x7fff
	v_mov_b16_e32 v104.h, v97.l
	v_mov_b16_e32 v104.l, v102.h
	v_mov_b16_e32 v97.l, v101.h
	v_cmp_o_f32_e64 s10, v101, v101
	v_cndmask_b16 v17.l, 0x7fff, v34.h, s0
	v_add3_u32 v16, v94, v16, 0x7fff
	v_and_b32_e32 v100, 1, v104
	v_and_b32_e32 v97, 1, v97
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s1
	v_cndmask_b16 v13.l, 0x7fff, v99.h, s2
	.loc	1 767 74 is_stmt 1              ; attention.py:767:74
	v_sub_f32_e32 v15, v31, v96
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v34, v102, v100, 0x7fff
	v_add3_u32 v94, v101, v97, 0x7fff
	v_cndmask_b16 v97.h, 0x7fff, v13.h, s5
	v_cndmask_b16 v97.l, 0x7fff, v14.h, s6
	v_cndmask_b16 v13.h, 0x7fff, v16.h, s8
	v_cndmask_b16 v14.h, 0x7fff, v34.h, s9
	v_cndmask_b16 v14.l, 0x7fff, v94.h, s10
	ds_store_2addr_b32 v72, v17, v97 offset1:8
	ds_store_2addr_b32 v72, v13, v14 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[99:102], v12
	ds_load_b128 v[103:106], v81
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v34, v15
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v94, v35
.Ltmp41:
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s0, 0xff800000, v31
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v12, v108, v107, v83
	v_perm_b32 v13, v108, v107, v86
	v_perm_b32 v14, v109, v33, v83
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v94, v94 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v15, v109, v33, v86
	v_perm_b32 v16, v110, v98, v83
	v_perm_b32 v17, v110, v98, v86
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v31, 0, v34, s0
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v98, v35, v94
	v_mov_b32_e32 v94, v32
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp45:
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v98, v30, v31
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[99:106], v[10:17], v[1:8]
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v9, v43
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v96, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v98, v8
.LBB0_8:                                ; %._crit_edge
	.loc	1 825 26 is_stmt 1              ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v40
	s_mov_b32 s1, 0x76543210
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp47:
	.loc	1 835 13                        ; attention.py:835:13
	v_lshrrev_b32_e32 v21, 5, v0
	.loc	1 825 17                        ; attention.py:825:17
	v_cndmask_b32_e32 v10, 0xff800000, v96, vcc_lo
	.loc	1 828 36                        ; attention.py:828:36
	v_cndmask_b32_e32 v12, 0, v98, vcc_lo
	.loc	1 830 26                        ; attention.py:830:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v41
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s35, s35, s3
	.loc	1 833 13                        ; attention.py:833:13
	v_or_b32_e32 v21, v21, v39
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_permlanex16_b32 v11, v10, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp49:
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s0, s33, 2
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_permlanex16_b32 v13, v12, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp51:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v2, 0, v2 :: v_dual_cndmask_b32 v3, 0, v3
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v12, v12, v13 :: v_dual_mov_b32 v13, v1
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v16, v2 :: v_dual_add_nc_u32 v9, 0, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v17, v3 :: v_dual_max_f32 v10, v10, v11
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_and_b32_e32 v11, 12, v36
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v14, v10 :: v_dual_add_nc_u32 v11, 0, v11
.Ltmp58:
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s34, s35
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s2, exec_lo
	.loc	1 822 30                        ; attention.py:822:30
	s_mul_i32 s0, s1, s0
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v15, v12
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v1, v1, v13 :: v_dual_add_f32 v2, v2, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v3, v3, v17 :: v_dual_max_f32 v14, v14, v14
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v13, 0, v5 :: v_dual_cndmask_b32 v8, 0, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v5, v3 :: v_dual_max_f32 v10, v10, v14
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v12, v12, v15
.Ltmp66:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v14, 0, v6 :: v_dual_cndmask_b32 v15, 0, v7
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	ds_store_b32 v9, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v11
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v9, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v11
.Ltmp70:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v11, v1 :: v_dual_cndmask_b32 v12, 0, v4
	v_dual_mov_b32 v4, v2 :: v_dual_add_f32 v3, v3, v5
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v20, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v16, v12 :: v_dual_mov_b32 v17, v3
	v_dual_mov_b32 v18, v14 :: v_dual_add_f32 v1, v1, v11
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp71:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v2, v2, v4
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v6, v10
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v10, v10, v10
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v5, v9
.Ltmp77:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v4, v1 :: v_dual_mov_b32 v11, v2
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_add_f32 v15, v15, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v7, v9, v5
.Ltmp82:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v1, v1, v4 :: v_dual_add_f32 v2, v2, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp83:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v9, v10, v6 :: v_dual_add_f32 v4, v3, v17
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v17, v13 :: v_dual_mov_b32 v10, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v5, v2 :: v_dual_add_f32 v8, v8, v20
	v_mov_b32_e32 v19, v15
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v12, v12, v16 :: v_dual_mov_b32 v11, v9
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v3, v1 :: v_dual_mov_b32 v6, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v13, v13, v17 :: v_dual_mov_b32 v16, v12
	v_add_f32_e32 v14, v14, v18
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v20, v8 :: v_dual_mov_b32 v17, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp89:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp90:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v15, v19
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
.Ltmp92:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v13, v17
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v17, v8, v20
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v14, v14, v18
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v22, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v12, v12, v16 :: v_dual_mov_b32 v19, v14
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v17, v17, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v14, v14, v19 :: v_dual_add_f32 v15, v15, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v12
	v_dual_mov_b32 v20, v17 :: v_dual_mov_b32 v19, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v13, v18
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v8, v12, v16
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v16, v13
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v12, v8
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_10
; %bb.9:
.Ltmp111:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v11, v11, v11
	v_dual_max_f32 v9, v9, v9 :: v_dual_add_f32 v10, v7, v10
.Ltmp112:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
	v_mov_b32_e32 v7, 0
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp113:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v9, v11
.Ltmp114:
	.loc	1 833 13                        ; attention.py:833:13
	s_add_u32 s4, s16, s4
	s_addc_u32 s5, s17, s5
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v7, v[9:10], s[4:5]
.LBB0_10:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp115:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v7, v8, v12
	v_dual_add_f32 v5, v2, v5 :: v_dual_lshlrev_b32 v8, 1, v0
	v_dual_add_f32 v6, v4, v6 :: v_dual_and_b32 v9, 0xc0, v36
	v_dual_add_f32 v4, v1, v3 :: v_dual_and_b32 v1, 28, v8
.Ltmp116:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v2, 32, v38
	v_lshl_add_u32 v8, v37, 1, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v20, v17, v20 :: v_dual_add_nc_u32 v3, 0, v9
	v_dual_add_f32 v19, v15, v19 :: v_dual_add_f32 v18, v14, v18
	v_add_f32_e32 v17, v13, v16
.Ltmp118:
	.loc	1 835 13                        ; attention.py:835:13
	v_add3_u32 v1, v3, v2, v1
	.loc	1 572 22                        ; attention.py:572:22
	v_and_b32_e32 v9, 63, v0
	.loc	1 835 13                        ; attention.py:835:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[4:7]
	ds_store_b128 v8, v[17:20] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 64, v0
	.loc	1 836 17                        ; attention.py:836:17
	v_add_nc_u32_e32 v2, s0, v9
	.loc	1 838 22                        ; attention.py:838:22
	v_cmp_gt_i32_e32 vcc_lo, s33, v9
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
.Ltmp119:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 117
		.amdhsa_next_free_sgpr 55
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
		.amdhsa_inst_pref_size 50
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_vgpr, 117
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.numbered_sgpr, 55
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6292
; TotalNumSgprs: 57
; NumVgprs: 117
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 57
; NumVGPRsForWavesPerEU: 117
; Occupancy: 12
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
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
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
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
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
.Ldebug_ranges5:
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
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
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     57
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     117
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
