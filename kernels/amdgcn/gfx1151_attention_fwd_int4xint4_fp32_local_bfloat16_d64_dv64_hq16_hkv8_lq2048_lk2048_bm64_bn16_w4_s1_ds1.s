	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b32 s36, s[0:1], 0x84
	s_load_b32 s23, s[0:1], 0x60
	s_load_b64 s[12:13], s[0:1], 0x0
.Ltmp0:
	.loc	1 584 86 prologue_end           ; attention.py:584:86
	v_and_b32_e32 v33, 1, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s5, s2, 6
	.loc	1 583 26                        ; attention.py:583:26
	s_lshl_b32 s2, s3, 11
	s_mov_b32 s15, 0x31027000
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s8, s5, s2
	.loc	1 584 86 is_stmt 0              ; attention.py:584:86
	v_lshlrev_b32_e32 v1, 4, v33
	.loc	1 584 26                        ; attention.py:584:26
	v_or_b32_e32 v3, s8, v2
	.loc	1 570 21 is_stmt 1              ; attention.py:570:21
	v_or_b32_e32 v4, s5, v2
	s_mov_b32 s14, 0x7ffffffe
	s_load_b64 s[6:7], s[0:1], 0x7c
	.loc	1 570 31 is_stmt 0              ; attention.py:570:31
	v_and_b32_e32 v35, 0x60, v0
	.loc	1 571 21 is_stmt 1              ; attention.py:571:21
	v_bfe_u32 v34, v0, 4, 1
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v54, 16, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v36, 15, v0
	v_lshrrev_b32_e32 v6, 1, v35
	.loc	1 584 26                        ; attention.py:584:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s23, v3, v[1:2]
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s2, s23, v1
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s13, s13, 0xffff
	v_lshlrev_b32_e32 v61, 3, v36
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s5, s7
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s10, s5, s6
	.loc	1 585 26                        ; attention.py:585:26
	buffer_load_b128 v[2:5], v1, s[12:15], 0 offen
	v_lshlrev_b32_e32 v1, 1, v0
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, s36
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s10, s10, s36
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s4, s2, 64
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s10, s10, 0
	.loc	1 585 26                        ; attention.py:585:26
	v_and_or_b32 v7, v1, 30, v34
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v1, v6, v36
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s9, s4, 0x800
	.loc	1 585 26                        ; attention.py:585:26
	v_cmp_eq_u32_e64 s4, 0, v54
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s9, s9, 15
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v6, 2, v7
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v7, s5, v1
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s11, s9, 31
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s33, s10, 0x7ffffff0
	.loc	1 619 34                        ; attention.py:619:34
	s_lshr_b32 s11, s11, 28
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v8, 4, v6
	.loc	1 619 34                        ; attention.py:619:34
	s_add_i32 s9, s9, s11
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 0x800, v7
	.loc	1 619 33                        ; attention.py:619:33
	s_and_b32 s34, s9, -16
	s_mov_b32 s9, 0
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s33, s34
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v38, v6, v2
	ds_bpermute_b32 v39, v6, v3
	ds_bpermute_b32 v40, v6, v4
	ds_bpermute_b32 v48, v6, v5
	ds_bpermute_b32 v41, v8, v2
	ds_bpermute_b32 v50, v8, v3
	ds_bpermute_b32 v51, v8, v4
	ds_bpermute_b32 v49, v8, v5
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 846 36                        ; attention.py:846:36
	v_dual_mov_b32 v2, 0x5410 :: v_dual_lshlrev_b32 v37, 3, v36
	v_mov_b32_e32 v3, 0x7632
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v2, 0x1054, v2, s4
	v_cndmask_b32_e64 v3, 0x3276, v3, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v2, v2, 8, v2
	v_lshl_or_b32 v3, v3, 8, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v2, 0x540054, v2
	v_and_b32_e32 v3, 0x760076, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_or_b32 v3, v3, 4, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v56, 0x5040504, v2
	v_and_b32_e32 v57, 0x7060706, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s9, -1
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr56
                                        ; implicit-def: $vgpr57
