	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x60
	s_load_b64 s[24:25], s[0:1], 0x0
.Ltmp0:
	.loc	1 584 86 prologue_end           ; attention.py:584:86
	v_and_b32_e32 v2, 1, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v3, 1, v0
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s4, s2, 6
	.loc	1 583 26                        ; attention.py:583:26
	s_lshl_b32 s2, s3, 11
	s_mov_b32 s27, 0x31027000
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s17, s4, s2
	.loc	1 584 86 is_stmt 0              ; attention.py:584:86
	v_lshlrev_b32_e32 v1, 4, v2
	.loc	1 584 26                        ; attention.py:584:26
	v_or_b32_e32 v4, s17, v3
	.loc	1 570 21 is_stmt 1              ; attention.py:570:21
	v_or_b32_e32 v5, s4, v3
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 571 21                        ; attention.py:571:21
	v_bfe_u32 v50, v0, 4, 1
	s_clause 0x1
	s_load_b32 s12, s[0:1], 0x88
	s_load_b64 s[20:21], s[0:1], 0x38
	v_lshrrev_b32_e32 v59, 4, v0
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v5
	s_mov_b32 s22, 0
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v57, 2, v50
	v_or_b32_e32 v56, 4, v50
	v_or_b32_e32 v55, 6, v50
	.loc	1 584 26                        ; attention.py:584:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[3:4], null, s18, v4, v[1:2]
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s2, s18, v1
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s25, s25, 0xffff
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v4, 0x60, v0
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v54, 8, v50
	v_or_b32_e32 v53, 10, v50
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v52, 12, v50
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v1, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 1, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v10, 1, v4
	.loc	1 621 48                        ; attention.py:621:48
	s_add_i32 s13, s4, s12
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v51, 14, v50
	.loc	1 585 26                        ; attention.py:585:26
	buffer_load_b128 v[5:8], v1, s[24:27], 0 offen
	v_and_or_b32 v9, v3, 30, v50
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v1, 15, v0
	.loc	1 621 48                        ; attention.py:621:48
	s_add_i32 s13, s13, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s13, 1
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v9, 2, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v58, v10, v1
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v10, 4, v9
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v48, v9, v5
	ds_bpermute_b32 v49, v9, v6
	ds_bpermute_b32 v46, v9, v7
	ds_bpermute_b32 v47, v9, v8
	ds_bpermute_b32 v60, v10, v5
	ds_bpermute_b32 v62, v10, v6
	ds_bpermute_b32 v63, v10, v7
	ds_bpermute_b32 v64, v10, v8
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v5, s4, v58
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 0x800, v5
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 591 17 is_stmt 1              ; attention.py:591:17
	v_or_b32_e32 v6, s17, v58
	v_dual_mov_b32 v66, 0x7632 :: v_dual_add_nc_u32 v61, s12, v5
	v_dual_mov_b32 v32, 0 :: v_dual_lshlrev_b32 v5, 2, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v65, 0x5410 :: v_dual_lshlrev_b32 v6, 1, v6
	v_lshrrev_b32_e32 v4, 2, v4
	v_dual_mov_b32 v86, 0xff800000 :: v_dual_and_b32 v3, 24, v3
	.loc	1 590 31                        ; attention.py:590:31
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_dual_mov_b32 v39, v32 :: v_dual_lshlrev_b32 v2, 5, v0
	v_xor_b32_e32 v69, v5, v4
	v_lshl_or_b32 v70, v1, 5, v3
	v_dual_mov_b32 v34, v32 :: v_dual_and_b32 v7, 0x70, v0
	v_dual_mov_b32 v37, v32 :: v_dual_lshlrev_b32 v8, 7, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s9, 0xffff
	s_mov_b32 s24, s8
	s_clause 0x1
	s_load_b32 s8, s[0:1], 0x68
	s_load_b64 s[28:29], s[0:1], 0x28
	buffer_load_u16 v80, v6, s[24:27], 0 offen
	v_dual_mov_b32 v33, v32 :: v_dual_and_b32 v6, 16, v0
	.loc	1 621 25                        ; attention.py:621:25
	s_min_i32 s1, s13, 0x800
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	.loc	1 622 35                        ; attention.py:622:35
	s_add_i32 s9, s1, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 585 26                        ; attention.py:585:26
	v_cmp_eq_u32_e64 s1, 0, v6
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s0, s0, 28
	.loc	1 622 34                        ; attention.py:622:34
	s_ashr_i32 s12, s9, 31
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s0, s3, s0
	.loc	1 622 34                        ; attention.py:622:34
	s_lshr_b32 s12, s12, 28
	v_cndmask_b32_e64 v65, 0x1054, v65, s1
	v_cndmask_b32_e64 v66, 0x3276, v66, s1
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s13, s0, 4
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s0, s0, 0xfff0
	v_bfe_i32 v68, v0, 2, 1
	s_sub_i32 s3, s3, s0
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v43, v47, v64, s1
	v_dual_mov_b32 v27, v32 :: v_dual_and_b32 v74, 0x160, v2
	v_mov_b32_e32 v38, v32
	v_mov_b32_e32 v31, v32
	v_cndmask_b32_e64 v42, v46, v63, s1
	v_cndmask_b32_e64 v44, v48, v60, s1
	v_cndmask_b32_e64 v47, v64, v47, s1
	v_cndmask_b32_e64 v46, v63, v46, s1
	v_cndmask_b32_e64 v48, v60, v48, s1
	v_xor_b32_e32 v60, 8, v70
	v_xor_b32_e32 v75, 16, v70
	v_xor_b32_e32 v76, 24, v70
	v_add_nc_u32_e32 v63, 0, v69
	v_add_nc_u32_e32 v64, 0, v70
	v_lshl_or_b32 v69, v65, 8, v65
	v_lshl_or_b32 v70, v66, 8, v66
	.loc	1 622 34                        ; attention.py:622:34
	s_add_i32 s9, s9, s12
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_u32 s12, s3, 0x10007
	v_cndmask_b32_e64 v67, 0x90, 0, vcc_lo
	s_add_i32 s3, s3, s12
	v_dual_mov_b32 v25, v32 :: v_dual_and_b32 v72, 0x700, v8
	v_lshrrev_b32_e32 v73, 2, v7
	v_dual_mov_b32 v24, v32 :: v_dual_add_nc_u32 v65, 0, v60
	v_dual_mov_b32 v28, v32 :: v_dual_and_b32 v81, 0x760076, v70
	v_dual_mov_b32 v19, v32 :: v_dual_and_b32 v60, 0x540054, v69
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v45, v49, v62, s1
	v_cndmask_b32_e64 v49, v62, v49, s1
	v_and_or_b32 v62, 0x90, v68, v74
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_i32 s1, s3, 0x80000
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v71, 3, v0
	.loc	1 569 19                        ; attention.py:569:19
	s_sext_i32_i16 s1, s1
	v_dual_mov_b32 v36, v32 :: v_dual_and_b32 v41, 28, v5
	s_ashr_i32 s1, s1, 1
	v_dual_mov_b32 v29, v32 :: v_dual_add_nc_u32 v72, 0, v72
	v_mov_b32_e32 v21, v32
	v_xor_b32_e32 v73, v67, v73
	v_xor_b32_e32 v74, 16, v62
	v_lshl_or_b32 v60, v60, 4, v60
	v_lshl_or_b32 v82, v81, 4, v81
	.loc	1 710 33                        ; attention.py:710:33
	s_lshl3_add_u32 s1, s13, s1
	.loc	1 742 27                        ; attention.py:742:27
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s34, s8, 0x3fb8aa3b
	.loc	1 710 32                        ; attention.py:710:32
	s_lshl_b32 s3, s1, 11
	v_dual_mov_b32 v35, v32 :: v_dual_lshlrev_b32 v40, 2, v1
	v_dual_mov_b32 v26, v32 :: v_dual_add_nc_u32 v67, 0, v76
	v_dual_mov_b32 v30, v32 :: v_dual_add_nc_u32 v69, 0, v74
	v_dual_mov_b32 v16, v32 :: v_dual_and_b32 v81, 0x5040504, v60
	v_dual_mov_b32 v17, v32 :: v_dual_add_nc_u32 v66, 0, v75
	v_mov_b32_e32 v18, v32
	v_mov_b32_e32 v20, v32
	v_mov_b32_e32 v22, v32
	v_dual_mov_b32 v23, v32 :: v_dual_and_b32 v82, 0x7060706, v82
	v_mov_b32_e32 v8, v32
	v_mov_b32_e32 v9, v32
	v_mov_b32_e32 v10, v32
	v_mov_b32_e32 v11, v32
	v_mov_b32_e32 v12, v32
	v_mov_b32_e32 v13, v32
	v_mov_b32_e32 v14, v32
	v_mov_b32_e32 v15, v32
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v32
	v_mov_b32_e32 v2, v32
	v_mov_b32_e32 v3, v32
	v_mov_b32_e32 v4, v32
	v_mov_b32_e32 v5, v32
	v_mov_b32_e32 v6, v32
	v_mov_b32_e32 v7, v32
	.loc	1 714 31                        ; attention.py:714:31
	v_cmp_gt_i32_e64 s0, s18, v41
	v_add_nc_u32_e32 v68, v72, v73
	v_lshl_or_b32 v70, s1, 10, v59
	v_or_b32_e32 v71, s3, v71
	v_or_b32_e32 v72, s3, v50
	v_or_b32_e32 v73, s3, v57
	v_or_b32_e32 v74, s3, v56
	v_or_b32_e32 v75, s3, v55
	v_or_b32_e32 v76, s3, v54
	v_or_b32_e32 v77, s3, v53
	v_or_b32_e32 v78, s3, v52
	v_or_b32_e32 v79, s3, v51
	v_mov_b32_e32 v60, v32
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s23, 0x76543210
	s_mov_b32 s42, s26
	.loc	1 622 33                        ; attention.py:622:33
	s_and_b32 s33, s9, -16
	s_and_b32 s41, s7, 0xffff
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s36, s10
	s_mov_b32 s40, s6
	.loc	1 794 21                        ; attention.py:794:21
	s_lshl_b32 s35, s1, 7
	s_mov_b32 s24, s4
	s_mov_b32 s25, s5
	s_mov_b32 s37, s11
	.loc	1 742 17                        ; attention.py:742:17
	s_mov_b32 s44, s34
	s_mov_b32 s45, s34
	s_mov_b32 s46, s34
	s_mov_b32 s43, s27
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e32 vcc_lo, s19, v40
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v80, 16, v80
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 732 30                        ; attention.py:732:30
	v_mov_b32_e32 v83, v80
	v_mov_b32_e32 v84, v80
	v_mov_b32_e32 v85, v80
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 711 32                        ; attention.py:711:32
	v_add_nc_u32_e32 v87, s22, v71
	.loc	1 771 36                        ; attention.py:771:36
	s_lshr_b32 s6, s22, 1
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v108, s22, v56
	.loc	1 798 53                        ; attention.py:798:53
	s_lshr_b32 s5, s22, 4
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v105, s22, v53
	.loc	1 711 32                        ; attention.py:711:32
	v_mad_u64_u32 v[87:88], null, v87, s18, v[41:42]
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s7, s5, s35
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v103, s22, v51
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s11, s7, s19
	.loc	1 746 30                        ; attention.py:746:30
	v_cmp_le_i32_e64 s7, v108, v61
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v104, s22, v52
	.loc	1 746 30                        ; attention.py:746:30
	v_cmp_le_i32_e64 s8, v105, v61
	.loc	1 712 32                        ; attention.py:712:32
	v_cndmask_b32_e64 v87, 0x80000000, v87, s0
	.loc	1 797 41                        ; attention.py:797:41
	v_add_lshl_u32 v105, s11, v40, 1
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v106, s22, v54
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v110, v74, s22, 1
	.loc	1 746 30                        ; attention.py:746:30
	v_cmp_le_i32_e64 s3, v103, v61
	.loc	1 712 32                        ; attention.py:712:32
	buffer_load_b32 v87, v87, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v103, v73, s22, 1
	.loc	1 746 30                        ; attention.py:746:30
	v_cmp_le_i32_e64 s4, v104, v61
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v104, v72, s22, 1
	.loc	1 746 30                        ; attention.py:746:30
	v_cmp_le_i32_e64 s5, v106, v61
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v107, s22, v55
	v_or_b32_e32 v109, s22, v57
	.loc	1 746 21                        ; attention.py:746:21
	s_and_b32 s3, s2, s3
	s_and_b32 s4, s2, s4
	s_and_b32 s5, s2, s5
	s_and_b32 s7, s2, s7
	.loc	1 746 30 is_stmt 0              ; attention.py:746:30
	v_cmp_le_i32_e64 s9, v109, v61
	.loc	1 746 21                        ; attention.py:746:21
	s_and_b32 s8, s2, s8
	.loc	1 767 25 is_stmt 1              ; attention.py:767:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v86
	.loc	1 746 21                        ; attention.py:746:21
	s_and_b32 s9, s2, s9
	.loc	1 712 32                        ; attention.py:712:32
	s_waitcnt vmcnt(0)
	ds_store_b32 v63, v87
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[95:96], v64
	ds_load_b64 v[97:98], v65
	ds_load_b64 v[99:100], v66
	ds_load_b64 v[101:102], v67
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[95:96], v[48:49], v[32:39] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[97:98], v[46:47], v[87:94] neg_lo:[1,1,0]
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v98, v75, s22, 1
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[99:100], v[44:45], v[87:94] neg_lo:[1,1,0]
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v99, v76, s22, 1
	v_add_lshl_u32 v100, v77, s22, 1
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[101:102], v[42:43], v[87:94] neg_lo:[1,1,0]
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v101, v78, s22, 1
	v_add_lshl_u32 v102, v79, s22, 1
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v95, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v96, v88
	v_cvt_f32_i32_e32 v97, v87
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v88, s22, v50
	.loc	1 774 30                        ; attention.py:774:30
	v_add_nc_u32_e32 v89, s6, v70
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v94, v94
	v_mul_f32_e32 v108, v80, v97
	.loc	1 746 30                        ; attention.py:746:30
	v_cmp_le_i32_e64 s10, v88, v61
	.loc	1 774 30                        ; attention.py:774:30
	v_mad_u64_u32 v[88:89], null, v89, s19, v[40:41]
	.loc	1 797 41                        ; attention.py:797:41
	v_dual_cndmask_b32 v89, 0x80000000, v105 :: v_dual_mul_f32 v92, v83, v92
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v94, v85, v94
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v93, v93
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e32 v105, 0x80000000, v88, vcc_lo
	.loc	1 727 37                        ; attention.py:727:37
	s_clause 0x7
	buffer_load_u16 v98, v98, s[36:39], 0 offen
	buffer_load_u16 v106, v110, s[36:39], 0 offen
	buffer_load_u16 v103, v103, s[36:39], 0 offen
	buffer_load_u16 v104, v104, s[36:39], 0 offen
	buffer_load_u16 v100, v100, s[36:39], 0 offen
	buffer_load_u16 v99, v99, s[36:39], 0 offen
	buffer_load_u16 v102, v102, s[36:39], 0 offen
	buffer_load_u16 v101, v101, s[36:39], 0 offen
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_b64 v[88:89], v89, s[28:31], 0 offen
	.loc	1 775 32                        ; attention.py:775:32
	buffer_load_b32 v105, v105, s[40:43], 0 offen
	.loc	1 746 30                        ; attention.py:746:30
	v_cmp_le_i32_e64 s6, v107, v61
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v90, v85, v90 :: v_dual_mul_f32 v95, v84, v95
	v_mul_f32_e32 v107, v83, v96
	v_mul_f32_e32 v91, v80, v91
	v_mul_f32_e32 v93, v84, v93
	.loc	1 775 32                        ; attention.py:775:32
	v_mov_b16_e32 v87.l, 0
	.loc	1 746 21                        ; attention.py:746:21
	s_and_b32 s6, s2, s6
	s_and_b32 s10, s2, s10
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s22, s22, 16
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s22, s33
	.loc	1 727 37                        ; attention.py:727:37
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v103, 16, v103
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v104, 16, v104
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v96, 0xffff0000, v89
	.loc	1 727 37                        ; attention.py:727:37
	v_lshlrev_b32_e32 v97, 16, v98
	v_lshlrev_b32_e32 v98, 16, v106
	v_lshlrev_b32_e32 v106, 16, v100
	v_lshlrev_b32_e32 v99, 16, v99
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v100.h, v89.l
	v_mov_b16_e32 v87.h, v88.l
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v89, v95, v98
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v92, v92, v106 :: v_dual_mul_f32 v91, v91, v99
	.loc	1 727 37                        ; attention.py:727:37
	v_lshlrev_b32_e32 v109, 16, v102
	.loc	1 797 41                        ; attention.py:797:41
	v_and_b32_e32 v102, 0xffff0000, v88
	.loc	1 727 37                        ; attention.py:727:37
	v_lshlrev_b32_e32 v101, 16, v101
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v88, v90, v97
	v_mul_f32_e32 v90, v107, v103
	.loc	1 775 32                        ; attention.py:775:32
	s_waitcnt vmcnt(0)
	v_bfe_i32 v110, v105, 0, 8
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v97.l, v105.l, 15
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v93, v93, v101
	.loc	1 742 17                        ; attention.py:742:17
	v_mul_f32_e32 v101, s45, v89
	v_mul_f32_e32 v99, s44, v90
	v_mul_f32_e32 v89, s44, v92
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v97.h, 4, v105.l
	.loc	1 742 17                        ; attention.py:742:17
	v_mul_f32_e32 v92, s45, v93
	v_dual_mul_f32 v90, s34, v91 :: v_dual_mul_f32 v95, v108, v104
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v94, v94, v109 :: v_dual_mul_f32 v93, s46, v88
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v88, 0xff800000, v89, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v89, 0xff800000, v90, s5
	.loc	1 742 17                        ; attention.py:742:17
	v_mul_f32_e32 v95, s34, v95
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v91, s46, v94
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v94, 0xff800000, v99, s9
	v_cndmask_b32_e64 v93, 0xff800000, v93, s6
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v98.l, v110.l
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v95, 0xff800000, v95, s10
	v_cndmask_b32_e64 v90, 0xff800000, v91, s3
	v_cndmask_b32_e64 v91, 0xff800000, v92, s4
	v_cndmask_b32_e64 v92, 0xff800000, v101, s7
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s11, 7, v97.l
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b32_e32 v103, 8, v105
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v104, v93, v89, v88
	v_max_f32_e32 v99, v91, v90
	v_max3_f32 v101, v95, v94, v92
