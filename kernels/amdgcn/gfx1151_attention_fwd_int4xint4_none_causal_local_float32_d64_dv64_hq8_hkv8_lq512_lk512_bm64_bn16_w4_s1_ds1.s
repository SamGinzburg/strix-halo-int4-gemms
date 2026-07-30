	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x60
	s_load_b64 s[24:25], s[0:1], 0x0
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v35, 1, v0
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s4, s2, 6
	.loc	1 583 26                        ; attention.py:583:26
	s_lshl_b32 s14, s3, 9
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v6, v8 :: v_dual_lshlrev_b32 v1, 4, v35
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s22, s4, s14
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, s4, v2
	.loc	1 584 26                        ; attention.py:584:26
	v_or_b32_e32 v3, s22, v2
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_load_b32 s15, s[0:1], 0x88
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v4
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x80
	s_load_b64 s[20:21], s[0:1], 0x38
	v_dual_mov_b32 v4, v8 :: v_dual_and_b32 v33, 0x60, v0
	.loc	1 571 21                        ; attention.py:571:21
	v_bfe_u32 v50, v0, 4, 1
	.loc	1 584 26                        ; attention.py:584:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s18, v3, v[1:2]
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s2, s18, v1
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s25, s25, 0xffff
	v_dual_mov_b32 v7, v8 :: v_dual_lshlrev_b32 v42, 1, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v21, 1, v33
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 585 26                        ; attention.py:585:26
	v_dual_cndmask_b32 v1, 0x80000000, v2 :: v_dual_and_b32 v34, 15, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_or_b32 v22, v42, 30, v50
	v_mov_b32_e32 v2, v8
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v56, 4, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v59, v21, v34
	.loc	1 585 26                        ; attention.py:585:26
	buffer_load_b128 v[17:20], v1, s[24:27], 0 offen
	v_lshlrev_b32_e32 v21, 2, v22
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s2, s4, s12
	v_mov_b32_e32 v5, v8
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v43, s4, v59
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s4, s15, s4
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v22, 4, v21
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s4, s4, 64
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s5, s2, s15
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s6, s4, s13
	.loc	1 621 25                        ; attention.py:621:25
	s_min_i32 s4, s4, 0x200
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s6, s6, 0x200
	.loc	1 622 35                        ; attention.py:622:35
	s_add_i32 s4, s4, 15
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s6, s6, 15
	.loc	1 622 34                        ; attention.py:622:34
	s_ashr_i32 s7, s4, 31
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s8, s6, 31
	.loc	1 622 34                        ; attention.py:622:34
	s_lshr_b32 s7, s7, 28
	.loc	1 619 34                        ; attention.py:619:34
	s_lshr_b32 s8, s8, 28
	.loc	1 622 34                        ; attention.py:622:34
	s_add_i32 s4, s4, s7
	.loc	1 619 34                        ; attention.py:619:34
	s_add_i32 s6, s6, s8
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s5, s5, 0
	.loc	1 622 33                        ; attention.py:622:33
	s_and_b32 s4, s4, -16
	.loc	1 619 33                        ; attention.py:619:33
	s_and_b32 s6, s6, -16
	v_mov_b32_e32 v3, v8
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
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v58, 2, v50
	v_or_b32_e32 v57, 4, v50
	v_or_b32_e32 v55, 6, v50
	v_or_b32_e32 v53, 8, v50
	v_or_b32_e32 v54, 10, v50
	v_or_b32_e32 v52, 12, v50
	v_or_b32_e32 v51, 14, v50
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 0x200, v43
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v60, v8
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s23, s5, 0x7ffffff0
	.loc	1 622 18                        ; attention.py:622:18
	s_min_i32 s33, s6, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_ge_i32 s23, s33
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v36, v21, v17
	ds_bpermute_b32 v37, v21, v18
	ds_bpermute_b32 v38, v21, v19
	ds_bpermute_b32 v40, v21, v20
	ds_bpermute_b32 v39, v22, v17
	ds_bpermute_b32 v48, v22, v18
	ds_bpermute_b32 v46, v22, v19
	ds_bpermute_b32 v47, v22, v20
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 591 17 is_stmt 1              ; attention.py:591:17
	v_or_b32_e32 v1, s22, v59
	v_dual_mov_b32 v73, 0x7632 :: v_dual_and_b32 v2, 16, v0
	.loc	1 771 51                        ; attention.py:771:51
	v_and_b32_e32 v4, 0x70, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v72, 0x5410 :: v_dual_lshlrev_b32 v1, 1, v1
	v_lshrrev_b32_e32 v6, 2, v33
	v_dual_mov_b32 v87, 0xff800000 :: v_dual_lshlrev_b32 v8, 7, v0
	v_mov_b32_e32 v33, 0
	.loc	1 590 31                        ; attention.py:590:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_and_b32_e32 v7, 24, v42
	v_cmp_eq_u32_e32 vcc_lo, 0, v35
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v10, 5, v0
	v_dual_mov_b32 v26, v33 :: v_dual_lshlrev_b32 v41, 2, v34
	v_dual_mov_b32 v28, v33 :: v_dual_add_nc_u32 v75, s15, v43
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s9, 0xffff
	s_mov_b32 s24, s8
	s_clause 0x1
	s_load_b32 s8, s[0:1], 0x68
	s_load_b64 s[28:29], s[0:1], 0x28
	buffer_load_u16 v60, v1, s[24:27], 0 offen
	.loc	1 585 26                        ; attention.py:585:26
	v_cmp_eq_u32_e64 s1, 0, v2
	v_cndmask_b32_e64 v35, 0x90, 0, vcc_lo
	v_bfe_i32 v74, v0, 2, 1
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v78, 0x700, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v43, v40, v47, s1
	v_lshrrev_b32_e32 v79, 2, v4
	v_dual_mov_b32 v27, v33 :: v_dual_and_b32 v80, 0x160, v10
	v_mov_b32_e32 v32, v33
	v_lshl_or_b32 v34, v34, 5, v7
	v_cndmask_b32_e64 v45, v37, v48, s1
	v_cndmask_b32_e64 v44, v36, v39, s1
	v_cndmask_b32_e64 v47, v47, v40, s1
	v_cndmask_b32_e64 v49, v48, v37, s1
	v_cndmask_b32_e64 v48, v39, v36, s1
	v_cndmask_b32_e64 v39, 0x1054, v72, s1
	v_cndmask_b32_e64 v40, 0x3276, v73, s1
	v_mov_b32_e32 v29, v33
	v_mov_b32_e32 v18, v33
	v_cndmask_b32_e64 v42, v38, v46, s1
	v_cndmask_b32_e64 v46, v46, v38, s1
	v_xor_b32_e32 v36, 8, v34
	v_xor_b32_e32 v37, 16, v34
	v_xor_b32_e32 v38, 24, v34
	v_xor_b32_e32 v35, v35, v79
	v_add_nc_u32_e32 v79, 0, v78
	v_and_or_b32 v72, 0x90, v74, v80
	v_add_nc_u32_e32 v74, 0, v34
	v_lshl_or_b32 v34, v39, 8, v39
	v_lshl_or_b32 v39, v40, 8, v40
	v_dual_mov_b32 v30, v33 :: v_dual_lshlrev_b32 v3, 2, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v21, v33 :: v_dual_and_b32 v34, 0x540054, v34
	v_dual_mov_b32 v24, v33 :: v_dual_add_nc_u32 v79, v79, v35
	v_dual_mov_b32 v10, v33 :: v_dual_and_b32 v35, 0x760076, v39
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v5, 3, v0
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v0, 28, v3
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v76, s13, v75
	v_xor_b32_e32 v77, v3, v6
	v_mov_b32_e32 v12, v33
	v_xor_b32_e32 v40, 16, v72
	v_lshl_or_b32 v34, v34, 4, v34
	v_lshl_or_b32 v35, v35, 4, v35
	.loc	1 742 27                        ; attention.py:742:27
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s44, s8, 0x3fb8aa3b
	v_or_b32_e32 v61, s14, v50
	v_or_b32_e32 v62, s14, v58
	v_or_b32_e32 v63, s14, v57
	v_or_b32_e32 v64, s14, v55
	v_or_b32_e32 v65, s14, v53
	v_or_b32_e32 v66, s14, v54
	v_or_b32_e32 v67, s14, v52
	v_or_b32_e32 v68, s14, v51
	v_lshl_or_b32 v69, s3, 8, v56
	.loc	1 748 47                        ; attention.py:748:47
	v_subrev_nc_u32_e32 v70, s12, v75
	v_or_b32_e32 v71, s14, v5
	v_mov_b32_e32 v31, v33
	v_dual_mov_b32 v19, v33 :: v_dual_add_nc_u32 v78, 0, v38
	v_dual_mov_b32 v20, v33 :: v_dual_add_nc_u32 v73, 0, v77
	v_dual_mov_b32 v22, v33 :: v_dual_add_nc_u32 v77, 0, v37
	v_dual_mov_b32 v23, v33 :: v_dual_add_nc_u32 v80, 0, v40
	v_dual_mov_b32 v11, v33 :: v_dual_and_b32 v82, 0x5040504, v34
	v_mov_b32_e32 v13, v33
	v_dual_mov_b32 v14, v33 :: v_dual_and_b32 v83, 0x7060706, v35
	v_mov_b32_e32 v15, v33
	v_mov_b32_e32 v16, v33
	v_mov_b32_e32 v2, v33
	v_mov_b32_e32 v3, v33
	v_mov_b32_e32 v4, v33
	v_mov_b32_e32 v5, v33
	v_mov_b32_e32 v6, v33
	v_mov_b32_e32 v7, v33
	v_mov_b32_e32 v8, v33
	.loc	1 714 31                        ; attention.py:714:31
	v_cmp_gt_i32_e64 s0, s18, v0
	v_min_i32_e32 v75, v75, v76
	v_add_nc_u32_e32 v76, 0, v36
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	.loc	1 794 21                        ; attention.py:794:21
	s_lshl_b32 s34, s3, 5
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s35, 0x76543210
	s_mov_b32 s42, s26
	s_and_b32 s41, s7, 0xffff
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s36, s10
	s_mov_b32 s40, s6
	s_mov_b32 s24, s4
	s_mov_b32 s25, s5
	s_mov_b32 s37, s11
	.loc	1 742 17                        ; attention.py:742:17
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s43, s27
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e32 vcc_lo, s19, v41
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v81, 16, v60
	v_mov_b32_e32 v60, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 732 30                        ; attention.py:732:30
	v_mov_b32_e32 v84, v81
	v_mov_b32_e32 v85, v81
	v_mov_b32_e32 v86, v81
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 717 33                        ; attention.py:717:33
	v_dual_mov_b32 v35, v33 :: v_dual_add_nc_u32 v88, s23, v71
	v_mov_b32_e32 v40, v33
	v_dual_mov_b32 v34, v33 :: v_dual_add_nc_u32 v93, 0, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 711 32                        ; attention.py:711:32
	v_mad_u64_u32 v[109:110], null, v88, s18, v[0:1]
	.loc	1 717 33                        ; attention.py:717:33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	.loc	1 771 36                        ; attention.py:771:36
	s_lshr_b32 s1, s23, 1
	.loc	1 717 33                        ; attention.py:717:33
	v_dual_mov_b32 v36, v33 :: v_dual_add_nc_u32 v117, s1, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v108, v40 :: v_dual_mov_b32 v107, v39
	v_dual_mov_b32 v106, v38 :: v_dual_mov_b32 v105, v37
	v_dual_mov_b32 v104, v36 :: v_dual_mov_b32 v103, v35
	v_dual_mov_b32 v102, v34 :: v_dual_mov_b32 v101, v33
	.loc	1 712 32                        ; attention.py:712:32
	v_cndmask_b32_e64 v34, 0x80000000, v109, s0
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v89, s23, v51
	.loc	1 798 53                        ; attention.py:798:53
	s_lshr_b32 s3, s23, 4
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v98, s23, v53
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s3, s3, s34
	.loc	1 712 32                        ; attention.py:712:32
	buffer_load_b32 v34, v34, s[24:27], 0 offen
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s48, s3, s19
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s1, v89, v70
	.loc	1 748 21 is_stmt 0              ; attention.py:748:21
	v_cmp_ge_i32_e64 s3, v75, v89
	.loc	1 712 32 is_stmt 1              ; attention.py:712:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v91, v64, s23, 1
	v_add_lshl_u32 v116, v67, s23, 1
	v_add_lshl_u32 v114, v65, s23, 1
	v_add_lshl_u32 v92, v63, s23, 1
	v_add_lshl_u32 v96, v62, s23, 1
	v_add_lshl_u32 v97, v61, s23, 1
	v_add_lshl_u32 v100, v66, s23, 1
	v_add_lshl_u32 v115, v68, s23, 1
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s8, v98, v70
	.loc	1 748 21 is_stmt 0              ; attention.py:748:21
	v_cmp_ge_i32_e64 s9, v75, v98
	.loc	1 708 31 is_stmt 1              ; attention.py:708:31
	v_or_b32_e32 v95, s23, v54
	v_or_b32_e32 v94, s23, v52
	v_or_b32_e32 v99, s23, v55
	v_or_b32_e32 v111, s23, v57
	v_or_b32_e32 v112, s23, v58
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s6, v95, v70
	.loc	1 748 21 is_stmt 0              ; attention.py:748:21
	v_cmp_ge_i32_e64 s7, v75, v95
	.loc	1 708 31 is_stmt 1              ; attention.py:708:31
	v_or_b32_e32 v113, s23, v50
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s4, v94, v70
	.loc	1 748 21 is_stmt 0              ; attention.py:748:21
	v_cmp_ge_i32_e64 s5, v75, v94
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s10, v99, v70
	.loc	1 748 21                        ; attention.py:748:21
	v_cmp_ge_i32_e64 s11, v75, v99
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s12, v111, v70
	.loc	1 748 21                        ; attention.py:748:21
	v_cmp_ge_i32_e64 s13, v75, v111
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s14, v112, v70
	.loc	1 748 21                        ; attention.py:748:21
	v_cmp_ge_i32_e64 s15, v75, v112
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s16, v113, v70
	.loc	1 748 21                        ; attention.py:748:21
	v_cmp_ge_i32_e64 s17, v75, v113
	.loc	1 749 21 is_stmt 1              ; attention.py:749:21
	s_and_b32 s1, s3, s1
	s_and_b32 s3, s5, s4
	s_and_b32 s4, s9, s8
	s_and_b32 s5, s11, s10
	s_and_b32 s8, s17, s16
	s_and_b32 s1, s2, s1
	s_and_b32 s3, s2, s3
	s_and_b32 s4, s2, s4
	s_and_b32 s5, s2, s5
	s_and_b32 s8, s2, s8
	.loc	1 775 32                        ; attention.py:775:32
	v_mov_b16_e32 v90.l, 0
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s23, s23, 16
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v40.h, v90.l
	v_mov_b16_e32 v94.h, v90.l
	v_mov_b16_e32 v99.h, v90.l
	.loc	1 712 32                        ; attention.py:712:32
	s_waitcnt vmcnt(0)
	ds_store_b32 v73, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[34:35], v74
	ds_load_b64 v[36:37], v76
	ds_load_b64 v[38:39], v77
	ds_load_b64 v[88:89], v78
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[101:108], v[34:35], v[48:49], v[101:108] neg_lo:[1,1,0]
	.loc	1 774 30                        ; attention.py:774:30
	v_mad_u64_u32 v[34:35], null, v117, s19, v[41:42]
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[101:108], v[36:37], v[46:47], v[101:108] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[101:108], v[38:39], v[44:45], v[101:108] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[101:108], v[88:89], v[42:43], v[101:108] neg_lo:[1,1,0]
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v36, v104
	.loc	1 797 41                        ; attention.py:797:41
	v_add_lshl_u32 v104, s48, v41, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v88, v106
	v_cvt_f32_i32_e32 v89, v105
	v_cvt_f32_i32_e32 v98, v107
	v_cvt_f32_i32_e32 v39, v101
	.loc	1 797 41                        ; attention.py:797:41
	v_dual_cndmask_b32 v35, 0x80000000, v104 :: v_dual_cndmask_b32 v104, 0x80000000, v34
	.loc	1 727 37                        ; attention.py:727:37
	s_clause 0x7
	buffer_load_u16 v91, v91, s[36:39], 0 offen
	buffer_load_u16 v105, v116, s[36:39], 0 offen
	buffer_load_u16 v106, v114, s[36:39], 0 offen
	buffer_load_u16 v92, v92, s[36:39], 0 offen
	buffer_load_u16 v96, v96, s[36:39], 0 offen
	buffer_load_u16 v97, v97, s[36:39], 0 offen
	buffer_load_u16 v100, v100, s[36:39], 0 offen
	buffer_load_u16 v107, v115, s[36:39], 0 offen
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_b64 v[34:35], v35, s[28:31], 0 offen
	.loc	1 775 32                        ; attention.py:775:32
	buffer_load_b32 v104, v104, s[40:43], 0 offen
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v37, v103
	v_cvt_f32_i32_e32 v38, v102
	v_cvt_f32_i32_e32 v95, v108
	v_dual_mul_f32 v36, v86, v36 :: v_dual_mul_f32 v39, v81, v39
	v_mul_f32_e32 v88, v84, v88
	v_mul_f32_e32 v98, v85, v98
	v_dual_mul_f32 v37, v85, v37 :: v_dual_mul_f32 v38, v84, v38
	v_mul_f32_e32 v89, v81, v89
	v_mul_f32_e32 v95, v86, v95
	.loc	1 749 21                        ; attention.py:749:21
	s_and_b32 s48, s7, s6
	s_and_b32 s6, s13, s12
	s_and_b32 s7, s15, s14
	s_and_b32 s6, s2, s6
	s_and_b32 s7, s2, s7
	s_and_b32 s9, s2, s48
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v102.l, v90.l
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v103.h, v90.l
	v_mov_b16_e32 v101.h, v90.l
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s23, s33
	.loc	1 727 37                        ; attention.py:727:37
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v91, 16, v91
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v92, 16, v92
	v_lshlrev_b32_e32 v106, 16, v106
	.loc	1 732 30                        ; attention.py:732:30
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v36, v36, v91 :: v_dual_lshlrev_b32 v97, 16, v97
	.loc	1 727 37                        ; attention.py:727:37
	v_lshlrev_b32_e32 v96, 16, v96
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v37, v37, v92
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v90.h, v34.l
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v39, v39, v97
	v_dual_mul_f32 v38, v38, v96 :: v_dual_lshlrev_b32 v107, 16, v107
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v36, s47, v36 :: v_dual_lshlrev_b32 v105, 16, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v37, s46, v37 :: v_dual_mul_f32 v92, v95, v107
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v95, v98, v105 :: v_dual_lshlrev_b32 v100, 16, v100
	.loc	1 797 41                        ; attention.py:797:41
	v_and_b32_e32 v109, 0xffff0000, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v89, v89, v106 :: v_dual_mul_f32 v92, s47, v92
	v_mul_f32_e32 v88, v88, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v95, s46, v95 :: v_dual_and_b32 v108, 0xffff0000, v34
	v_dual_mul_f32 v89, s44, v89 :: v_dual_mul_f32 v38, s45, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v88, s45, v88 :: v_dual_mul_f32 v39, s44, v39
	.loc	1 783 76                        ; attention.py:783:76
	s_waitcnt vmcnt(0)
	v_and_b16 v34.l, v104.l, 15
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v89, 0xff800000, v89, s4
	v_cndmask_b32_e64 v92, 0xff800000, v92, s1
	v_cndmask_b32_e64 v88, 0xff800000, v88, s9
	v_cndmask_b32_e64 v95, 0xff800000, v95, s3
	v_cndmask_b32_e64 v96, 0xff800000, v37, s6
	v_cndmask_b32_e64 v38, 0xff800000, v38, s7
	v_cndmask_b32_e64 v39, 0xff800000, v39, s8
	v_cndmask_b32_e64 v97, 0xff800000, v36, s5
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v110, v104, 0, 8
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v34.h, 4, v104.l
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v36, v95, v92
	v_max3_f32 v37, v39, v38, v96
	v_max3_f32 v98, v97, v89, v88