.LBB0_3:                                ; %Flow76
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x38
	s_load_b32 s22, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_lshlrev_b32 v59, 2, v0
	v_and_b32_e32 v58, 0x7c, v0
	v_or_b32_e32 v55, s8, v1
	v_lshrrev_b32_e32 v60, 4, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v53, v8
	v_mov_b32_e32 v52, v8
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x8
	v_dual_mov_b32 v14, 0x7632 :: v_dual_lshlrev_b32 v1, 1, v55
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_clause 0x1
	s_load_b128 s[28:31], s[0:1], 0x28
	s_load_b128 s[16:19], s[0:1], 0x68
	.loc	1 590 31 is_stmt 1              ; attention.py:590:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v56, 2, v58
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v2, 3, v0
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v6, 12, v0
	v_dual_mov_b32 v112, 0xff800000 :: v_dual_and_b32 v7, 48, v0
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v8, 64, v0
	v_dual_mov_b32 v108, 0xff800000 :: v_dual_and_b32 v11, 28, v0
	v_bfe_i32 v12, v0, 5, 1
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s0, s0, 28
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	v_dual_mov_b32 v13, 0x5410 :: v_dual_lshlrev_b32 v42, 2, v36
	buffer_load_u16 v37, v1, s[24:27], 0 offen
	v_dual_mov_b32 v1, 0 :: v_dual_lshlrev_b32 v10, 5, v0
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s1, s3, s0
	v_cmp_eq_u32_e32 vcc_lo, 0, v33
	v_mov_b32_e32 v33, 0
	.loc	1 771 51                        ; attention.py:771:51
	v_and_b32_e32 v3, 0x70, v0
	v_lshlrev_b32_e32 v15, 7, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v57, s5, v56
	v_dual_mov_b32 v109, 0xff800000 :: v_dual_lshlrev_b32 v74, 1, v8
	v_dual_mov_b32 v18, v33 :: v_dual_lshlrev_b32 v65, 1, v6
	v_lshrrev_b32_e32 v64, 1, v7
	v_lshl_or_b32 v66, v7, 6, v61
	v_dual_mov_b32 v24, v33 :: v_dual_and_b32 v67, 0x120, v12
	v_lshl_or_b32 v69, v2, 5, v11
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s12, s1, -16
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v45, v48, v49, s4
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s3, s3, s12
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v44, v40, v51, s4
	v_cndmask_b32_e64 v47, v39, v50, s4
	v_cndmask_b32_e64 v49, v49, v48, s4
	v_cndmask_b32_e64 v48, v51, v40, s4
	v_cndmask_b32_e64 v51, v50, v39, s4
	v_dual_mov_b32 v28, v33 :: v_dual_and_b32 v39, 0xfc, v59
	v_dual_mov_b32 v27, v33 :: v_dual_and_b32 v70, 0x300, v10
	v_lshrrev_b32_e32 v71, 5, v8
	v_cndmask_b32_e64 v72, 0x1054, v13, s4
	v_cndmask_b32_e64 v76, 0x3276, v14, s4
	v_cndmask_b32_e64 v46, v38, v41, s4
	v_cndmask_b32_e64 v50, v41, v38, s4
	v_cndmask_b32_e64 v40, 0x90, 0, vcc_lo
	v_bfe_i32 v41, v0, 2, 1
	v_dual_mov_b32 v12, v33 :: v_dual_and_b32 v79, 0x160, v10
	v_mov_b32_e32 v26, v33
	v_lshrrev_b32_e32 v78, 2, v3
	v_dual_mov_b32 v30, v33 :: v_dual_and_b32 v77, 0x700, v15
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_u32 s13, s3, 0x10007
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v80, 32, v57
	v_lshrrev_b32_e32 v5, 2, v35
	v_dual_mov_b32 v20, v33 :: v_dual_lshlrev_b32 v73, 8, v6
	v_dual_mov_b32 v22, v33 :: v_dual_and_b32 v75, 0x260, v10
	v_mov_b32_e32 v29, v33
	v_lshl_or_b32 v63, v36, 5, v65
	v_xor_b32_e32 v36, v66, v64
	v_add_nc_u32_e32 v64, 0, v74
	v_lshl_or_b32 v35, v35, 2, v65
	v_xor_b32_e32 v65, v69, v67
	.loc	1 569 19                        ; attention.py:569:19
	s_add_i32 s13, s3, s13
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v4, 0x1fc, v59
	v_dual_mov_b32 v14, v33 :: v_dual_add_nc_u32 v81, s36, v57
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s12, s1, 4
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s1, 0x800, v57
	v_or3_b32 v66, v70, v39, v71
	v_lshl_or_b32 v39, v72, 8, v72
	v_lshl_or_b32 v57, v76, 8, v76
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_i32 s13, s13, 0x80000
	v_mov_b32_e32 v10, v33
	v_dual_mov_b32 v31, v33 :: v_dual_add_nc_u32 v76, 0, v77
	v_mov_b32_e32 v16, v33
	v_xor_b32_e32 v40, v40, v78
	v_and_or_b32 v67, 0x90, v41, v79
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v41, s36, v80
	v_mov_b32_e32 v23, v33
	v_or3_b32 v73, v73, v75, v35
	v_or_b32_e32 v35, v65, v74
	.loc	1 569 19                        ; attention.py:569:19
	s_sext_i32_i16 s13, s13
	v_add_nc_u32_e32 v74, v64, v36
	v_mul_lo_u32 v36, s19, v56
	s_ashr_i32 s13, s13, 1
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v38, 3, v0
	v_dual_mov_b32 v53, 0 :: v_dual_lshlrev_b32 v0, 2, v2
	v_xor_b32_e32 v68, v4, v5
	v_dual_mov_b32 v2, v33 :: v_dual_and_b32 v39, 0x540054, v39
	v_dual_mov_b32 v4, v33 :: v_dual_and_b32 v57, 0x760076, v57
	v_dual_mov_b32 v6, v33 :: v_dual_add_nc_u32 v75, v76, v40
	.loc	1 748 47                        ; attention.py:748:47
	v_subrev_nc_u32_e32 v71, s6, v81
	.loc	1 710 33                        ; attention.py:710:33
	s_lshl3_add_u32 s13, s12, s13
	.loc	1 748 47                        ; attention.py:748:47
	v_subrev_nc_u32_e32 v76, s6, v41
	.loc	1 754 27                        ; attention.py:754:27
	s_mul_i32 s3, s18, s3
	.loc	1 753 27                        ; attention.py:753:27
	s_mul_i32 s6, s17, s12
	v_dual_mov_b32 v21, v33 :: v_dual_add_nc_u32 v72, s7, v81
	.loc	1 752 25                        ; attention.py:752:25
	s_add_i32 s50, s3, s6
	.loc	1 710 32                        ; attention.py:710:32
	s_lshl_b32 s3, s13, 11
	v_dual_mov_b32 v8, v33 :: v_dual_add_nc_u32 v77, s7, v41
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v62, 1, v0
	v_or_b32_e32 v69, 2, v0
	v_or_b32_e32 v70, 3, v0
	v_xor_b32_e32 v78, 8, v63
	v_xor_b32_e32 v79, 16, v63
	v_xor_b32_e32 v80, 24, v63
	v_xor_b32_e32 v81, 32, v66
	v_xor_b32_e32 v82, 64, v66
	v_xor_b32_e32 v83, 0x60, v66
	v_xor_b32_e32 v84, 16, v67
	v_xor_b32_e32 v40, 8, v73
	v_xor_b32_e32 v41, 16, v73
	v_xor_b32_e32 v90, 24, v73
	v_xor_b32_e32 v35, 0x240, v35
	v_lshl_or_b32 v39, v39, 4, v39
	v_lshl_or_b32 v57, v57, 4, v57
	v_or_b32_e32 v87, s3, v34
	v_lshl_add_u32 v34, s19, 5, v36
	.loc	1 707 13                        ; attention.py:707:13
	v_add_nc_u32_e32 v92, v36, v0
	v_dual_mov_b32 v52, 0 :: v_dual_and_b32 v43, 28, v59
	v_dual_mov_b32 v113, 0xff800000 :: v_dual_mov_b32 v32, v33
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e64 s0, s22, v42
	v_dual_mov_b32 v19, v33 :: v_dual_add_nc_u32 v68, 0, v68
	v_dual_mov_b32 v11, v33 :: v_dual_add_nc_u32 v78, 0, v78
	v_dual_mov_b32 v13, v33 :: v_dual_add_nc_u32 v80, 0, v80
	v_dual_mov_b32 v15, v33 :: v_dual_add_nc_u32 v82, 0, v82
	v_dual_mov_b32 v3, v33 :: v_dual_add_nc_u32 v84, 0, v84
	v_dual_mov_b32 v5, v33 :: v_dual_and_b32 v56, 0x5040504, v39
	v_dual_mov_b32 v7, v33 :: v_dual_add_nc_u32 v88, 0, v40
	v_dual_mov_b32 v110, 0xff800000 :: v_dual_add_nc_u32 v79, 0, v79
	v_add_nc_u32_e32 v81, 0, v81
	v_add_nc_u32_e32 v83, 0, v83
	v_lshl_or_b32 v85, s13, 10, v60
	v_or_b32_e32 v86, s3, v38
	v_and_b32_e32 v57, 0x7060706, v57
	v_add_nc_u32_e32 v89, 0, v41
	v_add_nc_u32_e32 v90, 0, v90
	v_add_nc_u32_e32 v91, 0, v35
	v_or_b32_e32 v93, 2, v87
	v_or_b32_e32 v94, 4, v87
	v_or_b32_e32 v95, 6, v87
	v_or_b32_e32 v96, 8, v87
	v_or_b32_e32 v97, 10, v87
	v_or_b32_e32 v98, 12, v87
	v_or_b32_e32 v99, 14, v87
	.loc	1 707 13                        ; attention.py:707:13
	v_add_nc_u32_e32 v100, v34, v0
	v_add_nc_u32_e32 v101, v34, v62
	v_add_nc_u32_e32 v102, v34, v69
	v_add_nc_u32_e32 v103, v34, v70
	v_add_nc_u32_e32 v104, 1, v92
	v_add_nc_u32_e32 v105, 2, v92
	v_add_nc_u32_e32 v106, 3, v92
	.loc	1 742 27                        ; attention.py:742:27
	s_mul_f32 s48, s16, 0x3fb8aa3b
	.loc	1 752 25                        ; attention.py:752:25
	s_mul_i32 s5, s19, s5
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s31, s31, 0xffff
	s_mov_b32 s35, 0x76543210
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s42, s26
	s_mov_b32 s43, s27
	s_mov_b32 s46, s26
	s_mov_b32 s47, s27
	s_and_b32 s45, s11, 0xffff
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s36, s14
	s_mov_b32 s40, s30
	s_mov_b32 s44, s10
	s_mov_b32 s30, s26
	.loc	1 794 21                        ; attention.py:794:21
	s_lshl_b32 s49, s13, 7
	s_mov_b32 s24, s8
	s_mov_b32 s25, s9
	s_mov_b32 s37, s15
	s_mov_b32 s41, s31
	s_mov_b32 s31, s27
	s_add_i32 s50, s50, s5
	.loc	1 714 31                        ; attention.py:714:31
	v_cmp_gt_i32_e32 vcc_lo, s23, v43
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v107, 16, v37
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 717 33                        ; attention.py:717:33
	v_dual_mov_b32 v35, v33 :: v_dual_add_nc_u32 v114, s33, v86
	v_dual_mov_b32 v40, v33 :: v_dual_add_nc_u32 v129, 0, v63
	v_mov_b32_e32 v34, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 711 32                        ; attention.py:711:32
	v_mad_u64_u32 v[130:131], null, v114, s23, v[43:44]
	.loc	1 717 33                        ; attention.py:717:33
	v_dual_mov_b32 v36, v33 :: v_dual_add_nc_u32 v41, 0, v73
	v_dual_mov_b32 v37, v33 :: v_dual_add_nc_u32 v116, v64, v65
	v_dual_mov_b32 v38, v33 :: v_dual_add_nc_u32 v115, 0, v66
	v_mov_b32_e32 v39, v33
	v_dual_mov_b32 v138, v40 :: v_dual_mov_b32 v135, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v136, v38
	v_dual_mov_b32 v134, v36 :: v_dual_mov_b32 v133, v35
	v_dual_mov_b32 v137, v39 :: v_dual_mov_b32 v132, v34
	v_dual_mov_b32 v131, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v130
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v126, s33, v0
	v_or_b32_e32 v127, s33, v69
	v_or_b32_e32 v128, s33, v62
	v_or_b32_e32 v125, s33, v70
	.loc	1 712 32                        ; attention.py:712:32
	buffer_load_b32 v34, v34, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s3, v126, v71
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s6, v126, v72
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s12, v127, v71
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s14, v127, v72
	.loc	1 752 25                        ; attention.py:752:25
	s_add_i32 s16, s50, s33
	.loc	1 798 53                        ; attention.py:798:53
	s_lshr_b32 s17, s33, 4
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s5, v126, v76
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s7, v126, v77
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s13, v127, v76
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s15, v127, v77
	.loc	1 814 30                        ; attention.py:814:30
	v_add_nc_u32_e32 v114, 0, v67
	.loc	1 761 36                        ; attention.py:761:36
	v_add_lshl_u32 v40, s16, v104, 2
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s8, v128, v71
	v_cmp_ge_i32_e64 s9, v128, v76
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s10, v128, v72
	v_cmp_le_i32_e64 s11, v128, v77
	.loc	1 761 36                        ; attention.py:761:36
	v_add_lshl_u32 v126, s16, v103, 2
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s52, s17, s49
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s17, v125, v76
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s18, v125, v72
	v_cmp_le_i32_e64 s19, v125, v77
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s3, s3, s6
	s_and_b32 s12, s12, s14
	s_and_b32 s5, s5, s7
	s_and_b32 s6, s1, s3
	s_and_b32 s13, s13, s15
	s_and_b32 s7, s1, s12
	s_and_b32 s8, s8, s10
	s_and_b32 s9, s9, s11
	s_and_b32 s14, s17, s19
	s_and_b32 s5, s1, s5
	s_and_b32 s3, s1, s13
	s_and_b32 s11, s1, s8
	s_and_b32 s8, s1, s9
	s_and_b32 s12, s1, s14
	.loc	1 761 36 is_stmt 1              ; attention.py:761:36
	v_cndmask_b32_e64 v40, 0x80000000, v40, s11
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v117, s33, v87, 1
	v_add_lshl_u32 v118, v93, s33, 1
	v_add_lshl_u32 v119, v94, s33, 1
	v_add_lshl_u32 v120, v95, s33, 1
	v_add_lshl_u32 v121, v96, s33, 1
	v_add_lshl_u32 v122, v97, s33, 1
	v_add_lshl_u32 v123, v98, s33, 1
	v_add_lshl_u32 v124, v99, s33, 1
	.loc	1 771 36                        ; attention.py:771:36
	s_lshr_b32 s51, s33, 1
	.loc	1 775 32                        ; attention.py:775:32
	v_mov_b16_e32 v111.l, 0
	v_dual_mov_b32 v130, v53 :: v_dual_max_f32 v53, v108, v108
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s33, s33, 16
	.loc	1 763 25                        ; attention.py:763:25
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v127.h, v111.l
	.loc	1 763 25                        ; attention.py:763:25
	.loc	1 787 39                        ; attention.py:787:39
	.loc	1 712 32                        ; attention.py:712:32
	s_waitcnt vmcnt(0)
	ds_store_b32 v68, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[34:35], v129
	ds_load_b64 v[36:37], v78
	ds_load_b64 v[38:39], v79
	ds_load_b64 v[139:140], v80
	.loc	1 727 37                        ; attention.py:727:37
	s_clause 0x7
	buffer_load_u16 v117, v117, s[36:39], 0 offen
	buffer_load_u16 v118, v118, s[36:39], 0 offen
	buffer_load_u16 v119, v119, s[36:39], 0 offen
	buffer_load_u16 v120, v120, s[36:39], 0 offen
	buffer_load_u16 v121, v121, s[36:39], 0 offen
	buffer_load_u16 v122, v122, s[36:39], 0 offen
	buffer_load_u16 v123, v123, s[36:39], 0 offen
	buffer_load_u16 v124, v124, s[36:39], 0 offen
	v_mov_b32_e32 v129, v52
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[131:138], v[34:35], v[50:51], v[131:138] neg_lo:[1,1,0]
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v35, v113, v113
	.loc	1 761 36                        ; attention.py:761:36
	v_add_lshl_u32 v113, s16, v101, 2
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[131:138], v[36:37], v[48:49], v[131:138] neg_lo:[1,1,0]
	.loc	1 761 36                        ; attention.py:761:36
	v_add_lshl_u32 v36, s16, v92, 2
	v_add_lshl_u32 v37, s16, v105, 2
	v_cndmask_b32_e64 v113, 0x80000000, v113, s8
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[131:138], v[38:39], v[46:47], v[131:138] neg_lo:[1,1,0]
	.loc	1 761 36                        ; attention.py:761:36
	v_add_lshl_u32 v38, s16, v100, 2
	v_add_lshl_u32 v39, s16, v102, 2
	v_cndmask_b32_e64 v36, 0x80000000, v36, s6
	v_cndmask_b32_e64 v37, 0x80000000, v37, s7
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[131:138], v[139:140], v[44:45], v[131:138] neg_lo:[1,1,0]
	.loc	1 761 36                        ; attention.py:761:36
	v_cndmask_b32_e64 v38, 0x80000000, v38, s5
	v_cndmask_b32_e64 v39, 0x80000000, v39, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v131, v131
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v34, v112, v112
	.loc	1 761 36                        ; attention.py:761:36
	v_add_lshl_u32 v112, s16, v106, 2
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s16, v125, v71
	.loc	1 761 36                        ; attention.py:761:36
	v_cndmask_b32_e64 v125, 0x80000000, v126, s12
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	.loc	1 749 21                        ; attention.py:749:21
	s_and_b32 s10, s16, s18
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v135, v135
	.loc	1 749 21                        ; attention.py:749:21
	s_and_b32 s10, s1, s10
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v137, v137
	.loc	1 761 36                        ; attention.py:761:36
	v_cndmask_b32_e64 v112, 0x80000000, v112, s10
	s_clause 0x7
	buffer_load_b32 v36, v36, s[40:43], 0 offen
	buffer_load_b32 v37, v37, s[40:43], 0 offen
	buffer_load_b32 v38, v38, s[40:43], 0 offen
	buffer_load_b32 v39, v39, s[40:43], 0 offen
	buffer_load_b32 v125, v125, s[40:43], 0 offen
	buffer_load_b32 v113, v113, s[40:43], 0 offen
	buffer_load_b32 v112, v112, s[40:43], 0 offen
	buffer_load_b32 v126, v40, s[40:43], 0 offen
	.loc	1 762 35                        ; attention.py:762:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v138, v138
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v52, v110, v110
	.loc	1 774 30                        ; attention.py:774:30
	v_add_nc_u32_e32 v40, s51, v85
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v128, v107, v132
	v_mul_f32_e32 v132, v107, v134
	v_mul_f32_e32 v134, v107, v136
	v_mul_f32_e32 v136, v107, v138
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s51, s52, s22
	.loc	1 727 37                        ; attention.py:727:37
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v117, 16, v117
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v118, 16, v118
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v139, 16, v121
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v123, 16, v123
	.loc	1 761 36                        ; attention.py:761:36
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v36, 0xff800000, v36, s6
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v37, 0xff800000, v37, s7
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v38, 0xff800000, v38, s5
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v39, 0xff800000, v39, s3
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s9, 0xff800000, v36
	v_cmp_neq_f32_e64 s13, 0xff800000, v37
	v_cmp_neq_f32_e64 s14, 0xff800000, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_neq_f32_e64 s15, 0xff800000, v39
	.loc	1 762 35                        ; attention.py:762:35
	ds_store_2addr_b64 v74, v[36:37], v[38:39] offset1:32
	.loc	1 761 36                        ; attention.py:761:36
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v36, 0xff800000, v126, s11
	v_cndmask_b32_e64 v37, 0xff800000, v112, s10
	v_cndmask_b32_e64 v112, 0xff800000, v113, s8
	v_cndmask_b32_e64 v113, 0xff800000, v125, s12
	.loc	1 763 25                        ; attention.py:763:25
	s_and_b32 s3, s3, s15
	.loc	1 763 34 is_stmt 0              ; attention.py:763:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v36
	.loc	1 763 25                        ; attention.py:763:25
	s_and_b32 s5, s5, s14
	s_and_b32 s7, s7, s13
	.loc	1 762 35 is_stmt 1              ; attention.py:762:35
	ds_store_2addr_b64 v74, v[36:37], v[112:113] offset0:64 offset1:96
	.loc	1 763 25                        ; attention.py:763:25
	v_cndmask_b32_e64 v36, 0, 1, s3
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v125, v107, v131
	v_mul_f32_e32 v131, v107, v133
	v_mul_f32_e32 v133, v107, v135
	v_mul_f32_e32 v135, v107, v137
	.loc	1 727 37                        ; attention.py:727:37
	v_lshlrev_b32_e32 v137, 16, v119
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v37
	.loc	1 763 25 is_stmt 0              ; attention.py:763:25
	v_cndmask_b32_e64 v37, 0, 1, s5
	v_cndmask_b32_e64 v38, 0, 1, s7
	v_lshlrev_b16 v36.l, 8, v36.l
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s19, 0xff800000, v113
	.loc	1 763 25                        ; attention.py:763:25
	s_and_b32 s9, s6, s9
	.loc	1 732 30 is_stmt 1              ; attention.py:732:30
	v_dual_mul_f32 v125, v125, v117 :: v_dual_lshlrev_b32 v138, 16, v120
	v_dual_mul_f32 v131, v131, v137 :: v_dual_lshlrev_b32 v140, 16, v122
	.loc	1 763 25                        ; attention.py:763:25
	v_cndmask_b32_e64 v39, 0, 1, s9
	v_or_b16 v137.h, v37.l, v36.l
	v_mov_b16_e32 v36.l, v38.l
	.loc	1 763 34 is_stmt 0              ; attention.py:763:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v112
	.loc	1 763 25                        ; attention.py:763:25
	s_and_b32 s6, s12, s19
	s_and_b32 s10, s10, s17
	.loc	1 732 30 is_stmt 1              ; attention.py:732:30
	v_dual_mul_f32 v133, v133, v139 :: v_dual_lshlrev_b32 v124, 16, v124
	.loc	1 762 35                        ; attention.py:762:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v128, v128, v118 :: v_dual_mul_f32 v123, v135, v123
	.loc	1 762 35                        ; attention.py:762:35
	ds_load_b64 v[112:113], v41
	ds_load_b64 v[117:118], v88
	ds_load_b64 v[119:120], v89
	ds_load_b64 v[121:122], v90
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v132, v132, v138
	.loc	1 763 25                        ; attention.py:763:25
	v_cndmask_b32_e64 v135, 0, 1, s6
	v_cndmask_b32_e64 v138, 0, 1, s10
	v_mov_b16_e32 v37.l, v39.l
	v_lshlrev_b16 v36.l, 8, v36.l
	s_and_b32 s8, s8, s18
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v124, v136, v124
	.loc	1 763 25                        ; attention.py:763:25
	v_cndmask_b32_e64 v136, 0, 1, s8
	s_and_b32 s11, s11, s16
	v_or_b16 v137.l, v37.l, v36.l
	v_mov_b16_e64 v36.l, v135.l
	v_mov_b16_e64 v37.l, v138.l
	v_cndmask_b32_e64 v39, 0, 1, s11
	v_mov_b16_e64 v38.l, v136.l
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b16 v36.l, 8, v36.l
	v_lshlrev_b16 v36.h, 8, v37.l
	s_barrier
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v112, 0x3fb8aa3b, v112 :: v_dual_mul_f32 v121, 0x3fb8aa3b, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 763 25                        ; attention.py:763:25
	v_or_b16 v37.h, v38.l, v36.l
	v_or_b16 v37.l, v39.l, v36.h
	ds_store_b32 v116, v137
	ds_store_b32 v91, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v36, v115
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v36, v81
	ds_load_u16_d16 v37, v82
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v37, v83
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v113, 0x3fb8aa3b, v113 :: v_dual_mul_f32 v134, v134, v140
	v_dual_mul_f32 v117, 0x3fb8aa3b, v117 :: v_dual_mul_f32 v118, 0x3fb8aa3b, v118
	v_mul_f32_e32 v135, 0x3fb8aa3b, v120
	v_dual_mul_f32 v119, 0x3fb8aa3b, v119 :: v_dual_mul_f32 v136, 0x3fb8aa3b, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 762 25 is_stmt 0              ; attention.py:762:25
	v_dual_fmac_f32 v113, s48, v128 :: v_dual_fmac_f32 v112, s48, v125
	v_dual_fmac_f32 v117, s48, v131 :: v_dual_fmac_f32 v118, s48, v132
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v119, s48, v133
	v_fmac_f32_e32 v121, s48, v123
	v_dual_fmac_f32 v135, s48, v134 :: v_dual_fmac_f32 v136, s48, v124
	.loc	1 764 26 is_stmt 1              ; attention.py:764:26
	s_waitcnt lgkmcnt(0)
	.loc	1 763 25                        ; attention.py:763:25
	v_and_b16 v38.l, 1, v36.l
	v_lshrrev_b16 v36.l, 8, v36.l
	v_and_b16 v38.h, 1, v36.h
	v_lshrrev_b16 v36.h, 8, v36.h
	v_and_b16 v39.l, 1, v37.l
	v_lshrrev_b16 v37.l, 8, v37.l
	v_lshrrev_b16 v39.h, 8, v37.h
	v_and_b16 v36.l, 1, v36.l
	v_and_b16 v37.h, 1, v37.h
	v_and_b16 v36.h, 1, v36.h
	v_and_b16 v37.l, 1, v37.l
	v_and_b16 v39.h, 1, v39.h
	v_cmp_eq_u16_e64 s15, 1, v38.l
	v_cmp_eq_u16_e64 s17, 1, v36.l
	v_cmp_eq_u16_e64 s16, 1, v38.h
	v_cmp_eq_u16_e64 s12, 1, v37.h
	v_cmp_eq_u16_e64 s18, 1, v36.h
	v_cmp_eq_u16_e64 s14, 1, v39.l
	v_cmp_eq_u16_e64 s19, 1, v37.l
	v_cmp_eq_u16_e64 s13, 1, v39.h
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v112, 0xff800000, v112, s15
	v_cndmask_b32_e64 v113, 0xff800000, v113, s17
	v_cndmask_b32_e64 v120, 0xff800000, v117, s16
	v_cndmask_b32_e64 v124, 0xff800000, v121, s12
	v_cndmask_b32_e64 v121, 0xff800000, v118, s18
	v_cndmask_b32_e64 v122, 0xff800000, v119, s14
	v_cndmask_b32_e64 v123, 0xff800000, v135, s19
	v_cndmask_b32_e64 v125, 0xff800000, v136, s13
	s_barrier
	ds_store_b64 v41, v[112:113]
	ds_store_b64 v88, v[120:121]
	ds_store_b64 v89, v[122:123]
	ds_store_b64 v90, v[124:125]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[36:39], v74 offset0:64 offset1:96
	ds_load_2addr_b64 v[116:119], v74 offset1:32
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v115, v112, v113, v120
	v_max3_f32 v128, v121, v122, v123
	v_max_f32_e32 v131, v124, v125