.Ltmp2:
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v97.h, v97.h, 15
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s12, 0, v98.l
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v98.l, 0, -16, s11
	.loc	1 775 32                        ; attention.py:775:32
	v_mov_b16_e32 v100.l, v105.h
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v101, v101, v104, v99
.Ltmp4:
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v106, v103, 0, 8
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v98.h, v105.h, 15
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v99.l, v97.l, v98.l
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v97.l, v97.h, -16
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b32_e32 v104, 24, v105
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b32_e32 v105, 20, v105
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s11, 7, v98.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v98.l, v97.h, v97.l, s12
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v97.l, v103.l, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v97.h, 4, v103.l
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v103, v100, 0, 8
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v100.l, v106.l
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v106, v104, 0, 8
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v99.h, v105.l, 15
	v_and_b16 v97.h, v97.h, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s12, 0, v100.l
	v_mov_b16_e32 v100.l, v103.l
	v_mov_b16_e32 v103.l, v106.l
	v_cmp_gt_i16_e64 s13, 0, v100.l
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v100.l, 0, -16, s11
	.loc	1 786 38 is_stmt 0              ; attention.py:786:38
	v_cmp_lt_u16_e64 s11, 7, v97.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 787 39 is_stmt 1              ; attention.py:787:39
	v_cmp_gt_i16_e64 s14, 0, v103.l
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v105.l, v98.h, v100.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v103.l, 0, -16, s11
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v98.h, v104.l, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v100.l, 4, v104.l
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v103.l, v97.l, v103.l
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v97.l, v97.h, -16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s11, 7, v98.h
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v103, v103, 0, 16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v104.l, v97.h, v97.l, s12
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b16 v97.l, v99.h, -16
	.loc	1 814 31 is_stmt 1              ; attention.py:814:31
	v_cvt_f32_i32_e32 v103, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_bfe_i32 v104, v104, 0, 16
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v106.l, v99.h, v97.l, s13
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v97.l, 0, -16, s11
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v99.h, v87.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_cvt_f32_i32_e32 v104, v104
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_or_b16 v107.l, v98.h, v97.l
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v97.l, v100.l, -16
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v98.h, v87.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v104, v102, v104
	v_mul_f32_e32 v102, v102, v103
	v_bfe_i32 v103, v105, 0, 16
	v_bfe_i32 v105, v106, 0, 16
	.loc	1 787 30 is_stmt 1              ; attention.py:787:30
	v_cndmask_b16 v108.l, v100.l, v97.l, s14
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v100.l, v87.l
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v106, v107, 0, 16
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v105, v105
	v_bfe_i32 v107, v99, 0, 16
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_cmp_o_f32_e64 s15, v102, v102
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v106, v106
	v_mul_f32_e32 v103, v100, v103
	v_mul_f32_e32 v100, v100, v105
	v_bfe_i32 v105, v108, 0, 16
	v_bfe_i32 v108, v98, 0, 16
	v_mul_f32_e32 v106, v96, v106
	v_cvt_f32_i32_e32 v107, v107
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s14, v104, v104
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v108, v108
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s16, v106, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v105, v96, v105
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v96, v101, s23, 0xfedcba98 op_sel:[1,0]
.Ltmp6:
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v108, v87, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v96, v86, v101, v96
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v98.l, v108.h
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v107, v87, v107
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s12, v108, v108
	v_mov_b16_e32 v101.h, v87.l
	.loc	1 767 74 is_stmt 1              ; attention.py:767:74
	v_sub_f32_e32 v86, v86, v96
	.loc	1 814 30                        ; attention.py:814:30
	v_and_b32_e32 v98, 1, v98
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v92, v92, v96
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v99.l, v107.h
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v90, v90, v96
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v86, v86
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v98, v108, v98, 0x7fff
	v_mov_b16_e32 v108.h, v87.l
	v_mov_b16_e32 v108.l, v103.h
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v88, v88, v96 :: v_dual_and_b32 v99, 1, v99
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s11, v107, v107
	v_cmp_o_f32_e64 s13, v103, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v108, 1, v108
	v_add3_u32 v99, v107, v99, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v109, 0, v86, s1
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v89, v89, v96
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v92, v92
	.loc	1 814 30 is_stmt 1              ; attention.py:814:30
	v_add3_u32 v103, v103, v108, 0x7fff
	v_mov_b16_e32 v108.h, v87.l
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v28, v28, v109
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v89, v89
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v108.l, v100.h
	v_cndmask_b16 v98.l, 0x7fff, v99.h, s11
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v24, v24, v109
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v107.h, v87.l
	v_mov_b16_e32 v107.l, v102.h
	v_and_b32_e32 v99, 1, v108
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v92, 0, v92, s7
	.loc	1 768 62 is_stmt 0              ; attention.py:768:62
	v_dual_sub_f32 v91, v91, v96 :: v_dual_mul_f32 v30, v30, v109
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v89, 0, v89, s5
	.loc	1 814 30 is_stmt 1              ; attention.py:814:30
	v_add3_u32 v99, v100, v99, 0x7fff
	v_cndmask_b16 v99.l, 0x7fff, v103.h, s13
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v103.h, v87.l
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v90, v90
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v103.l, v89.h
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v93, v93, v96
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v91, v91
	.loc	1 814 30 is_stmt 1              ; attention.py:814:30
	v_mov_b16_e32 v101.l, v104.h
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v94, v94, v96 :: v_dual_add_nc_u32 v97, 0, v62
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v93, v93
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_mul_f32_e32 v26, v26, v109
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v88, v88
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v90, 0, v90, s3
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v94, v94
	.loc	1 814 30 is_stmt 1              ; attention.py:814:30
	v_cndmask_b16 v98.h, 0x7fff, v98.h, s12
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v91, 0, v91, s4
	.loc	1 814 30                        ; attention.py:814:30
	v_and_b32_e32 v101, 1, v101
	v_cmp_o_f32_e64 s11, v100, v100
	v_cmp_o_f32_e64 s12, v105, v105
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v93, 0, v93, s6
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v112, v91, v90 :: v_dual_and_b32 v107, 1, v107
.Ltmp8:
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v101, v104, v101, 0x7fff
	v_mov_b16_e32 v104.h, v87.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v110, v92, v93
