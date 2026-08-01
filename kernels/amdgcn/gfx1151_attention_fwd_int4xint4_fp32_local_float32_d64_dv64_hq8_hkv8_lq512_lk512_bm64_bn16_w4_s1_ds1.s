	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b32 s36, s[0:1], 0x84
	s_load_b32 s22, s[0:1], 0x60
	s_load_b64 s[4:5], s[0:1], 0x0
.Ltmp0:
	.loc	1 773 86 prologue_end           ; attention.py:773:86
	v_and_b32_e32 v33, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s18, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s37, s3, 9
	s_mov_b32 s7, 0x31027000
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s19, s18, s37
	.loc	1 773 86 is_stmt 0              ; attention.py:773:86
	v_lshlrev_b32_e32 v1, 4, v33
	.loc	1 773 26                        ; attention.py:773:26
	v_or_b32_e32 v3, s19, v2
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v4, s18, v2
	s_mov_b32 s6, 0x7ffffffe
	s_load_b64 s[16:17], s[0:1], 0x7c
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v5, 3, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v34, 0x60, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v35, 15, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v54, v0, 4, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v44, 16, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v6, 1, v34
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s22, v3, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s2, s22, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v55, v6, v35
	v_lshlrev_b32_e32 v66, 3, v35
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v7, 2, v44
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s18, v55
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v5, 0x78, v5, v7
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s18, s17
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[1:4], v1, s[4:7], 0 offen
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s36
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s5, s18, s16
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 64
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s5, s5, s36
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s4, s2, 0x200
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s5, s5, 0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s4, s4, 15
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v6
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v7, 4, v5
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s6, s4, 31
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s23, s5, 0x7ffffff0
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s6, s6, 28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, s6
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_b32 s34, s4, -16
	s_mov_b32 s4, 0
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_cmp_lt_i32 s23, s34
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v36, v5, v1
	ds_bpermute_b32 v37, v5, v2
	ds_bpermute_b32 v39, v5, v3
	ds_bpermute_b32 v41, v5, v4
	ds_bpermute_b32 v38, v7, v1
	ds_bpermute_b32 v40, v7, v2
	ds_bpermute_b32 v46, v7, v3
	ds_bpermute_b32 v47, v7, v4
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	v_lshlrev_b32_e32 v42, 3, v35
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr42
.LBB0_3:                                ; %Flow76
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x38
	s_load_b32 s33, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_lshlrev_b32 v65, 2, v0
	v_and_b32_e32 v64, 0x7c, v0
	v_or_b32_e32 v62, 2, v54
	v_or_b32_e32 v61, 4, v54
	v_or_b32_e32 v59, 6, v54
	v_or_b32_e32 v57, 8, v54
	v_or_b32_e32 v56, 10, v54
	v_or_b32_e32 v60, 12, v54
	v_or_b32_e32 v58, 14, v54
	v_lshrrev_b32_e32 v63, 4, v0
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
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 780 17 is_stmt 1              ; attention.py:780:17
	v_or_b32_e32 v1, s19, v55
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_clause 0x1
	s_load_b128 s[28:31], s[0:1], 0x28
	s_load_b128 s[12:15], s[0:1], 0x68
	v_dual_mov_b32 v14, 0x5410 :: v_dual_lshlrev_b32 v1, 1, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v93, 2, v64
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v2, 3, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s1, 0, v44
	v_dual_mov_b32 v118, 0xff800000 :: v_dual_and_b32 v7, 12, v0
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v12, 28, v0
	v_bfe_i32 v13, v0, 5, 1
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v15, 0x7632 :: v_dual_lshlrev_b32 v42, 2, v35
	s_lshr_b32 s0, s0, 29
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s9, 0xffff
	s_mov_b32 s24, s8
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v10, 64, v0
	buffer_load_u16 v110, v1, s[24:27], 0 offen
	v_dual_mov_b32 v116, 0xff800000 :: v_dual_lshlrev_b32 v11, 5, v0
	v_dual_mov_b32 v53, 0 :: v_dual_lshlrev_b32 v16, 7, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v33
	v_mov_b32_e32 v33, 0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v78, s18, v93
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v49, v37, v40, s1
	v_cndmask_b32_e64 v51, v40, v37, s1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v20, v33 :: v_dual_lshlrev_b32 v37, 1, v7
	v_lshl_or_b32 v79, v2, 5, v12
	v_and_b32_e32 v83, 0x120, v13
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s8, s3, s0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v45, v41, v47, s1
	v_cndmask_b32_e64 v44, v39, v46, s1
	v_cndmask_b32_e64 v47, v47, v41, s1
	v_cndmask_b32_e64 v46, v46, v39, s1
	v_cndmask_b32_e64 v48, v36, v38, s1
	v_cndmask_b32_e64 v50, v38, v36, s1
	v_cndmask_b32_e64 v86, 0x1054, v14, s1
	v_cndmask_b32_e64 v87, 0x3276, v15, s1
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s8, -8
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s35, s3, 5
	v_dual_mov_b32 v26, v33 :: v_dual_and_b32 v3, 0x70, v0
	v_dual_mov_b32 v28, v33 :: v_dual_and_b32 v5, 0x1fc, v65
	v_lshrrev_b32_e32 v6, 2, v34
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v8, 48, v0
	v_lshl_or_b32 v74, s3, 8, v63
	v_dual_mov_b32 v22, v33 :: v_dual_lshlrev_b32 v39, 1, v10
	v_dual_mov_b32 v24, v33 :: v_dual_lshlrev_b32 v41, 8, v7
	v_dual_mov_b32 v27, v33 :: v_dual_and_b32 v88, 0x260, v11
	v_lshrrev_b32_e32 v85, 5, v10
	v_dual_mov_b32 v12, v33 :: v_dual_and_b32 v89, 0x700, v16
	v_mov_b32_e32 v10, v33
	v_mov_b32_e32 v16, v33
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s1
	v_lshl_or_b32 v77, v35, 5, v37
	v_lshl_or_b32 v34, v34, 2, v37
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v35, 32, v78
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s1, 0x200, v78
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v37, s36, v78
	v_xor_b32_e32 v78, v79, v83
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v4, 3, v0
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v80, 0xfc, v65
	v_cndmask_b32_e64 v81, 0x90, 0, vcc_lo
	v_bfe_i32 v82, v0, 2, 1
	v_xor_b32_e32 v36, v5, v6
	v_lshrrev_b32_e32 v38, 1, v8
	v_lshl_or_b32 v40, v8, 6, v66
	v_dual_mov_b32 v29, v33 :: v_dual_and_b32 v84, 0x300, v11
	v_lshrrev_b32_e32 v90, 2, v3
	v_dual_mov_b32 v14, v33 :: v_dual_and_b32 v91, 0x160, v11
	v_or3_b32 v88, v41, v88, v34
	v_or_b32_e32 v34, v78, v39
	v_or_b32_e32 v76, s37, v4
	v_dual_mov_b32 v4, v33 :: v_dual_add_nc_u32 v35, s36, v35
	v_lshl_or_b32 v92, v87, 8, v87
	v_dual_mov_b32 v18, v33 :: v_dual_lshlrev_b32 v75, 2, v2
	v_mov_b32_e32 v19, v33
	v_dual_mov_b32 v2, v33 :: v_dual_add_nc_u32 v79, 0, v39
	v_xor_b32_e32 v38, v40, v38
	v_or3_b32 v80, v84, v80, v85
	v_lshl_or_b32 v40, v86, 8, v86
	v_xor_b32_e32 v90, v81, v90
	v_and_or_b32 v81, 0x90, v82, v91
	v_add_nc_u32_e32 v82, 0, v36
	v_xor_b32_e32 v36, 8, v77
	v_xor_b32_e32 v34, 0x240, v34
	v_dual_mov_b32 v23, v33 :: v_dual_and_b32 v96, 0x760076, v92
	v_dual_mov_b32 v13, v33 :: v_dual_add_nc_u32 v92, s17, v35
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v91, s16, v35
	v_mul_lo_u32 v35, s15, v93
	v_dual_mov_b32 v31, v33 :: v_dual_add_nc_u32 v94, 0, v89
	v_dual_mov_b32 v21, v33 :: v_dual_and_b32 v40, 0x540054, v40
	v_dual_mov_b32 v6, v33 :: v_dual_add_nc_u32 v87, s17, v37
	v_dual_mov_b32 v8, v33 :: v_dual_add_nc_u32 v89, v79, v38
	v_subrev_nc_u32_e32 v86, s16, v37
	v_xor_b32_e32 v37, 16, v77
	v_xor_b32_e32 v38, 0x60, v80
	.loc	1 929 25                        ; attention.py:929:25
	s_mul_f32 s9, s12, 0x3fb8aa3b
	v_add_nc_u32_e32 v105, 0, v34
	v_dual_mov_b32 v11, v33 :: v_dual_add_nc_u32 v90, v94, v90
	v_dual_mov_b32 v15, v33 :: v_dual_add_nc_u32 v94, 0, v37
	v_dual_mov_b32 v5, v33 :: v_dual_add_nc_u32 v98, 0, v38
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v83, 1, v75
	v_or_b32_e32 v84, 2, v75
	v_or_b32_e32 v85, 3, v75
	v_xor_b32_e32 v95, 24, v77
	v_xor_b32_e32 v39, 32, v80
	v_xor_b32_e32 v41, 64, v80
	v_xor_b32_e32 v99, 16, v81
	v_lshl_or_b32 v40, v40, 4, v40
	v_lshl_or_b32 v101, v96, 4, v96
	v_xor_b32_e32 v37, 16, v88
	v_xor_b32_e32 v38, 24, v88
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v106, v35, v75
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s8, s8, 3
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s3, s14, s3
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s8, s13, s8
	v_dual_mov_b32 v52, 0 :: v_dual_and_b32 v43, 28, v65
	v_or_b32_e32 v0, s37, v54
	v_or_b32_e32 v67, s37, v62
	v_or_b32_e32 v68, s37, v61
	v_or_b32_e32 v69, s37, v59
	v_or_b32_e32 v70, s37, v57
	v_or_b32_e32 v71, s37, v56
	v_or_b32_e32 v72, s37, v60
	v_or_b32_e32 v73, s37, v58
	v_dual_mov_b32 v115, 0xff800000 :: v_dual_mov_b32 v30, v33
	v_dual_mov_b32 v119, 0xff800000 :: v_dual_mov_b32 v32, v33
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s0, s33, v42
	v_dual_mov_b32 v3, v33 :: v_dual_add_nc_u32 v96, 0, v39
	v_dual_mov_b32 v7, v33 :: v_dual_and_b32 v100, 0x5040504, v40
	v_add_nc_u32_e32 v95, 0, v95
	v_add_nc_u32_e32 v97, 0, v41
	v_add_nc_u32_e32 v99, 0, v99
	v_and_b32_e32 v101, 0x7060706, v101
	v_add_nc_u32_e32 v103, 0, v37
	v_add_nc_u32_e32 v104, 0, v38
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v111, 1, v106
	v_add_nc_u32_e32 v112, 2, v106
	v_add_nc_u32_e32 v113, 3, v106
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s12, s15, s18
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_and_b32 s31, s31, 0xffff
	s_add_i32 s49, s3, s8
	s_mov_b32 s48, 0x76543210
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s42, s26
	s_mov_b32 s43, s27
	s_mov_b32 s46, s26
	s_mov_b32 s47, s27
	s_and_b32 s45, s7, 0xffff
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s36, s10
	s_mov_b32 s40, s30
	s_mov_b32 s44, s6
	s_mov_b32 s30, s26
	s_mov_b32 s24, s4
	s_mov_b32 s25, s5
	s_mov_b32 s37, s11
	s_mov_b32 s41, s31
	s_mov_b32 s31, s27
	s_add_i32 s49, s49, s12
	.loc	1 910 31                        ; attention.py:910:31
	v_cmp_gt_i32_e32 vcc_lo, s22, v43
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v117, 0xff800000 :: v_dual_lshlrev_b32 v34, 16, v110
	v_add_nc_u32_e32 v93, 0, v36
	v_xor_b32_e32 v36, 8, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 928 41                        ; attention.py:928:41
	v_mul_f32_e32 v114, s9, v34
	v_add_nc_u32_e32 v102, 0, v36
	v_lshl_add_u32 v36, s15, 5, v35
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v107, v36, v75
	v_add_nc_u32_e32 v108, v36, v83
	v_add_nc_u32_e32 v109, v36, v84
	v_add_nc_u32_e32 v110, v36, v85
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 913 33                        ; attention.py:913:33
	v_dual_mov_b32 v34, v33 :: v_dual_add_nc_u32 v41, s23, v76
	v_dual_mov_b32 v35, v33 :: v_dual_add_nc_u32 v122, 0, v77
	v_mov_b32_e32 v40, v33
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 907 32                        ; attention.py:907:32
	v_mad_u64_u32 v[120:121], null, v41, s22, v[43:44]
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v36, v33
	v_dual_mov_b32 v38, v33 :: v_dual_max_f32 v119, v119, v119
	v_mov_b32_e32 v39, v33
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v126, s23, v75
	.loc	1 908 32                        ; attention.py:908:32
	v_dual_cndmask_b32 v120, 0x80000000, v120 :: v_dual_mov_b32 v41, v40
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v40, v39
	v_mov_b32_e32 v39, v38
	v_mov_b32_e32 v38, v37
	.loc	1 908 32                        ; attention.py:908:32
	buffer_load_b32 v120, v120, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 913 33                        ; attention.py:913:33
	v_dual_mov_b32 v37, v36 :: v_dual_max_f32 v118, v118, v118
	v_mov_b32_e32 v36, v35
	v_mov_b32_e32 v35, v34
	v_mov_b32_e32 v34, v33
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v128, s23, v84
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v126, v86
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s5, v126, v87
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v127, s23, v83
	.loc	1 955 25                        ; attention.py:955:25
	s_add_i32 s50, s49, s23
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s7, v128, v86
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s13, v128, v87
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s4, v126, v91
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s6, v126, v92
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s12, v128, v91
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s14, v128, v92
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s3, s3, s5
	s_and_b32 s5, s7, s13
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s8, v127, v86
	v_cmp_ge_i32_e64 s9, v127, v91
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s10, v127, v87
	v_cmp_le_i32_e64 s11, v127, v92
	.loc	1 964 36                        ; attention.py:964:36
	v_add_lshl_u32 v127, s50, v109, 2
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s4, s4, s6
	s_and_b32 s3, s1, s3
	s_and_b32 s7, s12, s14
	s_and_b32 s6, s1, s5
	s_and_b32 s4, s1, s4
	s_and_b32 s7, s1, s7
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v129, s23, v85
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e64 v127, 0x80000000, v127, s7
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s5, s8, s10
	.loc	1 964 36                        ; attention.py:964:36
	v_add_lshl_u32 v126, s50, v108, 2
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s10, s9, s11
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s15, v129, v86
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s17, v129, v87
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s16, v129, v91
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s18, v129, v92
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s9, s1, s5
	s_and_b32 s11, s1, s10
	s_and_b32 s8, s15, s17
	.loc	1 964 36 is_stmt 1              ; attention.py:964:36
	v_cndmask_b32_e64 v126, 0x80000000, v126, s11
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s13, s16, s18
	s_and_b32 s12, s1, s8
	s_and_b32 s13, s1, s13
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v134, v0, s23, 1
	v_add_lshl_u32 v137, v67, s23, 1
	v_add_lshl_u32 v138, v68, s23, 1
	v_add_lshl_u32 v139, v69, s23, 1
	v_add_lshl_u32 v140, v70, s23, 1
	v_add_lshl_u32 v141, v71, s23, 1
	v_add_lshl_u32 v143, v73, s23, 1
	.loc	1 966 25                        ; attention.py:966:25
	.loc	1 990 39                        ; attention.py:990:39
	.loc	1 908 32                        ; attention.py:908:32
	s_waitcnt vmcnt(0)
	ds_store_b32 v82, v120
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[120:121], v122
	ds_load_b64 v[122:123], v93
	ds_load_b64 v[124:125], v94
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[120:121], v[50:51], v[34:41] neg_lo:[1,1,0]
	.loc	1 908 32                        ; attention.py:908:32
	ds_load_b64 v[120:121], v95
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[122:123], v[46:47], v[34:41] neg_lo:[1,1,0]
	.loc	1 964 36                        ; attention.py:964:36
	v_add_lshl_u32 v123, s50, v111, 2
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v122, v72, s23, 1
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[124:125], v[48:49], v[34:41] neg_lo:[1,1,0]
	.loc	1 964 36                        ; attention.py:964:36
	v_add_lshl_u32 v125, s50, v107, 2
	v_add_lshl_u32 v124, s50, v113, 2
	v_cndmask_b32_e64 v123, 0x80000000, v123, s9
	v_cndmask_b32_e64 v125, 0x80000000, v125, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v124, 0x80000000, v124, s12
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[120:121], v[44:45], v[34:41] neg_lo:[1,1,0]
	.loc	1 964 36                        ; attention.py:964:36
	v_add_lshl_u32 v120, s50, v106, 2
	v_add_lshl_u32 v121, s50, v112, 2
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v142, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e64 v120, 0x80000000, v120, s3
	v_cndmask_b32_e64 v121, 0x80000000, v121, s6
	s_clause 0x3
	buffer_load_b32 v120, v120, s[40:43], 0 offen
	buffer_load_b32 v121, v121, s[40:43], 0 offen
	buffer_load_b32 v125, v125, s[40:43], 0 offen
	buffer_load_b32 v127, v127, s[40:43], 0 offen
	.loc	1 965 35                        ; attention.py:965:35
	v_add_nc_u32_e32 v34, 0, v88
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_mul_f32_e32 v35, v114, v35
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v41, v114, v41
	v_mul_f32_e32 v39, v114, v39
	.loc	1 964 36                        ; attention.py:964:36
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v120, 0xff800000, v120, s3
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v121, 0xff800000, v121, s6
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v135, 0xff800000, v125, s4
	v_add_lshl_u32 v125, s50, v110, 2
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v136, 0xff800000, v127, s7
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v120
	v_cmp_neq_f32_e64 s14, 0xff800000, v121
	v_cmp_neq_f32_e64 s5, 0xff800000, v135
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e64 v125, 0x80000000, v125, s13
	s_clause 0x3
	buffer_load_b32 v130, v123, s[40:43], 0 offen
	buffer_load_b32 v131, v124, s[40:43], 0 offen
	buffer_load_b32 v132, v126, s[40:43], 0 offen
	buffer_load_b32 v133, v125, s[40:43], 0 offen
	.loc	1 923 37                        ; attention.py:923:37
	s_clause 0x7
	buffer_load_u16 v134, v134, s[36:39], 0 offen
	buffer_load_u16 v123, v137, s[36:39], 0 offen
	buffer_load_u16 v124, v138, s[36:39], 0 offen
	buffer_load_u16 v125, v139, s[36:39], 0 offen
	buffer_load_u16 v126, v140, s[36:39], 0 offen
	buffer_load_u16 v127, v141, s[36:39], 0 offen
	buffer_load_u16 v128, v122, s[36:39], 0 offen
	buffer_load_u16 v129, v143, s[36:39], 0 offen
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v136
	.loc	1 966 25 is_stmt 0              ; attention.py:966:25
	s_and_b32 s5, s4, s5
	.loc	1 965 35 is_stmt 1              ; attention.py:965:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b64 v89, v[120:121], v[135:136] offset1:32
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s4, s7, s10
	s_and_b32 s10, s3, s8
	s_and_b32 s8, s6, s14
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v135, v114, v142
	v_mul_f32_e32 v40, v114, v40
	.loc	1 966 25                        ; attention.py:966:25
	v_add_nc_u32_e32 v122, v79, v78
	v_add_nc_u32_e32 v121, 0, v80
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v120.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v139.h, v120.l
	.loc	1 964 36                        ; attention.py:964:36
	s_waitcnt vmcnt(11)
	v_cndmask_b32_e64 v130, 0xff800000, v130, s9
	s_waitcnt vmcnt(10)
	v_cndmask_b32_e64 v131, 0xff800000, v131, s12
	s_waitcnt vmcnt(9)
	v_cndmask_b32_e64 v132, 0xff800000, v132, s11
	s_waitcnt vmcnt(8)
	v_cndmask_b32_e64 v133, 0xff800000, v133, s13
	.loc	1 923 37                        ; attention.py:923:37
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v134, 16, v134
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v130
	v_cmp_neq_f32_e64 s16, 0xff800000, v131
	v_cmp_neq_f32_e64 s17, 0xff800000, v132
	.loc	1 965 35                        ; attention.py:965:35
	ds_store_2addr_b64 v89, v[130:131], v[132:133] offset0:64 offset1:96
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v130, 0, 1, s4
	v_cndmask_b32_e64 v132, 0, 1, s8
	.loc	1 966 34 is_stmt 0              ; attention.py:966:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v133
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v131, 0, 1, s5
	v_cndmask_b32_e64 v133, 0, 1, s10
	v_lshlrev_b16 v120.h, 8, v130.l
	v_mov_b16_e64 v130.l, v132.l
	s_and_b32 s7, s11, s17
	s_and_b32 s6, s13, s18
	s_and_b32 s11, s9, s15
	s_and_b32 s9, s12, s16
	v_cndmask_b32_e64 v136, 0, 1, s6
	v_or_b16 v137.h, v131.l, v120.h
	v_cndmask_b32_e64 v138, 0, 1, s9
	v_mov_b16_e64 v131.l, v133.l
	v_lshlrev_b16 v120.h, 8, v130.l
	v_mov_b16_e64 v130.l, v136.l
	v_cndmask_b32_e64 v132, 0, 1, s7
	v_cndmask_b32_e64 v133, 0, 1, s11
	.loc	1 965 35 is_stmt 1              ; attention.py:965:35
	s_waitcnt lgkmcnt(0)
	.loc	1 966 25                        ; attention.py:966:25
	v_or_b16 v137.l, v131.l, v120.h
	v_mov_b16_e64 v131.l, v138.l
	v_lshlrev_b16 v120.h, 8, v130.l
	.loc	1 965 35                        ; attention.py:965:35
	s_barrier
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v138.h, v120.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 966 25                        ; attention.py:966:25
	v_lshlrev_b16 v130.l, 8, v131.l
	v_or_b16 v132.h, v132.l, v120.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v132.l, v133.l, v130.l
	.loc	1 965 35                        ; attention.py:965:35
	ds_load_b64 v[130:131], v34
	.loc	1 932 25                        ; attention.py:932:25
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v133, v114, v36 :: v_dual_mul_f32 v130, 0x3fb8aa3b, v130
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v130, v135, v134
	.loc	1 932 25                        ; attention.py:932:25
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v134, v114, v37 :: v_dual_lshlrev_b32 v37, 16, v124
	.loc	1 923 37                        ; attention.py:923:37
	v_lshlrev_b32_e32 v36, 16, v123
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v123, 16, v125
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v124, 16, v126
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v126, 16, v128
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v128, 0x3fb8aa3b, v131
	.loc	1 923 37                        ; attention.py:923:37
	v_lshlrev_b32_e32 v125, 16, v127
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v127, 16, v129
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v135, v114, v38 :: v_dual_fmac_f32 v128, v35, v36
	.loc	1 965 35                        ; attention.py:965:35
	ds_load_b64 v[35:36], v102
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v129, 0x3fb8aa3b, v35
	v_mul_f32_e32 v131, 0x3fb8aa3b, v36
	ds_load_b64 v[35:36], v104
	.loc	1 965 25 is_stmt 0              ; attention.py:965:25
	v_fmac_f32_e32 v129, v133, v37
	.loc	1 965 35                        ; attention.py:965:35
	ds_load_b64 v[37:38], v103
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v131, v134, v123
	.loc	1 966 25 is_stmt 1              ; attention.py:966:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v122, v137
	ds_store_b32 v105, v132
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v137, v117, v117 :: v_dual_mul_f32 v134, 0x3fb8aa3b, v35
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v140, 0x3fb8aa3b, v36
	.loc	1 966 25                        ; attention.py:966:25
	ds_load_u16_d16 v35, v121
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v35, v96
	ds_load_u16_d16 v36, v97
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v36, v98
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v123, 0x3fb8aa3b, v37 :: v_dual_mul_f32 v136, 0x3fb8aa3b, v38
	.loc	1 965 25 is_stmt 0              ; attention.py:965:25
	v_fmac_f32_e32 v134, v40, v126
	.loc	1 967 26 is_stmt 1              ; attention.py:967:26
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v123, v135, v124
	v_fmac_f32_e32 v136, v39, v125
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b16 v37.l, 1, v35.l
	v_lshrrev_b16 v35.l, 8, v35.l
	v_and_b16 v37.h, 1, v35.h
	v_lshrrev_b16 v35.h, 8, v35.h
	v_and_b16 v38.l, 1, v36.l
	v_lshrrev_b16 v36.l, 8, v36.l
	v_and_b16 v38.h, 1, v36.h
	v_lshrrev_b16 v36.h, 8, v36.h
	v_and_b16 v35.l, 1, v35.l
	v_and_b16 v35.h, 1, v35.h
	v_and_b16 v36.l, 1, v36.l
	v_cmp_eq_u16_e64 s3, 1, v37.l
	v_and_b16 v36.h, 1, v36.h
	v_cmp_eq_u16_e64 s17, 1, v35.l
	v_cmp_eq_u16_e64 s16, 1, v37.h
	v_cmp_eq_u16_e64 s12, 1, v38.h
	v_cmp_eq_u16_e64 s18, 1, v35.h
	v_cmp_eq_u16_e64 s14, 1, v38.l
	v_cmp_eq_u16_e64 s15, 1, v36.l
	v_cmp_eq_u16_e64 s13, 1, v36.h
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v39, 0xff800000, v128, s17
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v140, v41, v127
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v38, 0xff800000, v130, s3
	v_cndmask_b32_e64 v133, 0xff800000, v129, s16
	v_cndmask_b32_e64 v40, 0xff800000, v134, s12
	v_cndmask_b32_e64 v134, 0xff800000, v131, s18
	v_cndmask_b32_e64 v135, 0xff800000, v123, s14
	v_cndmask_b32_e64 v136, 0xff800000, v136, s15
	v_cndmask_b32_e64 v41, 0xff800000, v140, s13
	ds_store_b64 v34, v[38:39]
	ds_store_b64 v102, v[133:134]
	ds_store_b64 v103, v[135:136]
	ds_store_b64 v104, v[40:41]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[34:37], v89 offset0:64 offset1:96
	ds_load_2addr_b64 v[126:129], v89 offset1:32
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v121, v38, v39, v133
	v_max3_f32 v122, v134, v135, v136
	v_max_f32_e32 v123, v40, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v121, v121, v122, v123