.Ltmp2:
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s10, 7, v34.l
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b32_e32 v91, 8, v104
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v34.h, v34.h, 15
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v102.h, v35.l
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v98, v37, v98, v36
.Ltmp4:
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v36.l, v110.l
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v35.h, 0, -16, s10
	.loc	1 775 32                        ; attention.py:775:32
	v_mov_b16_e32 v40.l, v104.h
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v35.l, v104.h, 15
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b32_e32 v37, 24, v104
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b32_e32 v100, 20, v104
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v104, v91, 0, 8
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s11, 0, v36.l
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v94.l, v34.l, v35.h
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v34.l, v34.h, -16
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s10, 7, v35.l
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v36.l, v104.l
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v104, v37, 0, 8
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v35.h, v100.l, 15
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v99.l, v34.h, v34.l, s11
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v34.l, v91.l, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v34.h, 4, v91.l
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v91, v40, 0, 8
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s11, 0, v36.l
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v106, v98, s35, 0xfedcba98 op_sel:[1,0]
.Ltmp6:
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v107, v99, 0, 16
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v34.h, v34.h, 15
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v36.l, v91.l
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v110.h, v90.l
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v118, v87, v98, v106
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v106, v94, 0, 16
	v_cvt_f32_i32_e32 v107, v107
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s12, 0, v36.l
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v36.l, 0, -16, s10
	.loc	1 786 38 is_stmt 0              ; attention.py:786:38
	v_cmp_lt_u16_e64 s10, 7, v34.l
	.loc	1 814 31 is_stmt 1              ; attention.py:814:31
	v_cvt_f32_i32_e32 v106, v106
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v98.h, v90.l
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v96, v96, v118
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v40.l, v35.l, v36.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v35.l, v37.l, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v36.l, 4, v37.l
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v37.l, v104.l
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v36.h, 0, -16, s10
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v96, v96
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s10, 7, v35.l
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v107, v90, v107
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s13, 0, v37.l
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v37.l, v34.l, v36.h
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v34.l, v34.h, -16
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v38, v38, v118
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v94.l, v107.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_bfe_i32 v37, v37, 0, 16
	.loc	1 787 30 is_stmt 1              ; attention.py:787:30
	v_cndmask_b16 v91.l, v34.h, v34.l, s11
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b16 v34.l, v35.h, -16
	.loc	1 814 30 is_stmt 1              ; attention.py:814:30
	v_mov_b16_e32 v34.h, v90.l
	v_cmp_o_f32_e64 s11, v107, v107
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 768 49 is_stmt 1              ; attention.py:768:49
	v_exp_f32_e32 v38, v38
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v100.l, v35.h, v34.l, s12
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v34.l, 0, -16, s10
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v35.h, v90.l
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v37, v108, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_bfe_i32 v100, v100, 0, 16
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_or_b16 v35.l, v35.l, v34.l
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v34.l, v36.l, -16
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v101.l, v37.h
	v_cmp_o_f32_e64 s15, v37, v37
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_cvt_f32_i32_e32 v100, v100
	v_bfe_i32 v105, v35, 0, 16
	.loc	1 787 30 is_stmt 1              ; attention.py:787:30
	v_cndmask_b16 v34.l, v36.l, v34.l, s13
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v36, v91, 0, 16
	v_bfe_i32 v91, v40, 0, 16
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s13, 0xff800000, v87
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v105, v105
	v_bfe_i32 v104, v34, 0, 16
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v91, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v100, v102, v100 :: v_dual_mul_f32 v105, v109, v105
	v_cvt_f32_i32_e32 v104, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v36, v108, v36 :: v_dual_mul_f32 v91, v102, v91
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_mov_b16_e32 v102.h, v90.l
	v_mov_b16_e32 v34.l, v100.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v104, v109, v104
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v99.l, v36.h
	v_mov_b16_e32 v103.l, v91.h
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v106, v90, v106
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s12, v91, v91
	v_mov_b16_e32 v35.l, v104.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 768 62 is_stmt 1              ; attention.py:768:62
	v_dual_sub_f32 v88, v88, v118 :: v_dual_and_b32 v103, 1, v103
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v40.l, v106.h
	v_mov_b16_e32 v102.l, v105.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v35, 1, v35
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v88, v88
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v91, v91, v103, 0x7fff
	.loc	1 767 74                        ; attention.py:767:74
	v_dual_sub_f32 v103, v87, v118 :: v_dual_and_b32 v40, 1, v40
	.loc	1 814 30                        ; attention.py:814:30
	v_and_b32_e32 v99, 1, v99
	v_and_b32_e32 v101, 1, v101
	v_cmp_o_f32_e64 s10, v106, v106
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v40, v106, v40, 0x7fff
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v103, v103
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s14, v36, v36
	v_add3_u32 v36, v36, v99, 0x7fff
	v_add3_u32 v37, v37, v101, 0x7fff
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v88, 0, v88, s9
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s16, v105, v105
	v_add3_u32 v35, v104, v35, 0x7fff
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v99.h, v90.l
	v_mov_b16_e32 v101.h, v90.l
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s14
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v120, 0, v103, s13
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v89, v89, v118
	.loc	1 814 30                        ; attention.py:814:30
	v_and_b32_e32 v94, 1, v94
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v29, v29, v120 :: v_dual_and_b32 v102, 1, v102
	v_mul_f32_e32 v26, v26, v120
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v89, v89
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v25, v25, v120
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v94, v107, v94, 0x7fff
	v_cndmask_b16 v94.l, 0x7fff, v40.h, s10
	v_cmp_o_f32_e64 s10, v100, v100
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v27, v27, v120
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v34, v100, v34, 0x7fff
	v_cndmask_b16 v94.h, 0x7fff, v94.h, s11
	v_cmp_o_f32_e64 s11, v104, v104
	v_add3_u32 v100, v105, v102, 0x7fff
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v89, 0, v89, s4
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s15
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v99.l, v88.h
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v39, v39, v118
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v34.l, 0x7fff, v91.h, s12
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v101.l, v89.h
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v97, v97, v118
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s10
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s11
	v_cndmask_b16 v35.l, 0x7fff, v100.h, s16
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v39, v39
	.loc	1 814 30                        ; attention.py:814:30
	ds_store_2addr_b32 v79, v94, v36 offset1:8
	ds_store_2addr_b32 v79, v34, v35 offset0:16 offset1:24
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v94, 1, v101
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v97, v97
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v91, 0, v96, s6
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_mov_b16_e32 v87.h, v90.l
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v95, v95, v118 :: v_dual_mul_f32 v28, v28, v120
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v37, 0, v38, s7
	v_cndmask_b32_e64 v38, 0, v39, s8
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_mov_b16_e32 v87.l, v91.h
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v92, v92, v118
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v106.h, v90.l
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v39, 0, v97, s5
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v90.h, v90.l
	v_mov_b16_e32 v40.h, v90.l
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v95, v95
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v98.l, v37.h
	v_mov_b16_e32 v106.l, v38.h
	v_mov_b16_e32 v90.l, v39.h
	v_and_b32_e32 v87, 1, v87
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v92, v92
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v31, v31, v120 :: v_dual_and_b32 v34, 1, v98
	v_dual_mul_f32 v30, v30, v120 :: v_dual_and_b32 v35, 1, v106
	v_dual_mul_f32 v17, v17, v120 :: v_dual_and_b32 v36, 1, v90
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v119, 0, v95, s3
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s3, v38, v38
	v_cmp_o_f32_e64 s4, v39, v39
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v92, 0, v92, s1
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s1, v37, v37
	v_cmp_o_f32_e64 s5, v91, v91
	v_and_b32_e32 v90, 1, v99
	v_add3_u32 v34, v37, v34, 0x7fff
	v_add3_u32 v35, v38, v35, 0x7fff
	v_add3_u32 v36, v39, v36, 0x7fff
	v_add3_u32 v87, v91, v87, 0x7fff
	v_cmp_o_f32_e64 s6, v88, v88
	v_add3_u32 v90, v88, v90, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s1
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s3
	v_cndmask_b16 v35.h, 0x7fff, v36.h, s4
	v_cndmask_b16 v35.l, 0x7fff, v87.h, s5
	v_cmp_o_f32_e64 s7, v89, v89
	v_mov_b16_e32 v40.l, v92.h
	v_mov_b16_e32 v110.l, v119.h
	v_add3_u32 v94, v89, v94, 0x7fff
	v_cndmask_b16 v36.h, 0x7fff, v90.h, s6
	v_permlanex16_b32 v87, v34, s35, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v90, v35, s35, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s8, v92, v92
	v_cndmask_b16 v36.l, 0x7fff, v94.h, s7
	v_cmp_o_f32_e64 s9, v119, v119
	v_perm_b32 v94, v87, v34, v82
	v_perm_b32 v95, v87, v34, v83
	v_perm_b32 v96, v90, v35, v82
	v_perm_b32 v97, v90, v35, v83
	v_and_b32_e32 v34, 1, v40
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v32, v32, v120 :: v_dual_and_b32 v35, 1, v110
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[102:105], v93
	ds_load_b128 v[106:109], v80
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v34, v92, v34, 0x7fff
	v_add3_u32 v35, v119, v35, 0x7fff
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_b128 v[110:113], v93 offset:512
	ds_load_b128 v[114:117], v80 offset:512
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v99, v36, s35, 0xfedcba98 op_sel:[1,0]
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v18, v18, v120
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s8
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s9
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v19, v19, v120
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v98, v99, v36, v82
	v_perm_b32 v99, v99, v36, v83
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v20, v20, v120 :: v_dual_mov_b32 v87, v118
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v35, v34, s35, 0xfedcba98 op_sel:[1,0]
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v21, v21, v120 :: v_dual_add_f32 v36, v91, v39
	v_mul_f32_e32 v22, v22, v120
	v_mul_f32_e32 v24, v24, v120
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v100, v35, v34, v82
	v_perm_b32 v101, v35, v34, v83
	v_dual_mov_b32 v34, v60 :: v_dual_add_f32 v35, v38, v37
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v37, v89, v88
	v_add_f32_e32 v38, v119, v92