.Ltmp10:
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v102, v102, v107, 0x7fff
	v_mov_b16_e32 v107.h, v87.l
	v_mov_b16_e32 v107.l, v106.h
	v_mov_b16_e32 v104.l, v105.h
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v94, 0, v94, s9
	v_cndmask_b32_e64 v88, 0, v88, s8
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v87.h, v87.l
	.loc	1 814 30                        ; attention.py:814:30
	v_and_b32_e32 v107, 1, v107
	v_and_b32_e32 v104, 1, v104
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v100.h, v87.l
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v101.h, 0x7fff, v101.h, s14
	v_cndmask_b16 v101.l, 0x7fff, v102.h, s15
	v_add3_u32 v106, v106, v107, 0x7fff
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v107.h, v87.l
	v_mov_b16_e32 v107.l, v92.h
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v95, v95, v96
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v104, v105, v104, 0x7fff
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v105.h, v87.l
	v_mov_b16_e32 v102.h, v87.l
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v104.l, 0x7fff, v106.h, s16
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v95, v95
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v106.h, v87.l
	v_mov_b16_e32 v87.l, v94.h
	v_mov_b16_e32 v105.l, v93.h
	v_mov_b16_e32 v102.l, v88.h
	v_mov_b16_e32 v106.l, v90.h
	v_mov_b16_e32 v108.l, v91.h
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v99.h, 0x7fff, v99.h, s11
	v_cndmask_b16 v104.h, 0x7fff, v104.h, s12
	ds_store_2addr_b32 v68, v98, v101 offset1:8
	ds_store_2addr_b32 v68, v99, v104 offset0:16 offset1:24
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v95, 0, v95, s10
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v18, v18, v109 :: v_dual_and_b32 v87, 1, v87
	v_dual_mul_f32 v20, v20, v109 :: v_dual_and_b32 v101, 1, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v100.l, v95.h
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v86, v95, v94 :: v_dual_and_b32 v99, 1, v105
.Ltmp12:
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v102, 1, v103
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v22, v22, v109 :: v_dual_and_b32 v103, 1, v106
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v25, v25, v109 :: v_dual_and_b32 v98, 1, v100
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v100, 1, v107
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v27, v27, v109 :: v_dual_and_b32 v104, 1, v108
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s1, v94, v94
	v_cmp_o_f32_e64 s3, v95, v95
	v_cmp_o_f32_e64 s4, v93, v93
	v_cmp_o_f32_e64 s5, v92, v92
	v_cmp_o_f32_e64 s6, v88, v88
	v_cmp_o_f32_e64 s7, v89, v89
	v_cmp_o_f32_e64 s8, v90, v90
	v_cmp_o_f32_e64 s9, v91, v91
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v111, v89, v88 :: v_dual_mul_f32 v16, v16, v109
.Ltmp14:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v87, v94, v87, 0x7fff
	v_add3_u32 v94, v95, v98, 0x7fff
	v_add3_u32 v92, v92, v100, 0x7fff
	v_add3_u32 v88, v88, v101, 0x7fff
	v_add3_u32 v89, v89, v102, 0x7fff
	v_add3_u32 v90, v90, v103, 0x7fff
	v_add3_u32 v91, v91, v104, 0x7fff
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v86, v86, v110
.Ltmp16:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v93, v93, v99, 0x7fff
	v_cndmask_b16 v95.l, 0x7fff, v94.h, s3
	v_cndmask_b16 v93.l, 0x7fff, v92.h, s5
	v_cndmask_b16 v92.h, 0x7fff, v88.h, s6
	v_cndmask_b16 v92.l, 0x7fff, v89.h, s7
	v_cndmask_b16 v93.h, 0x7fff, v93.h, s4
	v_cndmask_b16 v94.h, 0x7fff, v90.h, s8
	v_cndmask_b16 v94.l, 0x7fff, v91.h, s9
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v98, v92, s23, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v90, v93, s23, 0xfedcba98 op_sel:[1,0]
	.loc	1 814 30                        ; attention.py:814:30
	s_barrier
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v99, v94, s23, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v95.h, 0x7fff, v87.h, s1
	v_perm_b32 v91, v98, v92, v81
	v_perm_b32 v89, v90, v93, v81
	v_perm_b32 v90, v90, v93, v82
	v_perm_b32 v92, v98, v92, v82
	v_perm_b32 v93, v99, v94, v81
	v_perm_b32 v94, v99, v94, v82
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_b128 v[98:101], v97
	ds_load_b128 v[102:105], v69
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v88, v95, s23, 0xfedcba98 op_sel:[1,0]
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v31, v31, v109
	v_mul_f32_e32 v8, v8, v109
	v_mul_f32_e32 v17, v17, v109
	v_mul_f32_e32 v19, v19, v109
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v87, v88, v95, v81
	v_perm_b32 v88, v88, v95, v82
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v95, v111, v112
.Ltmp18:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v29, v29, v109
	v_mul_f32_e32 v21, v21, v109
	v_mul_f32_e32 v23, v23, v109
	v_mul_f32_e32 v9, v9, v109
	v_mul_f32_e32 v10, v10, v109
	v_mul_f32_e32 v11, v11, v109
	v_mul_f32_e32 v12, v12, v109
	v_mul_f32_e32 v13, v13, v109
	v_mul_f32_e32 v14, v14, v109
	v_mul_f32_e32 v15, v15, v109
	v_mul_f32_e32 v0, v0, v109
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[98:105], v[87:94], v[24:31]
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_b128 v[98:101], v97 offset:512
	ds_load_b128 v[102:105], v69 offset:512
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v1, v1, v109
	v_mul_f32_e32 v2, v2, v109
	v_mul_f32_e32 v3, v3, v109
	v_mul_f32_e32 v4, v4, v109
	v_mul_f32_e32 v5, v5, v109
	v_mul_f32_e32 v6, v6, v109
	v_mul_f32_e32 v7, v7, v109
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[98:105], v[87:94], v[16:23]
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_b128 v[98:101], v97 offset:1024
	ds_load_b128 v[102:105], v69 offset:1024
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[98:105], v[87:94], v[8:15]
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_b128 v[97:100], v97 offset:1536
	ds_load_b128 v[101:104], v69 offset:1536
	v_dual_mov_b32 v105, v60 :: v_dual_add_f32 v60, v86, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp19:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_permlanex16_b32 v86, v60, s23, 0xfedcba98 op_sel:[1,0]
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v60, v60, v86
	v_mov_b32_e32 v86, v96
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp21:
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v60, v105, v109
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[97:104], v[87:94], v[0:7]
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v7, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v6, v7
	v_mov_b32_e32 v5, v7
	v_mov_b32_e32 v4, v7
	v_mov_b32_e32 v3, v7
	v_mov_b32_e32 v2, v7
	v_mov_b32_e32 v1, v7
	v_mov_b32_e32 v0, v7
	v_mov_b32_e32 v15, v7
	v_mov_b32_e32 v14, v7
	v_mov_b32_e32 v13, v7
	v_mov_b32_e32 v12, v7
	v_mov_b32_e32 v11, v7
	v_mov_b32_e32 v10, v7
	v_mov_b32_e32 v9, v7
	v_mov_b32_e32 v8, v7
	v_mov_b32_e32 v23, v7
	v_mov_b32_e32 v22, v7
	v_mov_b32_e32 v21, v7
	v_mov_b32_e32 v20, v7
	v_mov_b32_e32 v19, v7
	v_mov_b32_e32 v18, v7
	v_mov_b32_e32 v17, v7
	v_mov_b32_e32 v16, v7
	v_mov_b32_e32 v31, v7
	v_mov_b32_e32 v30, v7
	v_mov_b32_e32 v29, v7
	v_mov_b32_e32 v28, v7
	v_mov_b32_e32 v27, v7
	v_mov_b32_e32 v26, v7
	v_mov_b32_e32 v25, v7
	v_mov_b32_e32 v24, v7
	s_waitcnt lgkmcnt(3)
	v_mov_b32_e32 v60, v7