.Ltmp2:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v122, v121, s48, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp3:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v121, v115, v121, v122
.Ltmp4:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v122, v34, v34 :: v_dual_max_f32 v125, v128, v128
	v_dual_max_f32 v123, v126, v126 :: v_dual_max_f32 v124, v36, v36
.Ltmp5:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v38, v38, v121
	v_sub_f32_e32 v39, v39, v121
	v_sub_f32_e32 v40, v40, v121
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v122, v123, v122 :: v_dual_max_f32 v123, v125, v124
.Ltmp7:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v40, v40
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v41, v41, v121
.Ltmp8:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v123, v123, v129, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v41, v41
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v125, v123
.Ltmp11:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v38, 0, v38, s3
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v39, 0, v39, s17
	v_cndmask_b32_e64 v40, 0, v40, s12
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s12, 0xff800000, v117
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v125, v125 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp13:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v139.l, v38.h
	v_mov_b16_e64 v138.l, v39.h
	v_cmp_o_f32_e64 s17, v38, v38
	v_cmp_o_f32_e64 s3, v39, v39
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v125, v125, v125
	v_max3_f32 v122, v122, v127, v35
.Ltmp15:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v131, 1, v139
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v41, 0, v41, s13
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s13, 0xff800000, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v124, v122
.Ltmp17:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v38, v38, v131, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v124, v124 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v124, v124, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v122, v122, v124
	v_dual_max_f32 v124, v123, v125 :: v_dual_mov_b32 v123, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v123, v123 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v123, v123, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v123, v122, v123 :: v_dual_and_b32 v130, 1, v138
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v125, v124
.Ltmp23:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v122.h, v120.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v118, v118, v123
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v39, v39, v130, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v125, v125 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v39.l, 0x7fff, v38.h, s17
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s17, s23, 4
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v131, v126, v118
	v_dual_sub_f32 v132, v34, v118 :: v_dual_max_f32 v125, v125, v125
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s3
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v130, v35, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v124, v124, v125
.Ltmp27:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v38, v39, s48, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v119, v119, v124
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v127, v127, v118
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v34, v38, v39, v100
	v_perm_b32 v35, v38, v39, v101
	v_mov_b16_e32 v38.h, v120.l
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v125, v129, v119
	v_dual_sub_f32 v129, v36, v119 :: v_dual_sub_f32 v36, v134, v121
	v_sub_f32_e32 v126, v128, v119
	v_dual_sub_f32 v128, v37, v119 :: v_dual_sub_f32 v39, v135, v121
	v_mov_b32_e32 v135, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v126, v126
	v_exp_f32_e32 v129, v129
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v125, v125
	v_exp_f32_e32 v128, v128
	.loc	1 969 24 is_stmt 1              ; attention.py:969:24
	v_max_f32_e32 v124, v137, v124
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v134.h, v120.l
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v36, 0, v36, s18
	v_cndmask_b32_e64 v126, 0, v126, s5
	v_cndmask_b32_e64 v129, 0, v129, s7
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v39, 0, v39, s14
	v_cndmask_b32_e64 v125, 0, v125, s4
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v38.l, v36.h
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v37, v133, v121
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s3, v36, v36
	v_cmp_o_f32_e64 s14, v39, v39
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v128, 0, v128, s6
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v38, 1, v38
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v125, v125, v128
.Ltmp29:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v36, v36, v38, 0x7fff
	v_mov_b16_e32 v38.h, v120.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v37, 0, v37, s16
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v38.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s16, v37, v37
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v37, v37, v38, 0x7fff
	v_cndmask_b16 v38.h, 0x7fff, v36.h, s3
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v115
	.loc	1 970 74 is_stmt 0              ; attention.py:970:74
	v_sub_f32_e32 v115, v115, v121
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s16
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s16, s23, 1
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s23, s23, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v115, v115
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v37, v38, s48, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v36, v37, v38, v100
	v_perm_b32 v37, v37, v38, v101
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v38, v136, v121
	v_mov_b32_e32 v136, v52
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v52.h, v120.l
	v_mov_b16_e32 v52.l, v41.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v115, 0, v115, s3
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v38, v38
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v52, 1, v52
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v30, v30, v115
	v_mul_f32_e32 v32, v32, v115
	v_mul_f32_e32 v19, v19, v115
	v_mul_f32_e32 v20, v20, v115
	v_mul_f32_e32 v21, v21, v115
	v_mul_f32_e32 v22, v22, v115
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v38, 0, v38, s15
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v23, v23, v115
	v_mul_f32_e32 v24, v24, v115
	v_mul_f32_e32 v9, v9, v115
	v_mul_f32_e32 v10, v10, v115
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v122.l, v38.h
	v_cmp_o_f32_e64 s15, v38, v38
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v11, v11, v115
	v_mul_f32_e32 v12, v12, v115
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v13, v13, v115 :: v_dual_and_b32 v122, 1, v122
	v_mul_f32_e32 v14, v14, v115
	v_mul_f32_e32 v15, v15, v115
	v_mul_f32_e32 v16, v16, v115
	v_mul_f32_e32 v1, v1, v115
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v38, v38, v122, 0x7fff
	v_mov_b16_e32 v122.h, v120.l
	v_mov_b16_e32 v122.l, v39.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v2, v2, v115
	v_mul_f32_e32 v3, v3, v115
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v133.h, 0x7fff, v38.h, s15
	v_cmp_o_f32_e64 s15, v40, v40
	v_and_b32_e32 v122, 1, v122
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v4, v4, v115
	v_mul_f32_e32 v5, v5, v115
	v_mul_f32_e32 v6, v6, v115
	v_mul_f32_e32 v7, v7, v115
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v39, v39, v122, 0x7fff
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v8, v8, v115
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v133.l, 0x7fff, v39.h, s14
	v_cmp_o_f32_e64 s14, v41, v41
	v_add3_u32 v41, v41, v52, 0x7fff
	v_mov_b16_e32 v52.h, v120.l
	v_mov_b16_e32 v52.l, v40.h
	v_permlanex16_b32 v39, v133, s48, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s14
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s14, s17, s35
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v52, 1, v52
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s14, s14, s33
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v38, v39, v133, v100
	v_perm_b32 v39, v39, v133, v101
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v133, v116, v116
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v40, v40, v52, 0x7fff
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s23, s34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v123, v133, v123
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v41.l, 0x7fff, v40.h, s15
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add_nc_u32_e32 v122, 0, v81
	v_mov_b16_e64 v133.h, v120.l
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v17, v17, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v52, v41, s48, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v40, v52, v41, v100
	v_perm_b32 v41, v52, v41, v101
	.loc	1 977 30                        ; attention.py:977:30
	v_add_nc_u32_e32 v52, s16, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[52:53], null, v52, s33, v[42:43]
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v53, s14, v42, 1
	v_cndmask_b32_e64 v53, 0x80000000, v53, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v52, 0x80000000, v52, s0
	buffer_load_b32 v137, v52, s[44:47], 0 offen
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v52, v131
	v_exp_f32_e32 v131, v132
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v52, 0, v52, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v131, 0, v131, s11
.Ltmp30:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v52, v52, v131
.Ltmp31:
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[131:132], v53, s[28:31], 0 offen
	.loc	1 970 74                        ; attention.py:970:74
	v_dual_sub_f32 v53, v116, v123 :: v_dual_sub_f32 v116, v117, v124
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v117, v127
	v_exp_f32_e32 v127, v130
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v53, v53
	.loc	1 1017 30                       ; attention.py:1017:30
	s_barrier
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v117, 0, v117, s8
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v127, 0, v127, s9
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v130, 0, v53, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v53, v117, v127
	v_add_f32_e32 v117, v126, v129
	v_add_f32_e32 v52, v52, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v53, v117, v125
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v117, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v125, v53 :: v_dual_mul_f32 v18, v18, v115
	v_mov_b32_dpp v117, v117 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v125, v125 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v53, v53, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v52, v52, v117 :: v_dual_mov_b32 v125, v53
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v117, v52
.Ltmp36:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v116, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v125, v125 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v117, v117 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v53, v53, v125
.Ltmp39:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v116, 0, v116, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v52, v52, v117 :: v_dual_fmac_f32 v53, v135, v116
.Ltmp41:
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v52, v136, v130
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v135.h, v120.l
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(1)
	v_and_b16 v116.l, v137.l, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v126, 8, v137
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v116.h, 4, v137.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v125, v137, 0, 8
	v_mov_b16_e64 v129.l, v137.h
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s4, 7, v116.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v117.l, v137.h, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v116.h, v116.h, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s5, 0, v125.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v129, v129, 0, 8
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v117.h, 0, -16, s4
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v130, 24, v137
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s4, 7, v117.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 989 29 is_stmt 0              ; attention.py:989:29
	v_or_b16 v133.l, v116.l, v117.h
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b16 v116.l, v116.h, -16
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v126.h, v132.l
	v_and_b32_e32 v127, 0xffff0000, v131
	v_and_b32_e32 v128, 0xffff0000, v132
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v135.l, v116.h, v116.l, s5
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v116.l, v126.l, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v132, v126, 0, 8
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v116.h, 4, v126.l
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e64 v120.h, v131.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b32_e32 v131, 20, v137
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v136, v133, 0, 16
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e64 v125.l, v132.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v132, v130, 0, 8
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v116.h, v116.h, 15
	v_and_b16 v117.h, v131.l, 15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v136, v136
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s5, 0, v125.l
	v_mov_b16_e64 v125.l, v129.l
	v_mov_b16_e64 v126.l, v132.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v136, v120, v136
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s6, 0, v125.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v125.l, 0, -16, s4
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s4, 7, v116.l
	.loc	1 990 39 is_stmt 1              ; attention.py:990:39
	v_cmp_gt_i16_e64 s7, 0, v126.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v134.l, v136.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v129.l, v117.l, v125.l
	v_cndmask_b16 v125.h, 0, -16, s4
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v117.l, v130.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v125.l, 4, v130.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v134, 1, v134
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_bfe_i32 v129, v129, 0, 16
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_or_b16 v126.l, v116.l, v125.h
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v116.l, v116.h, -16
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s4, 7, v117.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v134, v136, v134, 0x7fff
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v129, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b16 v130.l, v116.h, v116.l, s5
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v116.l, v117.h, -16
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_mov_b16_e32 v116.h, v120.l
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v131.l, v117.h, v116.l, s6
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v116.l, 0, -16, s4
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v117.h, v120.l
	v_cmp_o_f32_e64 s4, v136, v136
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_bfe_i32 v136, v135, 0, 16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_or_b16 v117.l, v117.l, v116.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v116.l, v125.l, -16
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v136, v136
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_bfe_i32 v132, v117, 0, 16
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v116.l, v125.l, v116.l, s7
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v125, v130, 0, 16
	v_bfe_i32 v130, v126, 0, 16
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v126.l, v120.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v132, v132
	v_mul_f32_e32 v136, v120, v136
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v130, v130
	v_mul_f32_e32 v129, v126, v129
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v120.h, v120.l
	v_mov_b16_e64 v133.l, v136.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v125, v127, v125
	v_mul_f32_e32 v127, v127, v130
	v_bfe_i32 v130, v131, 0, 16
	v_bfe_i32 v131, v116, 0, 16
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_dual_mul_f32 v26, v26, v115 :: v_dual_and_b32 v133, 1, v133
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v116.l, v125.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v27, v27, v115
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s5, v129, v129
	v_and_b32_e32 v116, 1, v116
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_dual_mul_f32 v126, v126, v130 :: v_dual_mul_f32 v131, v128, v131
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v130.h, v120.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v128, v128, v132
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v130.l, v129.h
	v_mov_b16_e32 v117.l, v127.h
	v_mov_b16_e64 v132.h, v120.l
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v25, v25, v115
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v132.l, v126.h
	v_and_b32_e32 v130, 1, v130
	v_mov_b16_e64 v135.l, v131.h
	v_mov_b16_e64 v120.l, v128.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v28, v28, v115 :: v_dual_and_b32 v117, 1, v117
	v_mul_f32_e32 v29, v29, v115
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v31, v31, v115 :: v_dual_and_b32 v120, 1, v120
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v129, v129, v130, 0x7fff
	v_and_b32_e32 v130, 1, v132
	v_and_b32_e32 v132, 1, v135
	v_cmp_o_f32_e64 s3, v136, v136
	v_cmp_o_f32_e64 s6, v125, v125
	v_cmp_o_f32_e64 s7, v127, v127
	v_add3_u32 v133, v136, v133, 0x7fff
	v_add3_u32 v116, v125, v116, 0x7fff
	v_add3_u32 v117, v127, v117, 0x7fff
	v_cmp_o_f32_e64 s8, v126, v126
	v_cmp_o_f32_e64 s9, v131, v131
	v_cmp_o_f32_e64 s10, v128, v128
	v_add3_u32 v126, v126, v130, 0x7fff
	v_add3_u32 v127, v131, v132, 0x7fff
	v_add3_u32 v120, v128, v120, 0x7fff
	v_cndmask_b16 v125.h, 0x7fff, v133.h, s3
	v_cndmask_b16 v125.l, 0x7fff, v134.h, s4
	v_cndmask_b16 v128.h, 0x7fff, v116.h, s6
	v_cndmask_b16 v128.l, 0x7fff, v117.h, s7
	v_cndmask_b16 v116.l, 0x7fff, v129.h, s5
	v_cndmask_b16 v116.h, 0x7fff, v126.h, s8
	v_cndmask_b16 v117.h, 0x7fff, v127.h, s9
	v_cndmask_b16 v117.l, 0x7fff, v120.h, s10
	ds_store_2addr_b32 v90, v125, v128 offset1:8
	ds_store_2addr_b32 v90, v116, v117 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[129:132], v99
	ds_load_b128 v[125:128], v122
	v_dual_mov_b32 v115, v121 :: v_dual_mov_b32 v116, v123
	v_mov_b32_e32 v117, v124
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[125:132], v[34:41], v[25:32]
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[125:128], v122 offset:512
	ds_load_b128 v[129:132], v99 offset:512
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[125:132], v[34:41], v[17:24]
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[129:132], v99 offset:1024
	ds_load_b128 v[125:128], v122 offset:1024
	ds_load_b128 v[133:136], v122 offset:1536
	ds_load_b128 v[137:140], v99 offset:1536
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[125:132], v[34:41], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[133:140], v[34:41], v[1:8]
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v42, v66
.LBB0_7:                                ; %._crit_edge
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	v_and_b32_e32 v0, 0x80, v65
	v_and_b32_e32 v33, 4, v63
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v34, 0, v42
	v_lshl_add_u32 v35, v64, 1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s21, s21, 0xffff
	.loc	1 903 13                        ; attention.py:903:13
	v_add3_u32 v0, v34, v0, v33
	ds_store_b64 v35, v[52:53]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s23, 0x31027000
	ds_load_b32 v0, v0
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 1044 48                       ; attention.py:1044:48
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
	v_fma_f32 v64, -v35, v45, 1.0
	v_div_scale_f32 v36, s0, v26, v0, v26
	v_rcp_f32_e32 v48, v41
	v_rcp_f32_e32 v51, v42
	v_fma_f32 v53, -v33, v44, 1.0
	v_fma_f32 v65, -v37, v46, 1.0
	v_fmac_f32_e32 v45, v64, v45
	v_div_scale_f32 v34, vcc_lo, v25, v0, v25
	v_div_scale_f32 v38, s1, v27, v0, v27
	v_fma_f32 v66, -v39, v47, 1.0
	v_fmac_f32_e32 v44, v53, v44
	v_dual_fmac_f32 v46, v65, v46 :: v_dual_mul_f32 v65, v36, v45
	v_fma_f32 v67, -v41, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v47, v66, v47
	v_fma_f32 v53, -v42, v51, 1.0
	v_mul_f32_e32 v64, v34, v44
	v_fma_f32 v69, -v35, v65, v36
	v_mul_f32_e32 v66, v38, v46
	v_div_scale_f32 v50, s5, v30, v0, v30
	v_dual_fmac_f32 v51, v53, v51 :: v_dual_fmac_f32 v48, v67, v48
	v_fma_f32 v67, -v33, v64, v34
	v_fmac_f32_e32 v65, v69, v45
	v_fma_f32 v70, -v37, v66, v38
	v_div_scale_f32 v40, s3, v28, v0, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v64, v67, v44
	v_div_scale_f32 v49, s4, v29, v0, v29
	v_fmac_f32_e32 v66, v70, v46
	v_div_scale_f32 v43, null, v0, v0, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v64, v34
	v_fma_f32 v34, -v35, v65, v36
	v_fma_f32 v35, -v37, v66, v38
	v_mul_f32_e32 v37, v50, v51
	v_dual_mul_f32 v68, v40, v47 :: v_dual_mul_f32 v53, v49, v48
	v_div_fmas_f32 v33, v33, v44, v64
	v_rcp_f32_e32 v52, v43
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v39, v68, v40
	v_div_fmas_f32 v34, v34, v45, v65
	v_div_fixup_f32 v25, v33, v0, v25
	v_div_scale_f32 v33, null, v0, v0, v32
	v_fmac_f32_e32 v68, v71, v47
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v26, v34, v0, v26
	v_div_fmas_f32 v35, v35, v46, v66
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v39, v68, v40
	v_rcp_f32_e32 v39, v33
	v_fma_f32 v38, -v43, v52, 1.0
	v_div_fixup_f32 v27, v35, v0, v27
	v_div_scale_f32 v35, s1, v31, v0, v31
	v_div_fmas_f32 v34, v36, v47, v68
	v_fma_f32 v36, -v41, v53, v49
	v_fmac_f32_e32 v52, v38, v52
	v_div_scale_f32 v47, null, v0, v0, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v28, v34, v0, v28
	v_fmac_f32_e32 v53, v36, v48
	v_fma_f32 v34, -v42, v37, v50
	v_div_scale_f32 v36, null, v0, v0, v17
	v_fma_f32 v38, -v33, v39, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v41, v53, v49
	v_dual_fmac_f32 v37, v34, v51 :: v_dual_mul_f32 v34, v35, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v41, v36
	v_fmac_f32_e32 v39, v38, v39
	v_div_scale_f32 v38, s3, v32, v0, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v42, -v42, v37, v50
	v_fma_f32 v44, -v43, v34, v35
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v45, v38, v39
	v_div_fmas_f32 v40, v40, v48, v53
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v46, -v36, v41, 1.0
	v_div_fmas_f32 v37, v42, v51, v37
	v_fmac_f32_e32 v34, v44, v52
	v_rcp_f32_e32 v42, v47
	v_fma_f32 v44, -v33, v45, v38
	v_fmac_f32_e32 v41, v46, v41
	v_div_scale_f32 v46, s4, v17, v0, v17
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
	s_mov_b32 vcc_lo, s4
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
	v_div_scale_f32 v41, s4, v20, v0, v20
	v_fmac_f32_e32 v35, v45, v35
	v_div_scale_f32 v45, null, v0, v0, v22
	v_div_fixup_f32 v17, v33, v0, v17
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v48, v45
	v_mul_f32_e32 v39, v40, v42
	v_fma_f32 v49, -v46, v37, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v47, v39, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v49, v37
	v_fmac_f32_e32 v39, v34, v42
	v_mul_f32_e32 v34, v36, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v47, v39, v40
	v_mul_f32_e32 v47, v41, v35
	v_fma_f32 v40, -v43, v34, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v42, v39
	v_fma_f32 v39, -v44, v47, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v40, v38
	v_div_scale_f32 v40, s1, v21, v0, v21
	v_fma_f32 v42, -v45, v48, 1.0
	v_div_fixup_f32 v18, v33, v0, v18
	v_fma_f32 v33, -v43, v34, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v36, v40, v37
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v48, v42, v48
	v_div_scale_f32 v42, null, v0, v0, v23
	v_div_fmas_f32 v33, v33, v38, v34
	v_fma_f32 v38, -v46, v36, v40
	v_fmac_f32_e32 v47, v39, v35
	v_div_scale_f32 v39, s5, v22, v0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v19, v33, v0, v19
	v_fmac_f32_e32 v36, v38, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v44, v47, v41
	v_mul_f32_e32 v43, v39, v48
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v41, v42
	v_fma_f32 v33, -v46, v36, v40
	v_div_fmas_f32 v34, v34, v35, v47
	v_fma_f32 v38, -v45, v43, v39
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v44, null, v0, v0, v24
	v_div_fmas_f32 v33, v33, v37, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, v38, v48
	s_mov_b32 vcc_lo, s5
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v47, v36
	v_fma_f32 v43, -v42, v37, v34
	v_fmac_f32_e32 v45, v33, v35
	v_div_scale_f32 v33, s4, v9, v0, v9
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v43, v41
	v_fma_f32 v43, -v38, v40, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
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
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v37, -v46, v49, v41
	v_div_fixup_f32 v24, v35, v0, v24
	v_fmac_f32_e32 v39, v47, v40
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, s5, v11, v0, v11
	v_fmac_f32_e32 v49, v37, v36
	v_div_scale_f32 v37, null, v0, v0, v13
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v35, -v48, v50, 1.0
	v_fma_f32 v33, -v38, v39, v33
	v_fma_f32 v38, -v46, v49, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
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
	s_mov_b32 vcc_lo, s5
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v37, v33, v41
	v_fmac_f32_e32 v42, v36, v42
	v_div_scale_f32 v36, s4, v14, v0, v14
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 1044 48                       ; attention.py:1044:48
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
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v33, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v34, v37, 1.0
	v_div_scale_f32 v33, s3, v16, v0, v16
	v_div_fmas_f32 v36, v36, v42, v39
	v_fma_f32 v39, -v38, v40, v35
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v0, v0, v3
	v_mul_f32_e32 v42, v33, v45
	v_div_scale_f32 v48, s4, v1, v0, v1
	v_fma_f32 v49, -v41, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	v_mul_f32_e32 v51, v48, v37
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v2, v0, v2
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
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v35, v0, v15
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v16, v33, v0, v16
	v_div_fixup_f32 v1, v34, v0, v1
	v_div_scale_f32 v34, null, v0, v0, v5
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s5
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
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
	v_div_scale_f32 v48, s4, v7, v0, v7
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	v_div_scale_f32 v50, s5, v8, v0, v8
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
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v33, v0, v5
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v25, s0
	v_cndmask_b32_e64 v25, 0, v26, s0
	v_cndmask_b32_e64 v26, 0, v27, s0
	v_cndmask_b32_e64 v27, 0, v28, s0
	v_cndmask_b32_e64 v28, 0, v29, s0
	v_cndmask_b32_e64 v29, 0, v30, s0
	v_cndmask_b32_e64 v30, 0, v31, s0
	v_cndmask_b32_e64 v31, 0, v32, s0
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v32, s33, v55
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v16, 0, v16, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 1046 24                       ; attention.py:1046:24
	s_mul_i32 s0, s33, s19
	v_add_nc_u32_e32 v35, v32, v54
	v_add_nc_u32_e32 v32, s0, v32
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s33, v54
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 16, v54
	v_or_b32_e32 v34, 32, v54
	.loc	1 1046 24 is_stmt 0             ; attention.py:1046:24
	v_add_lshl_u32 v35, v35, s0, 2
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_add_lshl_u32 v38, v32, v54, 2
	v_add_lshl_u32 v39, v32, v62, 2
	v_add_lshl_u32 v40, v32, v61, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s33, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	s_clause 0x2
	buffer_store_b32 v8, v38, s[20:23], 0 offen
	buffer_store_b32 v25, v39, s[20:23], 0 offen
	buffer_store_b32 v26, v40, s[20:23], 0 offen
	v_add_lshl_u32 v8, v32, v59, 2
	v_add_lshl_u32 v25, v32, v57, 2
	v_add_lshl_u32 v26, v32, v56, 2
	v_add_lshl_u32 v38, v32, v60, 2
	v_add_lshl_u32 v39, v32, v58, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	s_clause 0x4
	buffer_store_b32 v27, v8, s[20:23], 0 offen
	buffer_store_b32 v28, v25, s[20:23], 0 offen
	buffer_store_b32 v29, v26, s[20:23], 0 offen
	buffer_store_b32 v30, v38, s[20:23], 0 offen
	buffer_store_b32 v31, v39, s[20:23], 0 offen
	v_add_lshl_u32 v8, v32, v33, 2
	v_add_nc_u32_e32 v25, 0x48, v35
	v_add_nc_u32_e32 v26, 0x50, v35
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v27, 0x58, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_nc_u32_e32 v28, 0x60, v35
	s_clause 0x2
	buffer_store_b32 v17, v8, s[20:23], 0 offen
	buffer_store_b32 v18, v25, s[20:23], 0 offen
	buffer_store_b32 v19, v26, s[20:23], 0 offen
	v_add_nc_u32_e32 v17, 0x68, v35
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v8, 0x80000000, v28
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s33, v34
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v18, 0x70, v35
	v_add_nc_u32_e32 v19, 0x78, v35
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x1
	buffer_store_b32 v20, v27, s[20:23], 0 offen
	buffer_store_b32 v21, v8, s[20:23], 0 offen
	v_add_lshl_u32 v8, v32, v34, 2
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v22, v17, s[20:23], 0 offen
	v_add_nc_u32_e32 v17, 0x88, v35
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v18, s[20:23], 0 offen
	buffer_store_b32 v24, v19, s[20:23], 0 offen
	buffer_store_b32 v9, v8, s[20:23], 0 offen
	v_add_nc_u32_e32 v8, 0x90, v35
	v_cndmask_b32_e32 v9, 0x80000000, v17, vcc_lo
	v_add_nc_u32_e32 v17, 0x98, v35
	v_add_nc_u32_e32 v18, 0xa0, v35
	v_add_nc_u32_e32 v19, 0xa8, v35
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 48, v54
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v10, v9, s[20:23], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v10, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s33, v36
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v11, v8, s[20:23], 0 offen
	v_add_nc_u32_e32 v8, 0xb0, v35
	s_clause 0x2
	buffer_store_b32 v12, v9, s[20:23], 0 offen
	buffer_store_b32 v13, v10, s[20:23], 0 offen
	buffer_store_b32 v14, v17, s[20:23], 0 offen
	v_add_nc_u32_e32 v9, 0xb8, v35
	v_add_lshl_u32 v10, v32, v36, 2
	v_add_nc_u32_e32 v11, 0xc8, v35
	v_add_nc_u32_e32 v12, 0xd0, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v37, 62, v63
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v8, s[20:23], 0 offen
	buffer_store_b32 v16, v9, s[20:23], 0 offen
	buffer_store_b32 v1, v10, s[20:23], 0 offen
	buffer_store_b32 v2, v11, s[20:23], 0 offen
	buffer_store_b32 v3, v12, s[20:23], 0 offen
	v_add_nc_u32_e32 v1, 0xd8, v35
	v_add_nc_u32_e32 v2, 0xe0, v35
	v_add_nc_u32_e32 v3, 0xe8, v35
	v_add_nc_u32_e32 v8, 0xf0, v35
	v_add_lshl_u32 v9, v32, v37, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[20:23], 0 offen
	buffer_store_b32 v5, v2, s[20:23], 0 offen
	buffer_store_b32 v6, v3, s[20:23], 0 offen
	buffer_store_b32 v7, v8, s[20:23], 0 offen
	buffer_store_b32 v0, v9, s[20:23], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp42:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 144
		.amdhsa_next_free_sgpr 51
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_vgpr, 144
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10180
; TotalNumSgprs: 53
; NumVgprs: 144
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 53
; NumVGPRsForWavesPerEU: 144
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
	.short	968                             ; DW_AT_call_line
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
	.short	972                             ; DW_AT_call_line
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
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     144
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