.Ltmp8:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v23, v23, v120
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[102:109], v[94:101], v[25:32]
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_b128 v[102:105], v93 offset:1024
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v35, v35, v36 :: v_dual_add_f32 v36, v37, v38
.Ltmp10:
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[110:117], v[94:101], v[17:24]
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_b128 v[110:113], v93 offset:1536
	ds_load_b128 v[106:109], v80 offset:1024
	ds_load_b128 v[114:117], v80 offset:1536
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v9, v9, v120
	v_mul_f32_e32 v10, v10, v120
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v35, v35, v36
.Ltmp12:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v11, v11, v120
	v_mul_f32_e32 v12, v12, v120
	v_mul_f32_e32 v13, v13, v120
	v_mul_f32_e32 v14, v14, v120
.Ltmp13:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_permlanex16_b32 v36, v35, s35, 0xfedcba98 op_sel:[1,0]
.Ltmp14:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v15, v15, v120
	v_mul_f32_e32 v16, v16, v120
	v_mul_f32_e32 v1, v1, v120
	v_mul_f32_e32 v2, v2, v120
	v_mul_f32_e32 v3, v3, v120
	v_mul_f32_e32 v4, v4, v120
	v_mul_f32_e32 v5, v5, v120
	v_mul_f32_e32 v6, v6, v120
	v_mul_f32_e32 v7, v7, v120
	v_mul_f32_e32 v8, v8, v120
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v60, v35, v36
.Ltmp16:
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[102:109], v[94:101], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[110:117], v[94:101], v[1:8]
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v60, v34, v120
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 841 48 is_stmt 1              ; attention.py:841:48
	v_div_scale_f32 v0, null, v60, v60, v25
	v_div_scale_f32 v33, null, v60, v60, v26
	v_div_scale_f32 v34, null, v60, v60, v27
	v_rcp_f32_e32 v35, v0
	s_waitcnt lgkmcnt(7)
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v36, v33
	s_waitcnt lgkmcnt(5)
	v_div_scale_f32 v38, vcc_lo, v25, v60, v25
	v_rcp_f32_e32 v37, v34
	s_waitcnt lgkmcnt(3)
	v_div_scale_f32 v39, s0, v26, v60, v26
	v_div_scale_f32 v42, null, v60, v60, v28
	s_waitcnt lgkmcnt(2)
	v_div_scale_f32 v48, s3, v28, v60, v28
	v_fma_f32 v40, -v0, v35, 1.0
	v_fma_f32 v41, -v33, v36, 1.0
	.loc	1 848 17                        ; attention.py:848:17
	s_and_b32 s21, s21, 0xffff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v43, -v34, v37, 1.0
	s_mov_b32 s23, 0x31027000
	v_dual_fmac_f32 v35, v40, v35 :: v_dual_fmac_f32 v36, v41, v36
	v_div_scale_f32 v40, s1, v27, v60, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v37, v43, v37
	v_dual_mul_f32 v43, v38, v35 :: v_dual_mul_f32 v44, v39, v36
	v_rcp_f32_e32 v41, v42
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v0, v43, v38
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v47, -v33, v44, v39
	v_dual_fmac_f32 v43, v46, v35 :: v_dual_fmac_f32 v44, v47, v36
	v_div_scale_f32 v46, null, v60, v60, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v42, v41, 1.0
	v_fma_f32 v0, -v0, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v44, v39
	v_rcp_f32_e32 v38, v46
	v_div_scale_f32 v39, null, v60, v60, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v35, v43
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v41, v49, v41
	v_div_fmas_f32 v33, v33, v36, v44
	v_rcp_f32_e32 v43, v39
	v_div_fixup_f32 v0, v0, v60, v25
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v46, v38, 1.0
	v_div_fixup_f32 v25, v33, v60, v26
	v_div_scale_f32 v33, s4, v29, v60, v29
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s0, 0, v60
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v38, v44, v38
	v_mul_f32_e32 v45, v40, v37
	v_div_scale_f32 v44, null, v60, v60, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v0, 0, v0, s0
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v61, -v34, v45, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v47, v44
	v_fmac_f32_e32 v45, v61, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v26, -v34, v45, v40
	v_dual_mul_f32 v40, v33, v38 :: v_dual_mul_f32 v35, v48, v41
	v_fma_f32 v34, -v39, v43, 1.0
	v_div_fmas_f32 v26, v26, v37, v45
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v42, v35, v48
	v_fmac_f32_e32 v43, v34, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v26, v26, v60, v27
	v_fmac_f32_e32 v35, v36, v41
	v_div_scale_f32 v36, null, v60, v60, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v34, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v36, v34, 1.0
	v_fmac_f32_e32 v34, v45, v34
	v_fma_f32 v37, -v42, v35, v48
	v_div_scale_f32 v42, s1, v30, v60, v30
	v_fma_f32 v45, -v44, v47, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v35, v37, v41, v35
	v_fma_f32 v37, -v46, v40, v33
	v_mul_f32_e32 v41, v42, v43
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v47, v45, v47
	v_div_fixup_f32 v27, v35, v60, v28
	v_fmac_f32_e32 v40, v37, v38
	v_fma_f32 v28, -v39, v41, v42
	v_div_scale_f32 v35, s3, v31, v60, v31
	v_div_scale_f32 v37, null, v60, v60, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v46, v40, v33
	v_dual_fmac_f32 v41, v28, v43 :: v_dual_mul_f32 v46, v35, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v48, v37
	v_div_scale_f32 v45, s5, v32, v60, v32
	v_div_fmas_f32 v28, v33, v38, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_fma_f32 v33, -v39, v41, v42
	v_fma_f32 v38, -v36, v46, v35
	v_div_scale_f32 v42, null, v60, v60, v18
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v39, v45, v47
	v_fma_f32 v40, -v37, v48, 1.0
	v_fmac_f32_e32 v46, v38, v34
	v_rcp_f32_e32 v38, v42
	v_div_fixup_f32 v28, v28, v60, v29
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v48, v40, v48
	v_div_fmas_f32 v33, v33, v43, v41
	v_fma_f32 v41, -v44, v39, v45
	v_div_scale_f32 v40, s1, v17, v60, v17
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v29, v33, v60, v30
	v_fma_f32 v30, -v36, v46, v35
	v_fma_f32 v35, -v42, v38, 1.0
	v_div_scale_f32 v36, null, v60, v60, v19
	v_fmac_f32_e32 v39, v41, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v33, v40, v48 :: v_dual_fmac_f32 v38, v35, v38
	v_rcp_f32_e32 v35, v36
	v_div_fmas_f32 v30, v30, v34, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v44, v39, v45
	v_fma_f32 v41, -v37, v33, v40
	v_div_scale_f32 v43, s3, v18, v60, v18
	v_div_scale_f32 v44, null, v60, v60, v20
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v33, v41, v48
	v_div_fmas_f32 v34, v34, v47, v39
	v_rcp_f32_e32 v39, v44
	v_mul_f32_e32 v41, v43, v38
	v_fma_f32 v45, -v36, v35, 1.0
	v_div_fixup_f32 v30, v30, v60, v31
	v_div_fixup_f32 v31, v34, v60, v32
	v_fma_f32 v32, -v37, v33, v40
	v_fma_f32 v34, -v42, v41, v43
	v_fmac_f32_e32 v35, v45, v35
	v_div_scale_f32 v45, null, v60, v60, v21
	v_div_scale_f32 v37, s4, v19, v60, v19
	v_fma_f32 v40, -v44, v39, 1.0
	v_fmac_f32_e32 v41, v34, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v34, v45
	v_div_scale_f32 v46, null, v60, v60, v22
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v39, v40, v39
	v_div_fmas_f32 v32, v32, v48, v33
	v_mul_f32_e32 v33, v37, v35
	v_div_scale_f32 v40, s1, v20, v60, v20
	v_rcp_f32_e32 v47, v46
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v17, v32, v60, v17
	v_fma_f32 v32, -v42, v41, v43
	v_fma_f32 v42, -v36, v33, v37
	v_mul_f32_e32 v43, v40, v39
	v_fma_f32 v48, -v45, v34, 1.0
	s_mov_b32 vcc_lo, s3
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v32, v32, v38, v41
	v_fmac_f32_e32 v33, v42, v35
	v_fma_f32 v38, -v44, v43, v40
	v_fmac_f32_e32 v34, v48, v34
	v_div_scale_f32 v41, s3, v21, v60, v21
	v_fma_f32 v42, -v46, v47, 1.0
	v_div_fixup_f32 v18, v32, v60, v18
	v_fma_f32 v32, -v36, v33, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v43, v38, v39 :: v_dual_mul_f32 v36, v41, v34
	v_fmac_f32_e32 v47, v42, v47
	v_div_scale_f32 v37, s5, v22, v60, v22
	v_div_scale_f32 v38, null, v60, v60, v23
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v42, v37, v47
	v_div_fmas_f32 v32, v32, v35, v33
	v_fma_f32 v33, -v44, v43, v40
	v_fma_f32 v35, -v45, v36, v41
	v_rcp_f32_e32 v40, v38
	v_div_scale_f32 v44, null, v60, v60, v24
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v36, v35, v34
	v_div_fmas_f32 v33, v33, v39, v43
	v_rcp_f32_e32 v35, v44
	v_fma_f32 v39, -v46, v42, v37
	v_div_fixup_f32 v19, v32, v60, v19
	v_fma_f32 v32, -v45, v36, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v43, -v38, v40, 1.0
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v42, v39, v47
	v_div_fixup_f32 v20, v33, v60, v20
	v_div_scale_f32 v33, s1, v23, v60, v23
	v_fmac_f32_e32 v40, v43, v40
	v_fma_f32 v39, -v44, v35, 1.0
	v_div_fmas_f32 v32, v32, v34, v36
	v_fma_f32 v34, -v46, v42, v37
	v_div_scale_f32 v37, null, v60, v60, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v36, v33, v40 :: v_dual_fmac_f32 v35, v39, v35
	v_div_scale_f32 v39, s3, v24, v60, v24
	v_rcp_f32_e32 v41, v37
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v45, null, v60, v60, v10
	v_div_fmas_f32 v34, v34, v47, v42
	v_fma_f32 v42, -v38, v36, v33
	v_mul_f32_e32 v43, v39, v35
	v_div_fixup_f32 v21, v32, v60, v21
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v34, v60, v22
	v_fmac_f32_e32 v36, v42, v40
	v_fma_f32 v32, -v44, v43, v39
	v_rcp_f32_e32 v34, v45
	v_fma_f32 v42, -v37, v41, 1.0
	v_div_scale_f32 v47, null, v60, v60, v12
	v_fma_f32 v33, -v38, v36, v33
	v_fmac_f32_e32 v43, v32, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v32, s4, v9, v60, v9
	v_div_fmas_f32 v33, v33, v40, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v45, v34, 1.0
	v_fma_f32 v36, -v44, v43, v39
	v_mul_f32_e32 v39, v32, v41
	v_div_scale_f32 v38, null, v60, v60, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v46, v34
	v_div_scale_f32 v40, s1, v10, v60, v10
	v_fma_f32 v46, -v37, v39, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v42, v38
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v48, v40, v34
	v_div_fmas_f32 v35, v36, v35, v43
	v_fmac_f32_e32 v39, v46, v41
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v49, v47
	v_fma_f32 v36, -v45, v48, v40
	v_div_fixup_f32 v23, v33, v60, v23
	v_fma_f32 v32, -v37, v39, v32
	v_fma_f32 v44, -v38, v42, 1.0
	v_div_fixup_f32 v24, v35, v60, v24
	v_fmac_f32_e32 v48, v36, v34
	v_div_scale_f32 v36, null, v60, v60, v13
	v_div_fmas_f32 v32, v32, v41, v39
	v_div_scale_f32 v39, null, v60, v60, v14
	v_fmac_f32_e32 v42, v44, v42
	v_div_scale_f32 v44, s5, v11, v60, v11
	v_fma_f32 v37, -v45, v48, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v39
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v43, v44, v42
	v_fma_f32 v35, -v47, v49, 1.0
	v_div_fmas_f32 v34, v37, v34, v48
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v32, v60, v9
	v_fma_f32 v33, -v38, v43, v44
	v_fmac_f32_e32 v49, v35, v49
	v_div_fixup_f32 v10, v34, v60, v10
	v_fma_f32 v34, -v39, v41, 1.0
	v_div_scale_f32 v35, s3, v12, v60, v12
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v30, 0, v30, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v41, v34, v41
	v_fmac_f32_e32 v43, v33, v42
	v_rcp_f32_e32 v33, v36
	v_div_scale_f32 v34, s4, v14, v60, v14
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v37, -v38, v43, v44
	v_mul_f32_e32 v38, v35, v49
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	v_cndmask_b32_e64 v18, 0, v18, s0
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v37, v37, v42, v43
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v36, v33, 1.0
	v_fma_f32 v42, -v47, v38, v35
	s_mov_b32 vcc_lo, s3
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v11, v37, v60, v11
	v_fmac_f32_e32 v33, v40, v33
	v_div_scale_f32 v40, s1, v13, v60, v13
	v_fmac_f32_e32 v38, v42, v49
	v_div_scale_f32 v37, null, v60, v60, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v32, v40, v33
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v35, -v47, v38, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v43, v37
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v42, -v36, v32, v40
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v35, v35, v49, v38
	v_mul_f32_e32 v38, v34, v41
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v32, v42, v33
	v_div_scale_f32 v42, null, v60, v60, v16
	v_div_fixup_f32 v12, v35, v60, v12
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v35, -v36, v32, v40
	v_fma_f32 v36, -v39, v38, v34
	v_fma_f32 v40, -v37, v43, 1.0
	v_rcp_f32_e32 v44, v42
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v32, v35, v33, v32
	v_div_scale_f32 v33, null, v60, v60, v1
	v_fmac_f32_e32 v38, v36, v41
	v_fmac_f32_e32 v43, v40, v43
	v_div_scale_f32 v40, null, v60, v60, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v36, v33
	v_div_scale_f32 v35, s1, v15, v60, v15
	v_div_fixup_f32 v13, v32, v60, v13
	v_fma_f32 v32, -v42, v44, 1.0
	v_rcp_f32_e32 v46, v40
	v_fma_f32 v34, -v39, v38, v34
	v_mul_f32_e32 v39, v35, v43
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v44, v32, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v33, v36, 1.0
	v_div_scale_f32 v32, s3, v16, v60, v16
	v_div_fmas_f32 v34, v34, v41, v38
	v_fma_f32 v38, -v37, v39, v35
	v_fmac_f32_e32 v36, v45, v36
	v_div_scale_f32 v45, null, v60, v60, v3
	v_mul_f32_e32 v41, v32, v44
	v_div_scale_f32 v47, s4, v1, v60, v1
	v_fma_f32 v48, -v40, v46, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v49, v45
	v_fmac_f32_e32 v39, v38, v43
	v_fma_f32 v38, -v42, v41, v32
	v_dual_mul_f32 v61, v47, v36 :: v_dual_fmac_f32 v46, v48, v46
	v_div_scale_f32 v48, s5, v2, v60, v2
	v_div_fixup_f32 v14, v34, v60, v14
	v_fma_f32 v34, -v37, v39, v35
	v_fmac_f32_e32 v41, v38, v44
	v_fma_f32 v35, -v33, v61, v47
	v_mul_f32_e32 v37, v48, v46
	v_fma_f32 v38, -v45, v49, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v32, -v42, v41, v32
	v_fmac_f32_e32 v61, v35, v36
	v_fma_f32 v35, -v40, v37, v48
	v_fmac_f32_e32 v49, v38, v49
	v_div_scale_f32 v38, s1, v3, v60, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v61, v47
	v_fmac_f32_e32 v37, v35, v46
	v_div_fmas_f32 v34, v34, v43, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v35, v38, v49
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v39, null, v60, v60, v4
	v_div_fmas_f32 v32, v32, v44, v41
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v34, v60, v15
	v_div_fmas_f32 v33, v33, v36, v61
	v_fma_f32 v36, -v40, v37, v48
	v_fma_f32 v40, -v45, v35, v38
	v_rcp_f32_e32 v41, v39
	v_div_fixup_f32 v16, v32, v60, v16
	v_div_fixup_f32 v1, v33, v60, v1
	v_div_scale_f32 v33, null, v60, v60, v5
	v_fmac_f32_e32 v35, v40, v49
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v43, null, v60, v60, v8
	v_div_fmas_f32 v36, v36, v46, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v32, -v45, v35, v38
	v_fma_f32 v34, -v39, v41, 1.0
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v2, v36, v60, v2
	v_div_fmas_f32 v32, v32, v49, v35
	v_rcp_f32_e32 v35, v33
	v_fmac_f32_e32 v41, v34, v41
	v_div_scale_f32 v34, null, v60, v60, v6
	v_div_scale_f32 v36, null, v60, v60, v7
	v_div_scale_f32 v37, vcc_lo, v4, v60, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v38, v34
	v_rcp_f32_e32 v40, v36
	v_div_fixup_f32 v3, v32, v60, v3
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v32, -v33, v35, 1.0
	v_mul_f32_e32 v42, v37, v41
	v_fma_f32 v49, -v43, v45, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v35, v32, v35
	v_div_scale_f32 v32, s1, v5, v60, v5
	v_fma_f32 v44, -v34, v38, 1.0
	v_fma_f32 v47, -v36, v40, 1.0
	v_fma_f32 v46, -v39, v42, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v48, v32, v35 :: v_dual_fmac_f32 v45, v49, v45
	v_fmac_f32_e32 v38, v44, v38
	v_div_scale_f32 v44, s3, v6, v60, v6
	v_fmac_f32_e32 v40, v47, v40
	v_div_scale_f32 v47, s4, v7, v60, v7
	v_fmac_f32_e32 v42, v46, v41
	v_fma_f32 v46, -v33, v48, v32
	v_div_scale_f32 v49, s5, v8, v60, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v61, v44, v38 :: v_dual_mul_f32 v62, v47, v40
	v_dual_fmac_f32 v48, v46, v35 :: v_dual_mul_f32 v63, v49, v45
	v_fma_f32 v37, -v39, v42, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v34, v61, v44
	v_fma_f32 v46, -v36, v62, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v33, v48, v32
	v_fma_f32 v33, -v43, v63, v49
	v_div_fmas_f32 v37, v37, v41, v42
	v_dual_fmac_f32 v61, v39, v38 :: v_dual_fmac_f32 v62, v46, v40
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v63, v33, v45
	v_div_fmas_f32 v32, v32, v35, v48
	v_fma_f32 v34, -v34, v61, v44
	v_fma_f32 v33, -v36, v62, v47
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v35, -v43, v63, v49
	v_div_fixup_f32 v5, v32, v60, v5
	v_div_fmas_f32 v34, v34, v38, v61
	s_mov_b32 vcc_lo, s4
	.loc	1 843 24 is_stmt 1              ; attention.py:843:24
	v_mul_lo_u32 v32, s19, v59
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v33, v33, v40, v62
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v4, v37, v60, v4
	v_div_fmas_f32 v35, v35, v45, v63
	v_div_fixup_f32 v6, v34, v60, v6
	v_div_fixup_f32 v7, v33, v60, v7
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v8, v35, v60, v8
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v16, 0, v16, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 843 24 is_stmt 1              ; attention.py:843:24
	s_mul_i32 s0, s19, s22
	v_add_nc_u32_e32 v35, v32, v50
	v_add_nc_u32_e32 v32, s0, v32
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s19, v50
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v33, 16, v50
	.loc	1 843 24 is_stmt 0              ; attention.py:843:24
	v_add_lshl_u32 v35, v35, s0, 2
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_add_lshl_u32 v38, v32, v50, 2
	v_add_lshl_u32 v39, v32, v58, 2
	v_add_lshl_u32 v40, v32, v57, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s0, s19, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	s_clause 0x2
	buffer_store_b32 v0, v38, s[20:23], 0 offen
	buffer_store_b32 v25, v39, s[20:23], 0 offen
	buffer_store_b32 v26, v40, s[20:23], 0 offen
	v_add_lshl_u32 v0, v32, v55, 2
	v_add_lshl_u32 v25, v32, v53, 2
	v_add_lshl_u32 v26, v32, v54, 2
	v_add_lshl_u32 v38, v32, v52, 2
	v_add_lshl_u32 v39, v32, v51, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	s_clause 0x4
	buffer_store_b32 v27, v0, s[20:23], 0 offen
	buffer_store_b32 v28, v25, s[20:23], 0 offen
	buffer_store_b32 v29, v26, s[20:23], 0 offen
	buffer_store_b32 v30, v38, s[20:23], 0 offen
	buffer_store_b32 v31, v39, s[20:23], 0 offen
	v_add_lshl_u32 v0, v32, v33, 2
	v_add_nc_u32_e32 v25, 0x48, v35
	v_add_nc_u32_e32 v26, 0x50, v35
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_add_nc_u32_e32 v27, 0x58, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_nc_u32_e32 v28, 0x60, v35
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v34, 32, v50
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x2
	buffer_store_b32 v17, v0, s[20:23], 0 offen
	buffer_store_b32 v18, v25, s[20:23], 0 offen
	buffer_store_b32 v19, v26, s[20:23], 0 offen
	v_add_nc_u32_e32 v17, 0x68, v35
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v0, 0x80000000, v28
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s19, v34
	.loc	1 848 17                        ; attention.py:848:17
	v_add_nc_u32_e32 v18, 0x70, v35
	v_add_nc_u32_e32 v19, 0x78, v35
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x1
	buffer_store_b32 v20, v27, s[20:23], 0 offen
	buffer_store_b32 v21, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v32, v34, 2
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 848 17                        ; attention.py:848:17
	buffer_store_b32 v22, v17, s[20:23], 0 offen
	v_add_nc_u32_e32 v17, 0x88, v35
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v18, s[20:23], 0 offen
	buffer_store_b32 v24, v19, s[20:23], 0 offen
	buffer_store_b32 v9, v0, s[20:23], 0 offen
	v_add_nc_u32_e32 v0, 0x90, v35
	v_cndmask_b32_e32 v9, 0x80000000, v17, vcc_lo
	v_add_nc_u32_e32 v17, 0x98, v35
	v_add_nc_u32_e32 v18, 0xa0, v35
	v_add_nc_u32_e32 v19, 0xa8, v35
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v36, 48, v50
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b32 v10, v9, s[20:23], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v10, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s3, s19, v36
	.loc	1 848 17                        ; attention.py:848:17
	buffer_store_b32 v11, v0, s[20:23], 0 offen
	v_add_nc_u32_e32 v0, 0xb0, v35
	s_clause 0x2
	buffer_store_b32 v12, v9, s[20:23], 0 offen
	buffer_store_b32 v13, v10, s[20:23], 0 offen
	buffer_store_b32 v14, v17, s[20:23], 0 offen
	v_add_nc_u32_e32 v9, 0xb8, v35
	v_add_lshl_u32 v10, v32, v36, 2
	v_add_nc_u32_e32 v11, 0xc8, v35
	v_add_nc_u32_e32 v12, 0xd0, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v37, 62, v56
	.loc	1 848 17                        ; attention.py:848:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v0, s[20:23], 0 offen
	buffer_store_b32 v16, v9, s[20:23], 0 offen
	buffer_store_b32 v1, v10, s[20:23], 0 offen
	buffer_store_b32 v2, v11, s[20:23], 0 offen
	buffer_store_b32 v3, v12, s[20:23], 0 offen
	v_add_nc_u32_e32 v0, 0xd8, v35
	v_add_nc_u32_e32 v1, 0xe0, v35
	v_add_nc_u32_e32 v2, 0xe8, v35
	v_add_nc_u32_e32 v3, 0xf0, v35
	v_add_lshl_u32 v9, v32, v37, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v0, s[20:23], 0 offen
	buffer_store_b32 v5, v1, s[20:23], 0 offen
	buffer_store_b32 v6, v2, s[20:23], 0 offen
	buffer_store_b32 v7, v3, s[20:23], 0 offen
	buffer_store_b32 v8, v9, s[20:23], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp17:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 121
		.amdhsa_next_free_sgpr 49
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_vgpr, 121
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8004
; TotalNumSgprs: 51
; NumVgprs: 121
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 51
; NumVGPRsForWavesPerEU: 121
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
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     121
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