.LBB0_4:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 841 48 is_stmt 1              ; attention.py:841:48
	v_div_scale_f32 v32, null, v60, v60, v24
	v_div_scale_f32 v33, null, v60, v60, v25
	v_div_scale_f32 v34, null, v60, v60, v26
	v_rcp_f32_e32 v35, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v36, v33
	v_div_scale_f32 v38, vcc_lo, v24, v60, v24
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v39, s0, v25, v60, v25
	v_div_scale_f32 v42, null, v60, v60, v27
	v_div_scale_f32 v48, s3, v27, v60, v27
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v40, -v32, v35, 1.0
	v_fma_f32 v41, -v33, v36, 1.0
	.loc	1 848 17                        ; attention.py:848:17
	s_and_b32 s21, s21, 0xffff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v43, -v34, v37, 1.0
	s_mov_b32 s23, 0x31027000
	v_dual_fmac_f32 v35, v40, v35 :: v_dual_fmac_f32 v36, v41, v36
	v_div_scale_f32 v40, s1, v26, v60, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v37, v43, v37
	v_dual_mul_f32 v43, v38, v35 :: v_dual_mul_f32 v44, v39, v36
	v_rcp_f32_e32 v41, v42
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v46, -v32, v43, v38
	v_fma_f32 v47, -v33, v44, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v43, v46, v35 :: v_dual_fmac_f32 v44, v47, v36
	v_div_scale_f32 v46, null, v60, v60, v28
	v_fma_f32 v49, -v42, v41, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v32, v43, v38
	v_fma_f32 v33, -v33, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v38, v46
	v_div_scale_f32 v39, null, v60, v60, v29
	v_div_fmas_f32 v32, v32, v35, v43
	s_mov_b32 vcc_lo, s0
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s0, 0, v60
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v33, v33, v36, v44
	v_rcp_f32_e32 v43, v39
	v_div_scale_f32 v44, null, v60, v60, v31
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v46, v38, 1.0
	v_div_fixup_f32 v25, v33, v60, v25
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v47, v44
	v_div_fixup_f32 v24, v32, v60, v24
	v_fmac_f32_e32 v38, v36, v38
	v_mul_f32_e32 v45, v40, v37
	v_div_scale_f32 v36, null, v60, v60, v30
	v_fmac_f32_e32 v41, v49, v41
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v61, -v34, v45, v40
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v45, v61, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v34, v45, v40
	v_fma_f32 v34, -v39, v43, 1.0
	v_div_fmas_f32 v33, v33, v37, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v43, v34, v43
	v_rcp_f32_e32 v34, v36
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v26, v33, v60, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v45, -v36, v34, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v35, v48, v41 :: v_dual_fmac_f32 v34, v45, v34
	v_fma_f32 v32, -v42, v35, v48
	v_fma_f32 v45, -v44, v47, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v45, v47
	v_div_scale_f32 v45, s5, v31, v60, v31
	v_fmac_f32_e32 v35, v32, v41
	v_div_scale_f32 v32, s4, v28, v60, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v42, v35, v48
	v_mul_f32_e32 v40, v32, v38
	v_div_scale_f32 v42, s1, v29, v60, v29
	v_div_scale_f32 v48, null, v60, v60, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v35, v37, v41, v35
	v_fma_f32 v37, -v46, v40, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v41, v42, v43
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v27, v35, v60, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v37, v38
	v_fma_f32 v33, -v39, v41, v42
	v_div_scale_f32 v35, s3, v30, v60, v30
	v_div_scale_f32 v37, null, v60, v60, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v46, v40, v32
	v_fmac_f32_e32 v41, v33, v43
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v46, v37
	v_div_fmas_f32 v32, v32, v38, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v39, v41, v42
	v_mul_f32_e32 v40, v45, v47
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v28, v32, v60, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v38, v38, v43, v41
	v_fma_f32 v41, -v44, v40, v45
	v_mul_f32_e32 v33, v35, v34
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v42, -v37, v46, 1.0
	v_div_fixup_f32 v29, v38, v60, v29
	v_fmac_f32_e32 v40, v41, v47
	v_fma_f32 v39, -v36, v33, v35
	v_div_scale_f32 v41, s3, v17, v60, v17
	v_fmac_f32_e32 v46, v42, v46
	v_div_scale_f32 v42, s1, v16, v60, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v39, v34
	v_rcp_f32_e32 v39, v48
	v_div_scale_f32 v38, null, v60, v60, v18
	v_div_scale_f32 v43, null, v60, v60, v19
	v_fma_f32 v32, -v36, v33, v35
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	v_cndmask_b32_e64 v29, 0, v29, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v36, -v48, v39, 1.0
	v_div_fmas_f32 v32, v32, v34, v33
	v_fma_f32 v33, -v44, v40, v45
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v45, null, v60, v60, v21
	v_fmac_f32_e32 v39, v36, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v47, v40
	v_rcp_f32_e32 v36, v38
	v_div_fixup_f32 v30, v32, v60, v30
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v40, v41, v39
	v_div_fixup_f32 v31, v33, v60, v31
	v_rcp_f32_e32 v47, v45
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v33, -v48, v40, v41
	v_mul_f32_e32 v35, v42, v46
	v_fma_f32 v44, -v38, v36, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v40, v33, v39
	v_fma_f32 v34, -v37, v35, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v44, v36
	v_div_scale_f32 v44, null, v60, v60, v20
	v_fmac_f32_e32 v35, v34, v46
	v_rcp_f32_e32 v34, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v37, v35, v42
	v_div_scale_f32 v37, s4, v18, v60, v18
	v_div_fmas_f32 v32, v32, v46, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v42, -v43, v34, 1.0
	v_mul_f32_e32 v33, v37, v36
	v_rcp_f32_e32 v35, v44
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v16, v32, v60, v16
	v_fmac_f32_e32 v34, v42, v34
	v_div_scale_f32 v42, s1, v19, v60, v19
	v_fma_f32 v32, -v48, v40, v41
	v_fma_f32 v41, -v38, v33, v37
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v46, v42, v34
	v_fma_f32 v48, -v44, v35, 1.0
	v_div_fmas_f32 v32, v32, v39, v40
	v_fmac_f32_e32 v33, v41, v36
	v_div_scale_f32 v40, s3, v20, v60, v20
	v_fma_f32 v39, -v43, v46, v42
	v_fmac_f32_e32 v35, v48, v35
	v_fma_f32 v41, -v45, v47, 1.0
	v_div_fixup_f32 v17, v32, v60, v17
	v_fma_f32 v32, -v38, v33, v37
	v_fmac_f32_e32 v46, v39, v34
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v37, v40, v35
	v_fmac_f32_e32 v47, v41, v47
	v_div_scale_f32 v38, s5, v21, v60, v21
	v_div_fmas_f32 v32, v32, v36, v33
	v_fma_f32 v33, -v43, v46, v42
	v_div_scale_f32 v43, null, v60, v60, v23
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v36, -v44, v37, v40
	v_mul_f32_e32 v42, v38, v47
	v_div_fmas_f32 v33, v33, v34, v46
	v_rcp_f32_e32 v34, v43
	v_div_fixup_f32 v18, v32, v60, v18
	v_fmac_f32_e32 v37, v36, v35
	v_fma_f32 v36, -v45, v42, v38
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v39, null, v60, v60, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v44, v37, v40
	v_fmac_f32_e32 v42, v36, v47
	v_div_fixup_f32 v19, v33, v60, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v43, v34, 1.0
	v_rcp_f32_e32 v41, v39
	v_div_fmas_f32 v32, v32, v35, v37
	v_fma_f32 v35, -v45, v42, v38
	v_div_scale_f32 v38, s3, v23, v60, v23
	v_fmac_f32_e32 v34, v36, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v20, v32, v60, v20
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v45, null, v60, v60, v9
	v_mul_f32_e32 v44, v38, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v39, v41, 1.0
	v_div_scale_f32 v33, s1, v22, v60, v22
	v_div_scale_f32 v36, null, v60, v60, v8
	v_fma_f32 v32, -v43, v44, v38
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	v_cndmask_b32_e64 v18, 0, v18, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v40, v36
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v44, v32, v34
	v_div_fmas_f32 v35, v35, v47, v42
	v_div_scale_f32 v32, s4, v8, v60, v8
	v_fmac_f32_e32 v41, v46, v41
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v21, v35, v60, v21
	v_rcp_f32_e32 v35, v45
	v_div_scale_f32 v47, null, v60, v60, v11
	v_mul_f32_e32 v37, v33, v41
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	v_cndmask_b32_e64 v21, 0, v21, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v49, v47
	v_fma_f32 v42, -v39, v37, v33
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v45, v35, 1.0
	v_fmac_f32_e32 v35, v46, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v42, v41
	v_fma_f32 v42, -v36, v40, 1.0
	v_fma_f32 v33, -v39, v37, v33
	v_div_scale_f32 v39, null, v60, v60, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v42, v40
	v_div_fmas_f32 v33, v33, v41, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v42, v39
	v_fma_f32 v37, -v43, v44, v38
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v41, s1, v9, v60, v9
	v_div_fixup_f32 v22, v33, v60, v22
	v_div_fmas_f32 v34, v37, v34, v44
	v_mul_f32_e32 v38, v32, v40
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v39, v42, 1.0
	v_div_fixup_f32 v23, v34, v60, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v46, -v36, v38, v32
	v_fma_f32 v34, -v47, v49, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, s5, v10, v60, v10
	v_fmac_f32_e32 v38, v46, v40
	v_fmac_f32_e32 v49, v34, v49
	v_div_scale_f32 v34, s3, v11, v60, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v32, -v36, v38, v32
	v_div_scale_f32 v36, null, v60, v60, v12
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v33, -v39, v44, v43
	v_div_fmas_f32 v32, v32, v40, v38
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v33, v42
	v_mul_f32_e32 v48, v41, v35
	v_rcp_f32_e32 v33, v36
	v_div_fixup_f32 v8, v32, v60, v8
	v_fma_f32 v37, -v45, v48, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v48, v37, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v40, -v36, v33, 1.0
	v_fma_f32 v37, -v45, v48, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v40, v33
	v_div_scale_f32 v40, s1, v12, v60, v12
	v_div_fmas_f32 v35, v37, v35, v48
	v_fma_f32 v37, -v39, v44, v43
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v32, v40, v33
	v_div_scale_f32 v39, null, v60, v60, v13
	v_div_fmas_f32 v37, v37, v42, v44
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v9, v35, v60, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v39
	v_div_fixup_f32 v10, v37, v60, v10
	v_div_scale_f32 v37, null, v60, v60, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v43, v37
	v_mul_f32_e32 v38, v34, v49
	v_fma_f32 v35, -v39, v41, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v47, v38, v34
	v_fmac_f32_e32 v38, v42, v49
	v_fma_f32 v42, -v36, v32, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v34, -v47, v38, v34
	v_fmac_f32_e32 v32, v42, v33
	v_div_scale_f32 v42, null, v60, v60, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v34, v34, v49, v38
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v44, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v11, v34, v60, v11
	v_fma_f32 v34, -v36, v32, v40
	v_fma_f32 v40, -v37, v43, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v32, v34, v33, v32
	v_fmac_f32_e32 v43, v40, v43
	v_div_scale_f32 v40, null, v60, v60, v1
	v_div_scale_f32 v34, s1, v14, v60, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v12, v32, v60, v12
	v_rcp_f32_e32 v46, v40
	v_fma_f32 v32, -v42, v44, 1.0
	v_fmac_f32_e32 v41, v35, v41
	v_div_scale_f32 v35, s4, v13, v60, v13
	v_div_scale_f32 v33, null, v60, v60, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v44, v32, v44
	v_div_scale_f32 v32, s3, v15, v60, v15
	v_fma_f32 v48, -v40, v46, 1.0
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v47, s4, v0, v60, v0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s5, v1, v60, v1
	v_mul_f32_e32 v38, v35, v41
	v_fma_f32 v36, -v39, v38, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v36, v41
	v_rcp_f32_e32 v36, v33
	v_fma_f32 v35, -v39, v38, v35
	v_mul_f32_e32 v39, v34, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v35, v41, v38
	v_fma_f32 v38, -v37, v39, v34
	v_mul_f32_e32 v41, v32, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v45, -v33, v36, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v13, v35, v60, v13
	v_fmac_f32_e32 v39, v38, v43
	v_fma_f32 v38, -v42, v41, v32
	v_fmac_f32_e32 v36, v45, v36
	v_div_scale_f32 v45, null, v60, v60, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v37, v39, v34
	v_fmac_f32_e32 v41, v38, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v61, v47, v36
	v_rcp_f32_e32 v49, v45
	v_mul_f32_e32 v37, v48, v46
	v_div_fmas_f32 v34, v34, v43, v39
	v_fma_f32 v32, -v42, v41, v32
	v_div_scale_f32 v39, null, v60, v60, v3
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v35, -v33, v61, v47
	v_div_fmas_f32 v32, v32, v44, v41
	v_rcp_f32_e32 v41, v39
	v_div_fixup_f32 v14, v34, v60, v14
	v_fma_f32 v38, -v45, v49, 1.0
	v_fmac_f32_e32 v61, v35, v36
	v_fma_f32 v35, -v40, v37, v48
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v32, v60, v15
	v_fmac_f32_e32 v49, v38, v49
	v_fma_f32 v33, -v33, v61, v47
	v_div_scale_f32 v38, s1, v2, v60, v2
	v_fma_f32 v34, -v39, v41, 1.0
	v_div_scale_f32 v43, null, v60, v60, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v36, v61
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v41, v34, v41
	v_fmac_f32_e32 v37, v35, v46
	v_mul_f32_e32 v35, v38, v49
	v_div_fixup_f32 v0, v33, v60, v0
	v_div_scale_f32 v33, null, v60, v60, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v40, v37, v48
	v_fma_f32 v40, -v45, v35, v38
	v_div_scale_f32 v34, null, v60, v60, v5
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v36, v36, v46, v37
	v_fmac_f32_e32 v35, v40, v49
	s_mov_b32 vcc_lo, s1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v15, 0, v15, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v1, v36, v60, v1
	v_div_scale_f32 v36, null, v60, v60, v6
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v0, 0, v0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v1, 0, v1, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v40, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v36, v40, 1.0
	v_fmac_f32_e32 v40, v47, v40
	v_fma_f32 v32, -v45, v35, v38
	v_rcp_f32_e32 v38, v34
	v_div_scale_f32 v47, s4, v6, v60, v6
	v_rcp_f32_e32 v45, v43
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v32, v32, v49, v35
	v_rcp_f32_e32 v35, v33
	v_div_scale_f32 v37, vcc_lo, v3, v60, v3
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v62, v47, v40
	v_div_fixup_f32 v2, v32, v60, v2
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v44, -v34, v38, 1.0
	v_mul_f32_e32 v42, v37, v41
	v_fma_f32 v49, -v43, v45, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v32, -v33, v35, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v39, v42, v37
	v_fmac_f32_e32 v38, v44, v38
	v_div_scale_f32 v44, s3, v5, v60, v5
	v_fmac_f32_e32 v35, v32, v35
	v_div_scale_f32 v32, s1, v4, v60, v4
	v_fmac_f32_e32 v42, v46, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v48, v32, v35
	v_fma_f32 v37, -v39, v42, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v33, v48, v32
	v_mul_f32_e32 v61, v44, v38
	v_div_fmas_f32 v37, v37, v41, v42
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v48, v46, v35
	v_fma_f32 v46, -v36, v62, v47
	v_fma_f32 v39, -v34, v61, v44
	v_div_fixup_f32 v3, v37, v60, v3
	.loc	1 843 74 is_stmt 1              ; attention.py:843:74
	v_or_b32_e32 v37, 62, v59
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v32, -v33, v48, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v62, v46, v40 :: v_dual_fmac_f32 v61, v39, v38
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v32, v32, v35, v48
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v34, -v34, v61, v44
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fixup_f32 v4, v32, v60, v4
	.loc	1 843 24 is_stmt 1              ; attention.py:843:24
	v_mul_lo_u32 v32, s19, v58
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v45, v49, v45
	v_div_scale_f32 v49, s5, v7, v60, v7
	v_div_fmas_f32 v34, v34, v38, v61
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v63, v49, v45
	v_div_fixup_f32 v5, v34, v60, v5
	.loc	1 843 74 is_stmt 1              ; attention.py:843:74
	v_or_b32_e32 v34, 32, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v33, -v43, v63, v49
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s19, v34
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v63, v33, v45
	v_fma_f32 v33, -v36, v62, v47
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v36, 48, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v35, -v43, v63, v49
	v_div_fmas_f32 v33, v33, v40, v62
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s3, s19, v36
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v35, v35, v45, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v6, v33, v60, v6
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s19, v50
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v33, 16, v50
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v35, v60, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	.loc	1 843 24 is_stmt 1              ; attention.py:843:24
	v_add_nc_u32_e32 v35, v32, v50
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 843 24                        ; attention.py:843:24
	s_mul_i32 s0, s19, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v32, s0, v32
	v_add_lshl_u32 v35, v35, s0, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s0, s19, v33
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v38, v32, v50, 2
	v_add_lshl_u32 v39, v32, v57, 2
	v_add_lshl_u32 v40, v32, v56, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	s_clause 0x2
	buffer_store_b32 v24, v38, s[20:23], 0 offen
	buffer_store_b32 v25, v39, s[20:23], 0 offen
	buffer_store_b32 v26, v40, s[20:23], 0 offen
	v_add_lshl_u32 v24, v32, v55, 2
	v_add_lshl_u32 v25, v32, v54, 2
	v_add_lshl_u32 v26, v32, v53, 2
	v_add_lshl_u32 v38, v32, v52, 2
	v_add_lshl_u32 v39, v32, v51, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	s_clause 0x4
	buffer_store_b32 v27, v24, s[20:23], 0 offen
	buffer_store_b32 v28, v25, s[20:23], 0 offen
	buffer_store_b32 v29, v26, s[20:23], 0 offen
	buffer_store_b32 v30, v38, s[20:23], 0 offen
	buffer_store_b32 v31, v39, s[20:23], 0 offen
	v_add_lshl_u32 v24, v32, v33, 2
	v_add_nc_u32_e32 v25, 0x48, v35
	v_add_nc_u32_e32 v26, 0x50, v35
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_add_nc_u32_e32 v27, 0x58, v35
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	v_add_nc_u32_e32 v28, 0x60, v35
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	s_clause 0x2
	buffer_store_b32 v16, v24, s[20:23], 0 offen
	buffer_store_b32 v17, v25, s[20:23], 0 offen
	buffer_store_b32 v18, v26, s[20:23], 0 offen
	v_add_nc_u32_e32 v18, 0x70, v35
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v16, 0x80000000, v28
	v_add_nc_u32_e32 v17, 0x68, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	buffer_store_b32 v19, v27, s[20:23], 0 offen
	v_add_nc_u32_e32 v19, 0x78, v35
	buffer_store_b32 v20, v16, s[20:23], 0 offen
	v_add_lshl_u32 v16, v32, v34, 2
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	buffer_store_b32 v21, v17, s[20:23], 0 offen
	v_add_nc_u32_e32 v17, 0x88, v35
	s_clause 0x2
	buffer_store_b32 v22, v18, s[20:23], 0 offen
	buffer_store_b32 v23, v19, s[20:23], 0 offen
	buffer_store_b32 v8, v16, s[20:23], 0 offen
	v_add_nc_u32_e32 v8, 0x90, v35
	v_add_nc_u32_e32 v18, 0xa0, v35
	v_add_nc_u32_e32 v19, 0xa8, v35
	v_cndmask_b32_e32 v16, 0x80000000, v17, vcc_lo
	v_add_nc_u32_e32 v17, 0x98, v35
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v9, v16, s[20:23], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v16, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	buffer_store_b32 v10, v8, s[20:23], 0 offen
	v_add_nc_u32_e32 v8, 0xb0, v35
	s_clause 0x2
	buffer_store_b32 v11, v9, s[20:23], 0 offen
	buffer_store_b32 v12, v16, s[20:23], 0 offen
	buffer_store_b32 v13, v17, s[20:23], 0 offen
	v_add_nc_u32_e32 v9, 0xb8, v35
	v_add_lshl_u32 v10, v32, v36, 2
	v_add_nc_u32_e32 v11, 0xc8, v35
	v_add_nc_u32_e32 v12, 0xd0, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 848 17                        ; attention.py:848:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v14, v8, s[20:23], 0 offen
	buffer_store_b32 v15, v9, s[20:23], 0 offen
	buffer_store_b32 v0, v10, s[20:23], 0 offen
	buffer_store_b32 v1, v11, s[20:23], 0 offen
	buffer_store_b32 v2, v12, s[20:23], 0 offen
	v_add_nc_u32_e32 v0, 0xd8, v35
	v_add_nc_u32_e32 v1, 0xe0, v35
	v_add_nc_u32_e32 v2, 0xe8, v35
	v_add_nc_u32_e32 v8, 0xf0, v35
	v_add_lshl_u32 v9, v32, v37, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	s_clause 0x4
	buffer_store_b32 v3, v0, s[20:23], 0 offen
	buffer_store_b32 v4, v1, s[20:23], 0 offen
	buffer_store_b32 v5, v2, s[20:23], 0 offen
	buffer_store_b32 v6, v8, s[20:23], 0 offen
	buffer_store_b32 v7, v9, s[20:23], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 113
		.amdhsa_next_free_sgpr 47
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_vgpr, 113
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8052
; TotalNumSgprs: 49
; NumVgprs: 113
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 49
; NumVGPRsForWavesPerEU: 113
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     113
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