.Ltmp2:
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v126.h, v111.l
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e64 v137.h, v111.l
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s33, s34
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v132, v118, v118
	v_max3_f32 v41, v115, v128, v131
	v_max_f32_e32 v128, v116, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v115, v41, s35, 0xfedcba98 op_sel:[1,0]
.Ltmp5:
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v115, v109, v41, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v131, v38, v38 :: v_dual_sub_f32 v112, v112, v115
.Ltmp7:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v41, v113, v115
	v_sub_f32_e32 v124, v124, v115
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v112, v112
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v112, 0, v112, s15
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_mov_b16_e32 v126.l, v112.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v113, v36, v36 :: v_dual_and_b32 v126, 1, v126
	v_max_f32_e32 v113, v128, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v113, v113, v117, v37
	v_dual_max_f32 v128, v132, v131 :: v_dual_mov_b32 v131, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max3_f32 v128, v128, v119, v39
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v131, v131 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v132, v128
.Ltmp10:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v41, v41
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v132, v132 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v131, v131, v131 :: v_dual_max_f32 v132, v132, v132
.Ltmp13:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v41, 0, v41, s17
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s17, v112, v112
	v_add3_u32 v112, v112, v126, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v128, v128, v132
.Ltmp15:
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v127.l, v41.h
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v113, v113, v131
.Ltmp17:
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s15, v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_dual_mov_b32 v126, v113 :: v_dual_and_b32 v127, 1, v127
.Ltmp19:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v41, v41, v127, 0x7fff
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v127, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v126, v126 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v41.l, 0x7fff, v112.h, s17
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v127, v127 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v112, v126, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp24:
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v131, v41, s35, 0xfedcba98 op_sel:[1,0]
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v126, v127, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v126, v128, v126 :: v_dual_max_f32 v127, v113, v112
.Ltmp26:
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v113, v35, v126 :: v_dual_max_f32 v112, v34, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v34, v131, v41, v56
	v_perm_b32 v35, v131, v41, v57
	v_mov_b16_e32 v41.h, v111.l
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v136, v39, v113
	v_sub_f32_e32 v134, v37, v112
	v_dual_sub_f32 v37, v121, v115 :: v_dual_sub_f32 v118, v118, v113
	v_sub_f32_e32 v133, v36, v112
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v36.h, v111.l
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v132, v117, v112 :: v_dual_sub_f32 v135, v38, v113
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v37, v37
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v38, v120, v115
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_mov_b16_e32 v39.h, v111.l
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v128, v116, v112 :: v_dual_sub_f32 v119, v119, v113
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v120.h, v111.l
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v116, v122, v115
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v121.h, v111.l
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v118, v118
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v122.h, v111.l
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v37, 0, v37, s18
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v119, v119
	.loc	1 766 24 is_stmt 1              ; attention.py:766:24
	v_dual_max_f32 v140, v53, v127 :: v_dual_max_f32 v141, v52, v126
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v127.h, v111.l
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v36.l, v37.h
	v_cmp_o_f32_e64 s15, v37, v37
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v126.h, v111.l
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v118, 0, v118, s5
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v52, v108, v140
	v_dual_sub_f32 v53, v110, v141 :: v_dual_and_b32 v36, 1, v36
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v119, 0, v119, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v52, v52
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v36, v37, v36, 0x7fff
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v37, v38
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v53, v53
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v37, 0, v37, s16
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v39.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s16, v37, v37
	v_and_b32_e32 v38, 1, v39
	v_cndmask_b16 v39.h, 0x7fff, v36.h, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v37, v37, v38, 0x7fff
	v_mov_b16_e32 v38.h, v111.l
	v_cndmask_b16 v39.l, 0x7fff, v37.h, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v37, v39, s35, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v36, v37, v39, v56
	v_perm_b32 v37, v37, v39, v57
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v39, v123, v115
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v123.h, v111.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v39, v39
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v39, 0, v39, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_mov_b16_e32 v41.l, v39.h
	v_cmp_o_f32_e64 s15, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v39, v39, v41, 0x7fff
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v41, v116
	.loc	1 797 41                        ; attention.py:797:41
	v_add_lshl_u32 v116, s51, v42, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s15
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v41, 0, v41, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v38.l, v41.h
	v_cmp_o_f32_e64 s14, v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v38, v41, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v39.l, 0x7fff, v38.h, s14
	v_permlanex16_b32 v41, v39, s35, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v38, v41, v39, v56
	v_perm_b32 v39, v41, v39, v57
	.loc	1 774 30                        ; attention.py:774:30
	v_mad_u64_u32 v[40:41], null, v40, s22, v[42:43]
	.loc	1 797 41                        ; attention.py:797:41
	v_cndmask_b32_e64 v41, 0x80000000, v116, s0
	buffer_load_b64 v[116:117], v41, s[28:31], 0 offen
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v40, 0x80000000, v40, s0
	buffer_load_b32 v131, v40, s[44:47], 0 offen
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v40, v125, v115
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v125, v109, v115
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v40, v40
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v125, v125
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v40, 0, v40, s13
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v120.l, v40.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s13, v40, v40
	v_and_b32_e32 v41, 1, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v40, v40, v41, 0x7fff
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v41, v124
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v124.h, 0x7fff, v40.h, s13
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s13, 0xff800000, v110
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v110, v132
	v_exp_f32_e32 v132, v135
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v41, 0, v41, s12
	.loc	1 767 25 is_stmt 1              ; attention.py:767:25
	v_cndmask_b32_e64 v135, 0, v53, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v121.l, v41.h
	v_cmp_o_f32_e64 s12, v41, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v110, 0, v110, s7
	v_cndmask_b32_e64 v132, 0, v132, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v121, 1, v121
	v_add3_u32 v41, v41, v121, 0x7fff
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v121.h, v111.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v124.l, 0x7fff, v41.h, s12
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s12, 0xff800000, v109
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v41, v124, s35, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v109, 0, v125, s12
	v_cmp_neq_f32_e64 s12, 0xff800000, v108
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v108, v128
	v_exp_f32_e32 v128, v134
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v40, v41, v124, v56
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v26, v26, v109
	v_mul_f32_e32 v31, v31, v109
	v_mul_f32_e32 v17, v17, v109
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v41, v41, v124, v57
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v124.l, v111.l
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v25, v25, v109
	v_mul_f32_e32 v27, v27, v109
	v_mul_f32_e32 v29, v29, v109
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v128, 0, v128, s10
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v28, v28, v109
	v_mul_f32_e32 v30, v30, v109
	v_mul_f32_e32 v32, v32, v109
	v_mul_f32_e32 v18, v18, v109
	v_mul_f32_e32 v19, v19, v109
	v_mul_f32_e32 v20, v20, v109
	v_mul_f32_e32 v21, v21, v109
	v_mul_f32_e32 v23, v23, v109
	v_mul_f32_e32 v24, v24, v109
	v_mul_f32_e32 v9, v9, v109
	v_mul_f32_e32 v10, v10, v109
	v_mul_f32_e32 v11, v11, v109
	v_mul_f32_e32 v12, v12, v109
	v_mul_f32_e32 v13, v13, v109
	v_mul_f32_e32 v14, v14, v109
	v_mul_f32_e32 v16, v16, v109
	v_mul_f32_e32 v1, v1, v109
	v_mul_f32_e32 v2, v2, v109
	v_mul_f32_e32 v4, v4, v109
	v_mul_f32_e32 v6, v6, v109
	v_mul_f32_e32 v7, v7, v109
	v_mul_f32_e32 v8, v8, v109
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v134, 0, v52, s12
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v15, v15, v109
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v53, v110, v128
.Ltmp28:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v108, 0, v108, s9
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v125.h, v111.l
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v111.h, v116.l
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v22, v22, v109
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v124.h, v117.l
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v3, v3, v109
	.loc	1 797 41                        ; attention.py:797:41
	v_and_b32_e32 v128, 0xffff0000, v117
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v5, v5, v109
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v109, v133
	v_exp_f32_e32 v133, v136
	.loc	1 775 32                        ; attention.py:775:32
	s_waitcnt vmcnt(0)
	v_bfe_i32 v110, v131, 0, 8
	v_lshrrev_b32_e32 v117, 24, v131
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v109, 0, v109, s11
	v_cndmask_b32_e64 v133, 0, v133, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s6, 0, v110.l
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v52, v108, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_add_f32 v108, v118, v132 :: v_dual_add_f32 v109, v119, v133
.Ltmp30:
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b32_e32 v118, 8, v131
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v52, v52, v53 :: v_dual_and_b32 v119, 0xffff0000, v116
.Ltmp32:
	.loc	1 775 32                        ; attention.py:775:32
	v_mov_b16_e64 v116.l, v131.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v53, v108, v109
.Ltmp34:
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v110.h, 4, v118.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v108, v52 :: v_dual_mov_b32 v109, v53
.Ltmp36:
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v110.h, v110.h, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v108, v108 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v109, v109 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v52, v52, v108 :: v_dual_add_f32 v53, v53, v109
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v108, v52 :: v_dual_mov_b32 v109, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v108, v108 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v109, v109 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v52, v52, v108
.Ltmp41:
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v108.l, v131.l, 15
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v53, v53, v109
.Ltmp43:
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v108.h, 4, v131.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v109.l, v131.h, 15
	v_and_b16 v109.h, v118.l, 15
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s3, 7, v108.l
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v53, v130, v135
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v108.h, v108.h, 15
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v130, v118, 0, 8
	v_bfe_i32 v118, v116, 0, 8
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v110.l, 0, -16, s3
	.loc	1 786 38 is_stmt 0              ; attention.py:786:38
	v_cmp_lt_u16_e64 s5, 7, v109.l
	.loc	1 817 23 is_stmt 1              ; attention.py:817:23
	v_fmac_f32_e32 v52, v129, v134
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b32_e32 v129, 20, v131
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v131, v117, 0, 8
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v120.l, v108.l, v110.l
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v108.l, v108.h, -16
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_mov_b16_e64 v110.l, v130.l
	.loc	1 786 38 is_stmt 1              ; attention.py:786:38
	v_cmp_lt_u16_e64 s3, 7, v109.h
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v116.l, v129.l, 15
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v129, v120, 0, 16
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v121.l, v108.h, v108.l, s6
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v108.l, v117.l, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v108.h, 4, v117.l
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v117.l, v118.l
	v_cmp_gt_i16_e64 s6, 0, v110.l
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v110.l, 0, -16, s5
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e64 v118.l, v131.l
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s7, 7, v108.l
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s5, 0, v117.l
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b16 v116.h, v116.l, -16
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_or_b16 v117.l, v109.l, v110.l
	v_cndmask_b16 v110.l, 0, -16, s3
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v109.l, v108.h, -16
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_gt_i16_e64 s8, 0, v118.l
	.loc	1 814 31 is_stmt 1              ; attention.py:814:31
	v_bfe_i32 v130, v121, 0, 16
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v116.l, v116.l, v116.h, s5
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v110.l, v109.h, v110.l
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v109.h, v110.h, -16
	.loc	1 787 30 is_stmt 0              ; attention.py:787:30
	v_cndmask_b16 v109.l, v108.h, v109.l, s8
	.loc	1 814 31 is_stmt 1              ; attention.py:814:31
	v_bfe_i32 v117, v117, 0, 16
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v118.l, v110.h, v109.h, s6
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v109.h, 0, -16, s7
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v110, v110, 0, 16
	v_bfe_i32 v116, v116, 0, 16
	v_cvt_f32_i32_e32 v117, v117
	v_bfe_i32 v118, v118, 0, 16
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v108.l, v108.l, v109.h
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v109, v109, 0, 16
	v_cvt_f32_i32_e32 v110, v110
	v_mul_f32_e32 v129, v111, v129
	v_cvt_f32_i32_e32 v118, v118
	v_bfe_i32 v108, v108, 0, 16
	v_mul_f32_e32 v111, v111, v130
	v_cvt_f32_i32_e32 v116, v116
	v_mul_f32_e32 v117, v124, v117
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v108, v108
	v_mul_f32_e32 v118, v119, v118
	v_mul_f32_e32 v110, v119, v110
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_mov_b16_e64 v122.l, v129.h
	v_mov_b16_e32 v123.l, v111.h
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v116, v124, v116
	v_mul_f32_e32 v109, v128, v109
	v_mul_f32_e32 v108, v128, v108
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e64 v137.l, v117.h
	v_mov_b16_e32 v120.l, v118.h
	v_mov_b16_e32 v121.l, v110.h
	v_and_b32_e32 v119, 1, v122
	v_and_b32_e32 v122, 1, v123
	v_and_b32_e32 v123, 1, v137
	v_mov_b16_e32 v125.l, v116.h
	v_mov_b16_e32 v127.l, v109.h
	v_mov_b16_e32 v126.l, v108.h
	v_and_b32_e32 v120, 1, v120
	v_and_b32_e32 v121, 1, v121
	v_cmp_o_f32_e64 s5, v111, v111
	v_cmp_o_f32_e64 s6, v117, v117
	v_add3_u32 v111, v111, v122, 0x7fff
	v_add3_u32 v117, v117, v123, 0x7fff
	v_and_b32_e32 v122, 1, v125
	v_and_b32_e32 v123, 1, v127
	v_and_b32_e32 v124, 1, v126
	v_cmp_o_f32_e64 s3, v129, v129
	v_cmp_o_f32_e64 s7, v118, v118
	v_cmp_o_f32_e64 s8, v110, v110
	v_add3_u32 v119, v129, v119, 0x7fff
	v_add3_u32 v118, v118, v120, 0x7fff
	v_add3_u32 v110, v110, v121, 0x7fff
	v_cmp_o_f32_e64 s9, v116, v116
	v_cmp_o_f32_e64 s10, v109, v109
	v_cmp_o_f32_e64 s11, v108, v108
	v_add3_u32 v116, v116, v122, 0x7fff
	v_add3_u32 v109, v109, v123, 0x7fff
	v_add3_u32 v108, v108, v124, 0x7fff
	v_cndmask_b16 v111.h, 0x7fff, v111.h, s5
	v_cndmask_b16 v111.l, 0x7fff, v119.h, s3
	v_cndmask_b16 v110.l, 0x7fff, v117.h, s6
	v_cndmask_b16 v117.h, 0x7fff, v118.h, s7
	v_cndmask_b16 v117.l, 0x7fff, v110.h, s8
	v_cndmask_b16 v110.h, 0x7fff, v116.h, s9
	v_cndmask_b16 v109.h, 0x7fff, v109.h, s10
	v_cndmask_b16 v109.l, 0x7fff, v108.h, s11
	ds_store_2addr_b32 v75, v111, v117 offset1:8
	ds_store_2addr_b32 v75, v110, v109 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[120:123], v84
	ds_load_b128 v[116:119], v114
	ds_load_b128 v[124:127], v114 offset:512
	ds_load_b128 v[128:131], v84 offset:512
	v_dual_mov_b32 v109, v115 :: v_dual_mov_b32 v108, v140
	v_mov_b32_e32 v110, v141
	.loc	1 816 23 is_stmt 1              ; attention.py:816:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[116:123], v[34:41], v[25:32]
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_b128 v[116:119], v114 offset:1024
	ds_load_b128 v[132:135], v114 offset:1536
	ds_load_b128 v[120:123], v84 offset:1024
	ds_load_b128 v[136:139], v84 offset:1536
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[124:131], v[34:41], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[116:123], v[34:41], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[132:139], v[34:41], v[1:8]
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v37, v61
.LBB0_7:                                ; %._crit_edge
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	v_and_b32_e32 v0, 0x80, v59
	v_and_b32_e32 v33, 4, v60
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v34, 0, v37
	v_lshl_add_u32 v35, v58, 1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 846 17                        ; attention.py:846:17
	s_and_b32 s21, s21, 0xffff
	.loc	1 707 13                        ; attention.py:707:13
	v_add3_u32 v0, v34, v0, v33
	ds_store_b64 v35, v[52:53]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s23, 0x31027000
	ds_load_b32 v0, v0
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v35, null, v0, v0, v26
	v_div_scale_f32 v33, null, v0, v0, v25
	v_div_scale_f32 v37, null, v0, v0, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v35
	v_div_scale_f32 v39, null, v0, v0, v28
	v_rcp_f32_e32 v44, v33
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v46, v37
	v_div_scale_f32 v41, null, v0, v0, v29
	v_div_scale_f32 v42, null, v0, v0, v30
	v_rcp_f32_e32 v47, v39
	v_fma_f32 v58, -v35, v45, 1.0
	v_div_scale_f32 v36, s0, v26, v0, v26
	v_rcp_f32_e32 v48, v41
	v_rcp_f32_e32 v51, v42
	v_fma_f32 v53, -v33, v44, 1.0
	v_fma_f32 v59, -v37, v46, 1.0
	v_fmac_f32_e32 v45, v58, v45
	v_div_scale_f32 v34, vcc_lo, v25, v0, v25
	v_div_scale_f32 v38, s1, v27, v0, v27
	v_fma_f32 v60, -v39, v47, 1.0
	v_fmac_f32_e32 v44, v53, v44
	v_dual_fmac_f32 v46, v59, v46 :: v_dual_mul_f32 v59, v36, v45
	v_fma_f32 v61, -v41, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v47, v60, v47
	v_fma_f32 v53, -v42, v51, 1.0
	v_mul_f32_e32 v58, v34, v44
	v_fma_f32 v63, -v35, v59, v36
	v_mul_f32_e32 v60, v38, v46
	v_div_scale_f32 v50, s6, v30, v0, v30
	v_fmac_f32_e32 v51, v53, v51
	v_fmac_f32_e32 v48, v61, v48
	v_fma_f32 v61, -v33, v58, v34
	v_fmac_f32_e32 v59, v63, v45
	v_fma_f32 v64, -v37, v60, v38
	v_div_scale_f32 v40, s3, v28, v0, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v58, v61, v44
	v_div_scale_f32 v49, s5, v29, v0, v29
	v_fmac_f32_e32 v60, v64, v46
	v_div_scale_f32 v43, null, v0, v0, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v58, v34
	v_fma_f32 v34, -v35, v59, v36
	v_fma_f32 v35, -v37, v60, v38
	v_mul_f32_e32 v37, v50, v51
	v_dual_mul_f32 v62, v40, v47 :: v_dual_mul_f32 v53, v49, v48
	v_div_fmas_f32 v33, v33, v44, v58
	v_rcp_f32_e32 v52, v43
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v65, -v39, v62, v40
	v_div_fmas_f32 v34, v34, v45, v59
	v_div_fixup_f32 v25, v33, v0, v25
	v_div_scale_f32 v33, null, v0, v0, v32
	v_fmac_f32_e32 v62, v65, v47
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v26, v34, v0, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v43, v52, 1.0
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s0, 0, v0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v36, -v39, v62, v40
	v_rcp_f32_e32 v39, v33
	v_fmac_f32_e32 v52, v38, v52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v33, v39, 1.0
	v_fmac_f32_e32 v39, v38, v39
	v_div_fmas_f32 v35, v35, v46, v60
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v38, s3, v32, v0, v32
	v_div_fmas_f32 v34, v36, v47, v62
	v_fma_f32 v36, -v41, v53, v49
	v_div_fixup_f32 v27, v35, v0, v27
	v_div_scale_f32 v35, s1, v31, v0, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v28, v34, v0, v28
	v_fmac_f32_e32 v53, v36, v48
	v_fma_f32 v34, -v42, v37, v50
	v_div_scale_f32 v36, null, v0, v0, v17
	v_mul_f32_e32 v45, v38, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v41, v53, v49
	v_dual_fmac_f32 v37, v34, v51 :: v_dual_mul_f32 v34, v35, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v36
	v_div_scale_f32 v47, null, v0, v0, v18
	v_fma_f32 v42, -v42, v37, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v44, -v43, v34, v35
	s_mov_b32 vcc_lo, s5
	v_div_fmas_f32 v40, v40, v48, v53
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v46, -v36, v41, 1.0
	v_div_fmas_f32 v37, v42, v51, v37
	v_fmac_f32_e32 v34, v44, v52
	v_rcp_f32_e32 v42, v47
	v_fma_f32 v44, -v33, v45, v38
	v_fmac_f32_e32 v41, v46, v41
	v_div_scale_f32 v46, s5, v17, v0, v17
	v_fma_f32 v35, -v43, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v45, v44, v39
	v_div_scale_f32 v43, null, v0, v0, v19
	v_div_fixup_f32 v29, v40, v0, v29
	v_div_fixup_f32 v30, v37, v0, v30
	v_fma_f32 v40, -v47, v42, 1.0
	v_mul_f32_e32 v37, v46, v41
	v_fma_f32 v33, -v33, v45, v38
	v_rcp_f32_e32 v38, v43
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v42, v40, v42
	v_div_fmas_f32 v34, v35, v52, v34
	v_fma_f32 v35, -v36, v37, v46
	v_div_scale_f32 v44, null, v0, v0, v20
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, s1, v18, v0, v18
	v_div_fmas_f32 v33, v33, v39, v45
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v45, -v43, v38, 1.0
	v_fmac_f32_e32 v37, v35, v41
	v_rcp_f32_e32 v35, v44
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v32, v33, v0, v32
	v_fmac_f32_e32 v38, v45, v38
	v_fma_f32 v33, -v36, v37, v46
	v_div_scale_f32 v46, null, v0, v0, v21
	v_div_fixup_f32 v31, v34, v0, v31
	v_div_scale_f32 v36, s3, v19, v0, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v44, v35, 1.0
	v_div_fmas_f32 v33, v33, v41, v37
	v_rcp_f32_e32 v37, v46
	v_div_scale_f32 v41, s5, v20, v0, v20
	v_fmac_f32_e32 v35, v45, v35
	v_div_scale_f32 v45, null, v0, v0, v22
	v_div_fixup_f32 v17, v33, v0, v17
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v48, v45
	v_mul_f32_e32 v39, v40, v42
	v_fma_f32 v49, -v46, v37, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v34, -v47, v39, v40
	v_fmac_f32_e32 v37, v49, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v39, v34, v42
	v_mul_f32_e32 v34, v36, v38
	v_fma_f32 v33, -v47, v39, v40
	v_mul_f32_e32 v47, v41, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v43, v34, v36
	v_div_fmas_f32 v33, v33, v42, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v44, v47, v41
	v_fmac_f32_e32 v34, v40, v38
	v_div_scale_f32 v40, s1, v21, v0, v21
	v_fma_f32 v42, -v45, v48, 1.0
	v_div_fixup_f32 v18, v33, v0, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v43, v34, v36
	v_mul_f32_e32 v36, v40, v37
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v48, v42, v48
	v_div_scale_f32 v42, null, v0, v0, v23
	v_div_fmas_f32 v33, v33, v38, v34
	v_fma_f32 v38, -v46, v36, v40
	v_fmac_f32_e32 v47, v39, v35
	v_div_scale_f32 v39, s6, v22, v0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v19, v33, v0, v19
	v_fmac_f32_e32 v36, v38, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v44, v47, v41
	v_mul_f32_e32 v43, v39, v48
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v41, v42
	v_fma_f32 v33, -v46, v36, v40
	v_div_fmas_f32 v34, v34, v35, v47
	v_fma_f32 v38, -v45, v43, v39
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v44, null, v0, v0, v24
	v_div_fmas_f32 v33, v33, v37, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, v38, v48
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v35, v44
	v_div_scale_f32 v46, null, v0, v0, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v45, v43, v39
	v_fma_f32 v47, -v42, v41, 1.0
	v_div_fixup_f32 v20, v34, v0, v20
	v_div_scale_f32 v34, s3, v23, v0, v23
	v_div_fmas_f32 v36, v36, v48, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v41, v47, v41
	v_fma_f32 v38, -v44, v35, 1.0
	v_div_scale_f32 v39, s1, v24, v0, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v36, v0, v22
	v_rcp_f32_e32 v36, v46
	v_fmac_f32_e32 v35, v38, v35
	v_div_scale_f32 v38, null, v0, v0, v9
	v_div_fixup_f32 v21, v33, v0, v21
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v45, v39, v35
	v_rcp_f32_e32 v40, v38
	v_div_scale_f32 v48, null, v0, v0, v12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v46, v36, 1.0
	v_mul_f32_e32 v37, v34, v41
	v_fma_f32 v33, -v44, v45, v39
	v_rcp_f32_e32 v50, v48
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v36, v47, v36
	v_fma_f32 v43, -v42, v37, v34
	v_fmac_f32_e32 v45, v33, v35
	v_div_scale_f32 v33, s5, v9, v0, v9
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v37, v43, v41
	v_fma_f32 v43, -v38, v40, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v34, -v42, v37, v34
	v_div_scale_f32 v42, null, v0, v0, v11
	v_fmac_f32_e32 v40, v43, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v34, v34, v41, v37
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v37, -v44, v45, v39
	v_div_scale_f32 v41, s3, v10, v0, v10
	v_mul_f32_e32 v39, v33, v40
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v23, v34, v0, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v49, v41, v36
	v_div_fmas_f32 v35, v37, v35, v45
	v_fma_f32 v47, -v38, v39, v33
	v_fma_f32 v44, -v42, v43, 1.0
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v37, -v46, v49, v41
	v_div_fixup_f32 v24, v35, v0, v24
	v_fmac_f32_e32 v39, v47, v40
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, s6, v11, v0, v11
	v_fmac_f32_e32 v49, v37, v36
	v_div_scale_f32 v37, null, v0, v0, v13
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v35, -v48, v50, 1.0
	v_fma_f32 v33, -v38, v39, v33
	v_fma_f32 v38, -v46, v49, v41
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v34, -v42, v45, v44
	v_fmac_f32_e32 v50, v35, v50
	v_div_scale_f32 v35, s1, v12, v0, v12
	v_div_fmas_f32 v33, v33, v40, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v45, v34, v43
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v39, v35, v50
	v_div_fmas_f32 v36, v38, v36, v49
	v_fma_f32 v38, -v42, v45, v44
	v_div_scale_f32 v40, null, v0, v0, v14
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v9, v33, v0, v9
	v_div_fmas_f32 v38, v38, v43, v45
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v37, v34, 1.0
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v43, -v48, v39, v35
	v_div_fixup_f32 v10, v36, v0, v10
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v13, v0, v13
	v_fmac_f32_e32 v39, v43, v50
	v_div_fixup_f32 v11, v38, v0, v11
	v_div_scale_f32 v38, null, v0, v0, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v41, v34
	v_fma_f32 v36, -v40, v42, 1.0
	v_fma_f32 v35, -v48, v39, v35
	v_rcp_f32_e32 v44, v38
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v43, -v37, v33, v41
	v_fmac_f32_e32 v42, v36, v42
	v_div_scale_f32 v36, s5, v14, v0, v14
	v_div_fmas_f32 v35, v35, v50, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v43, v34
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v39, v36, v42
	v_div_scale_f32 v43, null, v0, v0, v16
	v_div_fixup_f32 v12, v35, v0, v12
	v_fma_f32 v35, -v37, v33, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v37, -v40, v39, v36
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v33, v35, v34, v33
	v_div_scale_f32 v34, null, v0, v0, v1
	v_fmac_f32_e32 v39, v37, v42
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v0, v0, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v35, s1, v15, v0, v15
	v_div_fixup_f32 v13, v33, v0, v13
	v_fma_f32 v33, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	v_fma_f32 v36, -v40, v39, v36
	v_mul_f32_e32 v40, v35, v44
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v45, v33, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v34, v37, 1.0
	v_div_scale_f32 v33, s3, v16, v0, v16
	v_div_fmas_f32 v36, v36, v42, v39
	v_fma_f32 v39, -v38, v40, v35
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v0, v0, v3
	v_mul_f32_e32 v42, v33, v45
	v_div_scale_f32 v48, s5, v1, v0, v1
	v_fma_f32 v49, -v41, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	v_mul_f32_e32 v51, v48, v37
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s6, v2, v0, v2
	v_div_fixup_f32 v14, v36, v0, v14
	v_fma_f32 v35, -v38, v40, v35
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v33, -v43, v42, v33
	v_fmac_f32_e32 v51, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_div_fmas_f32 v35, v35, v44, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, null, v0, v0, v4
	v_div_fmas_f32 v33, v33, v45, v42
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v15, v35, v0, v15
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v16, v33, v0, v16
	v_div_fixup_f32 v1, v34, v0, v1
	v_div_scale_f32 v34, null, v0, v0, v5
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v44, null, v0, v0, v8
	v_div_fmas_f32 v37, v37, v47, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v33, -v46, v36, v39
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v46, v44
	v_div_fixup_f32 v2, v37, v0, v2
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v0, v0, v6
	v_div_scale_f32 v37, null, v0, v0, v7
	v_div_scale_f32 v38, vcc_lo, v4, v0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v39, v35
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v3, v33, v0, v3
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v33, -v34, v36, 1.0
	v_mul_f32_e32 v43, v38, v42
	v_fma_f32 v50, -v44, v46, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s1, v5, v0, v5
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v48, -v37, v41, 1.0
	v_fma_f32 v47, -v40, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v49, v33, v36 :: v_dual_fmac_f32 v46, v50, v46
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v0, v6
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s5, v7, v0, v7
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	v_div_scale_f32 v50, s6, v8, v0, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v51, v45, v39 :: v_dual_mul_f32 v52, v48, v41
	v_fmac_f32_e32 v49, v47, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v53, v50, v46
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v51, v45
	v_fma_f32 v47, -v37, v52, v48
	v_fma_f32 v33, -v34, v49, v33
	v_fma_f32 v34, -v44, v53, v50
	v_div_fmas_f32 v38, v38, v42, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v51, v40, v39 :: v_dual_fmac_f32 v52, v47, v41
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v53, v34, v46
	v_div_fmas_f32 v33, v33, v36, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v44, v53, v50
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v33, v0, v5
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v8, 0, v25, s0
	v_cndmask_b32_e64 v25, 0, v26, s0
	v_cndmask_b32_e64 v26, 0, v27, s0
	v_cndmask_b32_e64 v27, 0, v28, s0
	v_cndmask_b32_e64 v28, 0, v29, s0
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_bfe_u32 v37, v8, 16, 1
	v_bfe_u32 v38, v25, 16, 1
	v_bfe_u32 v39, v26, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v30, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s5, v8, v8
	v_add3_u32 v37, v8, v37, 0x7fff
	v_add3_u32 v8, v25, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v25, v25
	v_add3_u32 v25, v26, v39, 0x7fff
	v_cmp_o_f32_e64 s7, v26, v26
	v_bfe_u32 v26, v27, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v30, 0, v31, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v8.l, 0x7fff, v37.h, s5
	v_bfe_u32 v37, v28, 16, 1
	v_bfe_u32 v38, v29, 16, 1
	v_add3_u32 v26, v27, v26, 0x7fff
	v_cmp_o_f32_e64 s5, v27, v27
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v31, 0, v32, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s6
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s7
	v_add3_u32 v27, v28, v37, 0x7fff
	v_cmp_o_f32_e64 s6, v28, v28
	v_add3_u32 v28, v29, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v29, v29
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s5
	v_bfe_u32 v26, v30, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s6
	v_bfe_u32 v29, v31, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s7
	v_bfe_u32 v28, v17, 16, 1
	v_add3_u32 v26, v30, v26, 0x7fff
	v_cmp_o_f32_e64 s5, v30, v30
	v_add3_u32 v29, v31, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v31, v31
	v_add3_u32 v28, v17, v28, 0x7fff
	v_cmp_o_f32_e64 s7, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v26.h, s5
	v_bfe_u32 v26, v18, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v29.h, s6
	v_bfe_u32 v29, v19, 16, 1
	v_bfe_u32 v30, v20, 16, 1
	v_cmp_o_f32_e64 s5, v18, v18
	v_add3_u32 v26, v18, v26, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s7
	v_add3_u32 v18, v19, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v19, v19
	v_add3_u32 v19, v20, v30, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_cndmask_b16 v28.h, 0x7fff, v26.h, s5
	v_bfe_u32 v20, v21, 16, 1
	v_bfe_u32 v26, v22, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s6
	v_cmp_o_f32_e64 s5, v21, v21
	v_cmp_o_f32_e64 s6, v22, v22
	v_add3_u32 v20, v21, v20, 0x7fff
	v_add3_u32 v21, v22, v26, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s7
	v_bfe_u32 v19, v23, 16, 1
	v_bfe_u32 v22, v24, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s5
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v9, 16, 1
	v_add3_u32 v19, v23, v19, 0x7fff
	v_cmp_o_f32_e64 s7, v23, v23
	v_bfe_u32 v23, v10, 16, 1
	v_cmp_o_f32_e64 s6, v9, v9
	v_add3_u32 v21, v9, v21, 0x7fff
	v_add3_u32 v22, v24, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v24, v24
	v_add3_u32 v9, v10, v23, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s7
	v_cmp_o_f32_e64 s7, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v12, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s5
	v_bfe_u32 v22, v13, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v11, v11
	v_add3_u32 v11, v12, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v12, v12
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	v_add3_u32 v12, v13, v22, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s6
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v21, v16, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v14, v14
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s7
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_add3_u32 v14, v16, v21, 0x7fff
	v_cmp_o_f32_e64 s7, v16, v16
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v1, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s6
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s7
	v_bfe_u32 v14, v3, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v1, v1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v1, v2, v15, 0x7fff
	v_cmp_o_f32_e64 s6, v2, v2
	v_add3_u32 v2, v3, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v1.l, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v5, 16, 1
	v_add3_u32 v3, v4, v3, 0x7fff
	v_cmp_o_f32_e64 s5, v4, v4
	v_bfe_u32 v4, v6, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s6
	v_add3_u32 v13, v5, v13, 0x7fff
	v_bfe_u32 v14, v7, 16, 1
	v_cmp_o_f32_e64 s6, v5, v5
	v_bfe_u32 v5, v0, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s7
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s7, v6, v6
	v_add3_u32 v6, v7, v14, 0x7fff
	v_cmp_o_f32_e64 s8, v7, v7
	v_add3_u32 v5, v0, v5, 0x7fff
	v_cmp_o_f32_e64 s9, v0, v0
	v_cndmask_b16 v0.l, 0x7fff, v13.h, s6
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s7
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s5
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s8
	v_cndmask_b16 v3.h, 0x7fff, v5.h, s9
	.loc	1 843 74                        ; attention.py:843:74
	v_lshrrev_b32_e32 v32, 1, v54
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v5, v8, v27, s4
	v_cndmask_b32_e64 v6, v17, v25, s4
	v_cndmask_b32_e64 v7, v25, v17, s4
	v_cndmask_b32_e64 v13, v28, v20, s4
	v_cndmask_b32_e64 v16, v12, v9, s4
	v_cndmask_b32_e64 v9, v9, v12, s4
	v_cndmask_b32_e64 v12, v11, v10, s4
	v_cndmask_b32_e64 v10, v10, v11, s4
	v_cndmask_b32_e64 v17, v0, v1, s4
	v_cndmask_b32_e64 v0, v1, v0, s4
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v36, s22, v55
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v15, v18, v19, s4
	v_cndmask_b32_e64 v1, v2, v3, s4
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v33, 16, v32
	s_mov_b32 s5, 0x76543210
	v_or_b32_e32 v34, 32, v32
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v14, v19, v18, s4
	v_cndmask_b32_e64 v18, v3, v2, s4
	v_permlanex16_b32 v2, v5, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v13, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v10, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v0, s5, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v4, v27, v8, s4
	v_cndmask_b32_e64 v8, v20, v28, s4
	v_permlanex16_b32 v9, v9, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v35, 48, v32
	.loc	1 846 36                        ; attention.py:846:36
	v_permlanex16_b32 v3, v7, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v15, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v1, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s22, v33
	v_cmp_gt_i32_e64 s3, s22, v32
	v_cmp_gt_i32_e64 s0, s22, v34
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v10, v11, v12, v56
	v_perm_b32 v11, v11, v12, v57
	v_perm_b32 v12, v13, v17, v56
	v_perm_b32 v13, v13, v17, v57
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v17, v36, v33, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v0, v2, v4, v56
	v_perm_b32 v1, v2, v4, v57
	v_perm_b32 v4, v5, v8, v56
	v_perm_b32 v5, v5, v8, v57
	v_perm_b32 v8, v9, v16, v56
	v_perm_b32 v9, v9, v16, v57
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v16, v36, v32, 1
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s22, v35
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v2, v3, v6, v56
	v_perm_b32 v3, v3, v6, v57
	v_perm_b32 v6, v7, v14, v56
	v_perm_b32 v7, v7, v14, v57
	v_perm_b32 v14, v15, v18, v56
	v_perm_b32 v15, v15, v18, v57
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v18, v36, v34, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s2, vcc_lo
	s_and_b32 s3, s2, s3
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v19, v36, v35, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s1
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[20:23], 0 offen
	buffer_store_b128 v[4:7], v17, s[20:23], 0 offen
	buffer_store_b128 v[8:11], v18, s[20:23], 0 offen
	buffer_store_b128 v[12:15], v19, s[20:23], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp44:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 142
		.amdhsa_next_free_sgpr 53
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_vgpr, 142
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11136
; TotalNumSgprs: 55
; NumVgprs: 142
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 55
; NumVGPRsForWavesPerEU: 142
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
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
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
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
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     142
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
