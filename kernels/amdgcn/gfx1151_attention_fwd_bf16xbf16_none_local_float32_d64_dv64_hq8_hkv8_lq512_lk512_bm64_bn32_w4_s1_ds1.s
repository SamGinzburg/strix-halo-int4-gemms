	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x5c
	s_load_b64 s[48:49], s[0:1], 0x0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v65, 3, v0
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v35, 0x60, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v66, 7, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s5, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s3, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s5, v65
	v_mov_b32_e32 v7, v8
	v_dual_mov_b32 v6, v8 :: v_dual_lshlrev_b32 v33, 3, v66
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s46, s5, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x200, v1
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[8:9], s[0:1], 0x7c
	s_load_b64 s[44:45], s[0:1], 0x38
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v34, 15, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v25, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v36, 1, v35
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s34, v65
	s_mul_i32 s4, s34, s46
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s34, v33
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s6, s34, 4
	s_mul_i32 s7, s34, 48
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s49, s49, 0xffff
	v_lshlrev_b32_e32 v67, 4, v0
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 787 26                        ; attention.py:787:26
	v_add3_u32 v1, v2, v33, s4
	s_lshl_b32 s4, s34, 5
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v73, v0, 4, 1
	v_mov_b32_e32 v15, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v13, v8 :: v_dual_lshlrev_b32 v2, 1, v1
	v_mov_b32_e32 v5, v8
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, v1, s6, 1
	v_add_lshl_u32 v4, v1, s4, 1
	v_add_lshl_u32 v1, v1, s7, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_load_b32 s4, s[0:1], 0x84
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_clause 0x3
	buffer_load_b128 v[37:40], v2, s[48:51], 0 offen
	buffer_load_b128 v[41:44], v3, s[48:51], 0 offen
	buffer_load_b128 v[45:48], v4, s[48:51], 0 offen
	buffer_load_b128 v[49:52], v1, s[48:51], 0 offen
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s5, s9
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_dual_mov_b32 v16, v8 :: v_dual_and_b32 v53, 0x70, v25
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v74, v36, v34
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v12, v8
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v53, v67, v53
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v36, s5, v74
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s5, s5, s8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v11, v8
	.loc	1 805 17                        ; attention.py:805:17
	s_waitcnt lgkmcnt(0)
	s_add_i32 s2, s2, s4
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s5, s5, s4
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 64
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s5, s5, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s2, 0x200
	v_mov_b32_e32 v10, v8
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 31
	v_mov_b32_e32 v9, v8
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s6, s2, 31
	v_mov_b32_e32 v24, v8
	s_lshr_b32 s6, s6, 27
	v_mov_b32_e32 v23, v8
	s_add_i32 s56, s2, s6
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
	v_mov_b32_e32 v103, v8
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_nc_u32_e32 v75, 0, v53
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x200, v36
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s47, s5, 0x7fffffe0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s56, s56, 31
	s_mov_b32 s36, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s47, s56
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v75, v[37:40]
	s_waitcnt vmcnt(2)
	ds_store_b128 v75, v[41:44] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v75, v[45:48] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v75, v[49:52] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v1, 7, v34
	v_lshlrev_b32_e32 v2, 6, v35
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v4, s4, v36
	v_lshlrev_b32_e32 v3, 4, v66
	s_clause 0x1
	s_load_b32 s10, s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v76, s8, v4
	v_mov_b32_e32 v26, v25
	.loc	1 788 26                        ; attention.py:788:26
	v_or3_b32 v2, v1, v2, v3
	v_dual_mov_b32 v30, v25 :: v_dual_add_nc_u32 v77, s9, v4
	v_mov_b32_e32 v27, v25
	v_dual_mov_b32 v28, v25 :: v_dual_and_b32 v5, 0x78, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_xad_u32 v7, 0x50, v2, 0
	v_xad_u32 v8, v2, 64, 0
	v_xad_u32 v9, v2, 48, 0
	v_xad_u32 v10, v2, 32, 0
	v_xad_u32 v4, 0x70, v2, 0
	v_xad_u32 v6, 0x60, v2, 0
	v_xad_u32 v11, v2, 16, 0
	v_add_nc_u32_e32 v2, 0, v2
	ds_load_b128 v[45:48], v7
	ds_load_b128 v[41:44], v8
	ds_load_b128 v[53:56], v9
	ds_load_b128 v[49:52], v10
	ds_load_b128 v[61:64], v11
	ds_load_b128 v[57:60], v2
	v_dual_mov_b32 v29, v25 :: v_dual_and_b32 v2, 16, v0
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s35, v33
	.loc	1 788 26                        ; attention.py:788:26
	ds_load_b128 v[37:40], v4
	ds_load_b128 v[33:36], v6
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v4, 2, v5
	v_cmp_eq_u32_e64 s1, 0, v2
	v_mov_b32_e32 v2, 0x7632
	v_or_b32_e32 v78, v3, v1
	v_mov_b32_e32 v1, 0x5410
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s3, s3, s47
	v_dual_mov_b32 v32, v25 :: v_dual_lshlrev_b32 v13, 3, v0
	v_cndmask_b32_e64 v2, 0x3276, v2, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v1, 0x1054, v1, s1
	v_xor_b32_e32 v9, 64, v78
	v_and_b32_e32 v14, 48, v67
	v_lshrrev_b32_e32 v5, 1, v5
	v_lshl_or_b32 v2, v2, 8, v2
	v_lshl_or_b32 v1, v1, 8, v1
	v_bfe_i32 v15, v0, 3, 1
	v_add_nc_u32_e32 v90, 0, v9
	v_mov_b32_e32 v24, v25
	v_dual_mov_b32 v31, v25 :: v_dual_and_b32 v2, 0x760076, v2
	v_and_b32_e32 v1, 0x540054, v1
	v_xor_b32_e32 v5, v14, v5
	v_and_b32_e32 v14, 0x210, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v2, v2, 4, v2
	v_xor_b32_e32 v6, 16, v78
	v_lshl_or_b32 v1, v1, 4, v1
	v_lshl_or_b32 v80, v66, 9, v5
	v_xor_b32_e32 v7, 32, v78
	v_and_b32_e32 v81, 0x7060706, v2
	v_add_nc_u32_e32 v2, s3, v65
	v_dual_mov_b32 v22, v25 :: v_dual_and_b32 v79, 0x5040504, v1
	v_add_nc_u32_e32 v1, s3, v4
	v_mov_b32_e32 v9, v25
	v_xor_b32_e32 v8, 48, v78
	v_xor_b32_e32 v10, 0x50, v78
	v_xor_b32_e32 v11, 0x60, v78
	v_mul_lo_u32 v1, s35, v1
	v_xor_b32_e32 v12, 0x70, v78
	v_xor_b32_e32 v4, 0x90, v80
	v_xor_b32_e32 v5, 0x120, v80
	v_add_nc_u32_e32 v87, 0, v6
	v_add_nc_u32_e32 v88, 0, v7
	v_add_nc_u32_e32 v89, 0, v8
	v_add_nc_u32_e32 v91, 0, v10
	v_add_nc_u32_e32 v18, s35, v1
	v_lshl_add_u32 v84, v1, 1, v3
	v_add_nc_u32_e32 v92, 0, v11
	v_add_nc_u32_e32 v93, 0, v12
	v_dual_mov_b32 v1, v25 :: v_dual_add_nc_u32 v94, 0, v4
	v_lshl_add_u32 v83, v18, 1, v3
	v_dual_mov_b32 v18, v25 :: v_dual_and_b32 v13, 48, v13
	v_dual_mov_b32 v4, v25 :: v_dual_add_nc_u32 v95, 0, v5
	v_mov_b32_e32 v23, v25
	v_mov_b32_e32 v10, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v13, v66, 6, v13
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_xor_b32_e32 v82, v13, v14
	v_xor_b32_e32 v13, 0x1b0, v80
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
	v_mov_b32_e32 v104, 0xff800000
	v_xor_b32_e32 v21, 0x410, v82
	v_xor_b32_e32 v15, 16, v82
	v_xor_b32_e32 v16, 32, v82
	v_xor_b32_e32 v17, 48, v82
	v_xor_b32_e32 v19, 0x420, v82
	v_dual_mov_b32 v103, v25 :: v_dual_add_nc_u32 v102, 0, v21
	v_dual_mov_b32 v21, v25 :: v_dual_add_nc_u32 v14, 16, v2
	v_mul_lo_u32 v2, s34, v2
	v_xor_b32_e32 v20, 0x430, v82
	v_add_nc_u32_e32 v96, 0, v13
	v_add_nc_u32_e32 v97, 0, v15
	v_mul_lo_u32 v14, s34, v14
	v_add_nc_u32_e32 v98, 0, v16
	v_add_nc_u32_e32 v99, 0, v17
	v_add_nc_u32_e32 v100, 0, v19
	v_lshl_add_u32 v86, v2, 1, v3
	v_add_nc_u32_e32 v101, 0, v20
	v_mov_b32_e32 v17, v25
	v_mov_b32_e32 v19, v25
	v_lshl_add_u32 v85, v14, 1, v3
	v_mov_b32_e32 v20, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	.loc	1 860 31                        ; attention.py:860:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s57, s10, 0x3fb8aa3b
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s53, s7, 0xffff
	.loc	1 818 13                        ; attention.py:818:13
	s_lshl_b32 s58, s35, 6
	s_lshl_b32 s59, s34, 6
	s_mov_b32 s48, s4
	s_mov_b32 s49, s5
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	s_mov_b32 s60, 0x76543210
	s_mov_b32 s52, s6
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 854 32                        ; attention.py:854:32
	v_dual_cndmask_b32 v112, 0x80000000, v86 :: v_dual_cndmask_b32 v113, 0x80000000, v85
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v114, s47, v73
	v_dual_mov_b32 v105, v103 :: v_dual_add_nc_u32 v106, 0, v80
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x1
	buffer_load_b128 v[115:118], v112, s[48:51], 0 offen
	buffer_load_b128 v[119:122], v113, s[48:51], 0 offen
	v_add_nc_u32_e32 v108, 0, v78
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v103, 30, v114
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v112, 28, v114
	v_add_nc_u32_e32 v113, 26, v114
	v_add_nc_u32_e32 v123, 24, v114
	v_add_nc_u32_e32 v124, 22, v114
	v_add_nc_u32_e32 v125, 20, v114
	v_add_nc_u32_e32 v126, 18, v114
	v_add_nc_u32_e32 v127, 16, v114
	v_add_nc_u32_e32 v128, 14, v114
	v_add_nc_u32_e32 v129, 12, v114
	v_add_nc_u32_e32 v130, 10, v114
	v_add_nc_u32_e32 v131, 2, v114
	v_add_nc_u32_e32 v132, 8, v114
	v_add_nc_u32_e32 v133, 6, v114
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v114, v76
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s4, v114, v77
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v114, 4, v114
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v72, s43 :: v_dual_mov_b32 v69, s40
	v_mov_b32_e32 v71, s42
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s11, v123, v76
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s12, v123, v77
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s13, v124, v76
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s14, v124, v77
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s15, v125, v76
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s16, v125, v77
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s17, v126, v76
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s18, v126, v77
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s19, v127, v76
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s20, v127, v77
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s21, v128, v76
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s22, v128, v77
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s23, v129, v76
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s24, v129, v77
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s30, v114, v76
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s33, v114, v77
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v70, s41 :: v_dual_mov_b32 v67, s38
	v_dual_mov_b32 v68, s39 :: v_dual_mov_b32 v65, s36
	v_dual_mov_b32 v66, s37 :: v_dual_add_nc_u32 v109, 0, v82
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s25, v130, v76
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s26, v130, v77
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s27, v132, v76
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s28, v132, v77
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s29, v133, v76
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s31, v133, v77
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s34, v131, v76
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s4, s3, s4
	.loc	1 867 30 is_stmt 0              ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v131, v77
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_cndmask_b32_e64 v111, 0x80000000, v84, s0
	v_cndmask_b32_e64 v110, 0x80000000, v83, s0
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s4, s2, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v107.h, 0
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v104
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s47, s47, 32
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(1)
	ds_store_b128 v75, v[115:118]
	s_waitcnt vmcnt(0)
	ds_store_b128 v75, v[119:122] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[118:121], v87
	ds_load_b128 v[114:117], v108
	ds_load_b128 v[122:125], v108 offset:2048
	ds_load_b128 v[126:129], v87 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v138.h, v107.h
	v_mov_b16_e64 v139.h, v107.h
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v85, s59, v85
	v_add_nc_u32_e32 v84, s58, v84
	v_add_nc_u32_e32 v86, s59, v86
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[130:137], v[114:121], v[57:64], v[65:72]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[114:121], v[122:129], v[57:64], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[69:72], v89
	ds_load_b128 v[65:68], v88
	ds_load_b128 v[122:125], v92 offset:2048
	ds_load_b128 v[126:129], v93 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[130:137], v[65:72], v[49:56], v[130:137]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v88 offset:2048
	ds_load_b128 v[69:72], v89 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[114:121], v[65:72], v[49:56], v[114:121]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[69:72], v91
	ds_load_b128 v[65:68], v90
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[130:137], v[65:72], v[41:48], v[130:137]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v90 offset:2048
	ds_load_b128 v[69:72], v91 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[114:121], v[65:72], v[41:48], v[114:121]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[69:72], v93
	ds_load_b128 v[65:68], v92
	.loc	1 859 30                        ; attention.py:859:30
	v_wmma_f32_16x16x16_bf16 v[114:121], v[122:129], v[33:40], v[114:121]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v115, s57, v115 :: v_dual_mul_f32 v116, s57, v116
	v_mul_f32_e32 v117, s57, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v119, s57, v119 :: v_dual_mul_f32 v120, s57, v120
	v_mul_f32_e32 v121, s57, v121
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[130:137], v[65:72], v[33:40], v[130:137]
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[65:68], v111, s[52:55], 0 offen
	buffer_load_b128 v[69:72], v110, s[52:55], 0 offen
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v83, s58, v83
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v122, s57, v132
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s5, v103, v76
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s6, v103, v77
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v123, s57, v133
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s7, v112, v76
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s8, v112, v77
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v126, s57, v136
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s9, v113, v76
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s10, v113, v77
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v111, s57, v131
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s5, s6
	s_and_b32 s61, s7, s8
	s_and_b32 s7, s11, s12
	s_and_b32 s6, s9, s10
	s_and_b32 s8, s13, s14
	s_and_b32 s9, s15, s16
	s_and_b32 s10, s17, s18
	s_and_b32 s11, s19, s20
	s_and_b32 s12, s21, s22
	s_and_b32 s13, s23, s24
	s_and_b32 s14, s25, s26
	s_and_b32 s15, s27, s28
	s_and_b32 s16, s29, s31
	s_and_b32 s17, s30, s33
	s_and_b32 s18, s34, s3
	s_and_b32 s3, s2, s5
	s_and_b32 s5, s2, s6
	s_and_b32 s6, s2, s7
	s_and_b32 s7, s2, s8
	s_and_b32 s8, s2, s9
	s_and_b32 s9, s2, s10
	s_and_b32 s10, s2, s11
	s_and_b32 s11, s2, s12
	s_and_b32 s12, s2, s13
	s_and_b32 s13, s2, s14
	s_and_b32 s14, s2, s15
	s_and_b32 s15, s2, s16
	s_and_b32 s16, s2, s17
	s_and_b32 s17, s2, s18
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v108, s57, v130 :: v_dual_mul_f32 v125, s57, v135
	v_mul_f32_e32 v127, s57, v137
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v123, 0xff800000, v123, s15
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v118, s57, v118
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v111, 0xff800000, v111, s17
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v124, s57, v134
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s18, s2, s61
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v119, 0xff800000, v119, s5
	v_cndmask_b32_e64 v110, 0xff800000, v120, s18
	v_cndmask_b32_e64 v120, 0xff800000, v121, s3
	v_cndmask_b32_e64 v118, 0xff800000, v118, s6
	v_cndmask_b32_e64 v116, 0xff800000, v116, s8
	v_cndmask_b32_e64 v117, 0xff800000, v117, s7
	v_cndmask_b32_e64 v115, 0xff800000, v115, s9
	v_cndmask_b32_e64 v121, 0xff800000, v126, s12
	v_cndmask_b32_e64 v126, 0xff800000, v127, s11
	v_cndmask_b32_e64 v124, 0xff800000, v124, s14
	v_cndmask_b32_e64 v125, 0xff800000, v125, s13
	v_cndmask_b32_e64 v127, 0xff800000, v108, s4
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v114, s57, v114
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v122, 0xff800000, v122, s16
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v108, v118, v119, v110
	v_max3_f32 v128, v115, v116, v117
	v_max3_f32 v129, v123, v124, v125
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v114, 0xff800000, v114, s10
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v130, v127, v111
.Ltmp4:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v103.h, v107.h
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v108, v128, v108, v120
.Ltmp6:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v112.h, v107.h
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v131, v121, v126, v114
	v_max3_f32 v128, v130, v122, v129
.Ltmp8:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v113.h, v107.h
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s47, s56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v108, v128, v131, v108
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v128, v108, s60, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v108, v104, v108, v128
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v111, v111, v108
	v_sub_f32_e32 v127, v127, v108
	v_sub_f32_e32 v124, v124, v108
	v_sub_f32_e32 v122, v122, v108
	v_sub_f32_e32 v123, v123, v108
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v111, v111
	v_exp_f32_e32 v127, v127
	v_exp_f32_e32 v124, v124
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v126, v126, v108
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v122, v122
	v_exp_f32_e32 v123, v123
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_sub_f32_e32 v104, v104, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v126, v126
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v111, 0, v111, s17
	v_cndmask_b32_e64 v127, 0, v127, s4
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v125, v125, v108
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v124, 0, v124, s14
	v_cndmask_b32_e64 v122, 0, v122, s16
	s_delay_alu instid0(TRANS32_DEP_2)
	v_cndmask_b32_e64 v123, 0, v123, s15
.Ltmp12:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v128, v127, v111
.Ltmp13:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v125, v125
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v116, v116, v108
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v126, 0, v126, s11
.Ltmp14:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v129, v122, v123
.Ltmp15:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v115, v115, v108
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v107.l, v111.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v116, v116
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v138.l, v127.h
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v128, v128, v129
.Ltmp17:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v115, v115
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v125, 0, v125, s13
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v121, v121, v108
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v104, v104
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v103.l, v124.h
	v_cmp_o_f32_e64 s4, v127, v127
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v130, v124, v125
.Ltmp19:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v121, v121
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v116, 0, v116, s8
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v139.l, v122.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v115, 0, v115, s9
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v103, 1, v103
	v_cmp_o_f32_e64 s8, v126, v126
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v135, 0, v104, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v134, 1, v139
	v_cmp_o_f32_e64 s1, v123, v123
	v_add3_u32 v103, v124, v103, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v121, 0, v121, s12
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v114, v114, v108
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s13, v116, v116
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v30, v30, v135 :: v_dual_add_f32 v131, v121, v126
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v114, v114
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v119, v119, v108
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v133, 1, v138
	v_mov_b16_e32 v112.l, v121.h
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v130, v130, v131
.Ltmp21:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v135
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v119, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v127, v127, v133, 0x7fff
	v_mov_b16_e64 v133.h, v107.h
	v_and_b32_e32 v104, 1, v112
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v114, 0, v114, s10
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v117, v117, v108
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v121, v121
	v_cmp_o_f32_e64 s10, v115, v115
	v_add3_u32 v104, v121, v104, 0x7fff
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v132, v114, v115
.Ltmp23:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v117, v117
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v119, 0, v119, s5
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v113.l, v114.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v29, v29, v135
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v122, v122
	v_add3_u32 v122, v122, v134, 0x7fff
	v_mov_b16_e64 v134.h, v107.h
	v_and_b32_e32 v112, 1, v113
	v_cmp_o_f32_e64 s11, v114, v114
	v_cndmask_b16 v121.l, 0x7fff, v104.h, s9
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v117, 0, v117, s7
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v118, v118, v108
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v124, v124
	v_add3_u32 v112, v114, v112, 0x7fff
	v_cndmask_b16 v103.l, 0x7fff, v122.h, s5
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v129, v116, v117
.Ltmp25:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v118, v118
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v110, v110, v108
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v104.l, 0x7fff, v103.h, s7
	v_cndmask_b16 v122.l, 0x7fff, v112.h, s11
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v129, v132, v129
.Ltmp27:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v135
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v110, v110
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s12, v117, v117
	v_cmp_o_f32_e64 s14, v119, v119
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v18, v18, v135
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v118, 0, v118, s6
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v120, v120, v108
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v125, v125
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v19, v19, v135
	v_mul_f32_e32 v20, v20, v135
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v131, v118, v119
.Ltmp29:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v120, v120
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v110, 0, v110, s18
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v133.l, v118.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v31, v31, v135
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s15, v118, v118
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v135
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v134.l, v110.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v135
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s17, v110, v110
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v22, v22, v135
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v120, 0, v120, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v111, v111
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v23, v23, v135
	v_mul_f32_e32 v24, v24, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v9, v9, v135 :: v_dual_add_f32 v132, v110, v120
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s16, v120, v120
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v135
	v_mul_f32_e32 v11, v11, v135
	v_dual_mul_f32 v12, v12, v135 :: v_dual_add_f32 v131, v131, v132
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v132, 1, v107
	v_mov_b16_e32 v107.l, v123.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v13, v13, v135
	v_mul_f32_e32 v14, v14, v135
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v136, v129, v131
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v111, v111, v132, 0x7fff
	v_mov_b16_e64 v132.h, v107.h
	v_mov_b16_e64 v132.l, v116.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v135
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v124, 1, v107
	v_mov_b16_e32 v107.l, v125.h
	v_cndmask_b16 v111.h, 0x7fff, v111.h, s3
	v_and_b32_e32 v113, 1, v132
	v_and_b32_e32 v132, 1, v133
	v_and_b32_e32 v133, 1, v134
	v_cndmask_b16 v111.l, 0x7fff, v127.h, s4
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v134, v128, v130
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v113, v116, v113, 0x7fff
	v_add3_u32 v114, v118, v132, 0x7fff
	v_add3_u32 v116, v123, v124, 0x7fff
	v_and_b32_e32 v118, 1, v107
	v_mov_b16_e32 v107.l, v126.h
	v_cndmask_b16 v123.l, 0x7fff, v113.h, s13
	v_cndmask_b16 v124.l, 0x7fff, v114.h, s15
	v_cndmask_b16 v103.h, 0x7fff, v116.h, s1
	v_add3_u32 v113, v125, v118, 0x7fff
	v_and_b32_e32 v114, 1, v107
	v_mov_b16_e32 v107.l, v115.h
	v_add3_u32 v110, v110, v133, 0x7fff
	v_permlanex16_b32 v112, v111, s60, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v104.h, 0x7fff, v113.h, s6
	v_permlanex16_b32 v113, v103, s60, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v116, 1, v107
	v_mov_b16_e32 v107.l, v117.h
	v_cndmask_b16 v127.l, 0x7fff, v110.h, s17
	v_perm_b32 v110, v112, v111, v79
	v_perm_b32 v111, v112, v111, v81
	v_perm_b32 v112, v113, v103, v79
	v_and_b32_e32 v125, 1, v107
	v_mov_b16_e32 v107.l, v119.h
	v_perm_b32 v113, v113, v103, v81
	v_add3_u32 v103, v115, v116, 0x7fff
	v_add3_u32 v114, v126, v114, 0x7fff
	v_permlanex16_b32 v118, v104, s60, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v128, 1, v107
	v_mov_b16_e32 v107.l, v120.h
	v_cndmask_b16 v122.h, 0x7fff, v103.h, s10
	v_add3_u32 v103, v117, v125, 0x7fff
	v_cndmask_b16 v121.h, 0x7fff, v114.h, s8
	v_perm_b32 v114, v118, v104, v79
	v_perm_b32 v115, v118, v104, v81
	v_and_b32_e32 v104, 1, v107
	v_cndmask_b16 v123.h, 0x7fff, v103.h, s12
	v_add3_u32 v103, v119, v128, 0x7fff
	v_permlanex16_b32 v126, v121, s60, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v107, v122, s60, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v104, v120, v104, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v32, v32, v135
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v124.h, 0x7fff, v103.h, s14
	v_perm_b32 v116, v126, v121, v79
	v_perm_b32 v117, v126, v121, v81
	v_permlanex16_b32 v121, v123, s60, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v127.h, 0x7fff, v104.h, s16
	v_permlanex16_b32 v103, v124, s60, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v118, v107, v122, v79
	v_perm_b32 v119, v107, v122, v81
	v_perm_b32 v120, v121, v123, v79
	v_perm_b32 v121, v121, v123, v81
	v_permlanex16_b32 v104, v127, s60, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v122, v103, v124, v79
	v_perm_b32 v123, v103, v124, v81
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v15, v15, v135
	v_mul_f32_e32 v16, v16, v135
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v124, v104, v127, v79
	v_perm_b32 v125, v104, v127, v81
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v135
	v_mul_f32_e32 v2, v2, v135
	v_mul_f32_e32 v3, v3, v135
	v_mul_f32_e32 v4, v4, v135
	v_mul_f32_e32 v5, v5, v135
	v_mul_f32_e32 v6, v6, v135
	v_mul_f32_e32 v7, v7, v135
	v_mul_f32_e32 v8, v8, v135
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v103.l, v65.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v103.h, v69.l
	v_mov_b16_e32 v69.l, v65.h
	v_mov_b16_e32 v65.l, v66.l
	v_mov_b16_e32 v65.h, v70.l
	v_mov_b16_e32 v70.l, v66.h
	v_mov_b16_e32 v66.l, v67.l
	v_mov_b16_e32 v66.h, v71.l
	v_mov_b16_e32 v71.l, v67.h
	v_mov_b16_e32 v67.l, v68.l
	v_mov_b16_e32 v67.h, v72.l
	v_mov_b16_e32 v72.l, v68.h
	ds_store_2addr_b32 v106, v103, v69 offset1:16
	ds_store_2addr_b32 v94, v65, v70 offset1:16
	ds_store_2addr_b32 v95, v66, v71 offset1:16
	ds_store_2addr_b32 v96, v67, v72 offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v109
	ds_load_b128 v[69:72], v97
	ds_load_b128 v[130:133], v101
	ds_load_b128 v[126:129], v100
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v103, v134, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v104, v103, s60, 0xfedcba98 op_sel:[1,0]
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v103, v103, v104 :: v_dual_mov_b32 v104, v108
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp37:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v103, v105, v135
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[65:72], v[110:117], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[69:72], v97 offset:2048
	ds_load_b128 v[65:68], v109 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[126:133], v[110:117], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[126:129], v100 offset:2048
	ds_load_b128 v[130:133], v101 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[65:72], v[110:117], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[69:72], v99
	ds_load_b128 v[65:68], v98
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[126:133], v[110:117], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[110:113], v109 offset:1024
	ds_load_b128 v[126:129], v109 offset:3072
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[65:72], v[118:125], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[65:68], v98 offset:2048
	ds_load_b128 v[114:117], v102
	ds_load_b128 v[69:72], v99 offset:2048
	ds_load_b128 v[130:133], v102 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[110:117], v[118:125], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[65:72], v[118:125], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[126:133], v[118:125], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow103
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v36, null, v103, v103, v25
	v_div_scale_f32 v37, null, v103, v103, v26
	v_div_scale_f32 v40, null, v103, v103, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v38, v36
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v42, null, v103, v103, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v43, v40
	v_div_scale_f32 v41, vcc_lo, v25, v103, v25
	v_rcp_f32_e32 v45, v42
	v_div_scale_f32 v44, s0, v26, v103, v26
	v_fma_f32 v33, -v36, v38, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v35, -v37, v39, 1.0
	v_div_scale_f32 v50, s1, v27, v103, v27
	v_fma_f32 v47, -v40, v43, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v38, v33, v38 :: v_dual_fmac_f32 v39, v35, v39
	v_fma_f32 v51, -v42, v45, 1.0
	v_div_scale_f32 v52, null, v103, v103, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v46, v41, v38 :: v_dual_fmac_f32 v43, v47, v43
	v_dual_mul_f32 v48, v44, v39 :: v_dual_fmac_f32 v45, v51, v45
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s45, s45, 0xffff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v36, v46, v41
	s_mov_b32 s47, 0x31027000
	v_fma_f32 v47, -v37, v48, v44
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v34, 16, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v51, v50, v43 :: v_dual_fmac_f32 v46, v49, v38
	v_div_scale_f32 v49, s3, v28, v103, v28
	v_fmac_f32_e32 v48, v47, v39
	v_div_scale_f32 v47, null, v103, v103, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v36, v46, v41
	v_div_scale_f32 v41, null, v103, v103, v29
	v_fma_f32 v37, -v37, v48, v44
	v_fma_f32 v44, -v40, v51, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v36, v36, v38, v46
	v_rcp_f32_e32 v38, v41
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v46, v49, v45 :: v_dual_fmac_f32 v51, v44, v43
	v_div_fixup_f32 v25, v36, v103, v25
	v_div_fmas_f32 v36, v37, v39, v48
	v_rcp_f32_e32 v37, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fma_f32 v39, -v42, v46, v49
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v48, s1, v30, v103, v30
	v_fma_f32 v44, -v41, v38, 1.0
	v_div_fixup_f32 v26, v36, v103, v26
	v_fma_f32 v36, -v40, v51, v50
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v103
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v35, 32, v73
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v44, v38
	v_fmac_f32_e32 v46, v39, v45
	v_fma_f32 v40, -v47, v37, 1.0
	v_div_scale_f32 v44, null, v103, v103, v31
	v_div_fmas_f32 v36, v36, v43, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v42, v46, v49
	v_fmac_f32_e32 v37, v40, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v40, v44
	v_div_scale_f32 v49, null, v103, v103, v32
	v_div_scale_f32 v39, s4, v29, v103, v29
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v51, v49
	v_div_fmas_f32 v42, v42, v45, v46
	v_div_fixup_f32 v27, v36, v103, v27
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v50, -v44, v40, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v28, v42, v103, v28
	v_mul_f32_e32 v46, v48, v37
	v_div_scale_f32 v42, s3, v31, v103, v31
	v_fmac_f32_e32 v40, v50, v40
	v_fma_f32 v50, -v49, v51, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v36, -v47, v46, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	v_cndmask_b32_e64 v27, 0, v27, s0
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v51, v50, v51
	v_mul_f32_e32 v43, v39, v38
	v_div_scale_f32 v50, s5, v32, v103, v32
	v_fmac_f32_e32 v46, v36, v37
	v_lshrrev_b32_e32 v0, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v41, v43, v39
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v33, 48, v73
	v_or_b32_e32 v0, 62, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v45, v38
	v_div_scale_f32 v45, null, v103, v103, v17
	v_fma_f32 v39, -v41, v43, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v41, v45
	v_div_fmas_f32 v38, v39, v38, v43
	v_fma_f32 v39, -v47, v46, v48
	v_mul_f32_e32 v47, v50, v51
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v29, v38, v103, v29
	v_fma_f32 v48, -v45, v41, 1.0
	v_div_fmas_f32 v37, v39, v37, v46
	v_rcp_f32_e32 v39, v52
	v_div_scale_f32 v46, s1, v17, v103, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v41, v48, v41 :: v_dual_mul_f32 v36, v42, v40
	v_div_fixup_f32 v30, v37, v103, v30
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v48, null, v103, v103, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v44, v36, v42
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v43, v40
	v_fma_f32 v43, -v49, v47, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v44, v36, v42
	v_fmac_f32_e32 v47, v43, v51
	v_fma_f32 v42, -v52, v39, 1.0
	v_div_scale_f32 v44, s3, v18, v103, v18
	v_div_scale_f32 v43, null, v103, v103, v19
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v39, v42, v39
	v_mul_f32_e32 v38, v46, v41
	v_div_fmas_f32 v36, v37, v40, v36
	v_fma_f32 v37, -v49, v47, v50
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v31, v36, v103, v31
	v_div_fmas_f32 v37, v37, v51, v47
	v_mul_f32_e32 v47, v44, v39
	v_fma_f32 v40, -v45, v38, v46
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v32, v37, v103, v32
	v_fma_f32 v37, -v52, v47, v44
	v_fmac_f32_e32 v38, v40, v41
	v_rcp_f32_e32 v40, v48
	v_fma_f32 v49, -v43, v42, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v47, v37, v39
	v_fma_f32 v36, -v45, v38, v46
	v_div_scale_f32 v45, s4, v19, v103, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v36, v36, v41, v38
	v_fma_f32 v46, -v48, v40, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v41, s1, v20, v103, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v17, v36, v103, v17
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v46, null, v103, v103, v22
	v_fma_f32 v36, -v52, v47, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v51, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v36, v36, v39, v47
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v18, v36, v103, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v46, v51, 1.0
	v_fmac_f32_e32 v42, v49, v42
	v_div_scale_f32 v49, null, v103, v103, v21
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v51, v47, v51
	v_rcp_f32_e32 v38, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v49, v38, 1.0
	v_fmac_f32_e32 v38, v52, v38
	v_mul_f32_e32 v50, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v48, v50, v41
	v_dual_mul_f32 v37, v45, v42 :: v_dual_fmac_f32 v50, v39, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v43, v37, v45
	v_fmac_f32_e32 v37, v44, v42
	v_div_scale_f32 v44, s3, v21, v103, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v43, v37, v45
	v_div_scale_f32 v43, s5, v22, v103, v22
	v_div_scale_f32 v45, null, v103, v103, v23
	v_div_fmas_f32 v36, v36, v42, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v47, v43, v51
	v_mul_f32_e32 v39, v44, v38
	v_fma_f32 v37, -v48, v50, v41
	v_rcp_f32_e32 v42, v45
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v48, null, v103, v103, v24
	v_fma_f32 v41, -v49, v39, v44
	v_div_fmas_f32 v37, v37, v40, v50
	v_div_fixup_f32 v19, v36, v103, v19
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v40, v48
	v_fmac_f32_e32 v39, v41, v38
	v_fma_f32 v41, -v46, v47, v43
	v_fma_f32 v50, -v45, v42, 1.0
	v_div_fixup_f32 v20, v37, v103, v20
	v_div_scale_f32 v37, s1, v23, v103, v23
	v_fma_f32 v36, -v49, v39, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v47, v41, v51 :: v_dual_fmac_f32 v42, v50, v42
	v_div_scale_f32 v49, null, v103, v103, v10
	v_div_fmas_f32 v36, v36, v38, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v46, v47, v43
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v41, -v48, v40, 1.0
	v_div_scale_f32 v43, s3, v24, v103, v24
	v_div_fmas_f32 v38, v38, v51, v47
	v_div_fixup_f32 v21, v36, v103, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, null, v103, v103, v9
	v_div_fixup_f32 v22, v38, v103, v22
	v_rcp_f32_e32 v38, v49
	v_div_scale_f32 v51, null, v103, v103, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v44, v41
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v53, v51
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v49, v38, 1.0
	v_dual_mul_f32 v47, v43, v40 :: v_dual_fmac_f32 v38, v50, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v48, v47, v43
	v_fmac_f32_e32 v47, v36, v40
	v_div_scale_f32 v36, s4, v9, v103, v9
	v_mul_f32_e32 v39, v37, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v45, v39, v37
	v_fmac_f32_e32 v39, v46, v42
	v_fma_f32 v46, -v41, v44, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v45, v39, v37
	v_div_scale_f32 v45, null, v103, v103, v11
	v_fmac_f32_e32 v44, v46, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v37, v37, v42, v39
	v_rcp_f32_e32 v46, v45
	v_fma_f32 v39, -v48, v47, v43
	v_div_scale_f32 v43, s1, v10, v103, v10
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v42, v36, v44
	v_div_fixup_f32 v23, v37, v103, v23
	v_mul_f32_e32 v52, v43, v38
	v_div_fmas_f32 v39, v39, v40, v47
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v48, -v45, v46, 1.0
	v_fma_f32 v50, -v41, v42, v36
	v_fma_f32 v40, -v49, v52, v43
	v_div_fixup_f32 v24, v39, v103, v24
	v_fma_f32 v39, -v51, v53, 1.0
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s5, v11, v103, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v52, v40, v38 :: v_dual_fmac_f32 v53, v39, v53
	v_dual_fmac_f32 v42, v50, v44 :: v_dual_mul_f32 v47, v48, v46
	v_div_scale_f32 v40, null, v103, v103, v13
	v_div_scale_f32 v39, s3, v12, v103, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v45, v47, v48
	v_fma_f32 v36, -v41, v42, v36
	v_fma_f32 v41, -v49, v52, v43
	v_div_scale_f32 v43, null, v103, v103, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v47, v37, v46
	v_rcp_f32_e32 v37, v40
	v_div_fmas_f32 v36, v36, v44, v42
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v42, v39, v53
	v_div_fmas_f32 v38, v41, v38, v52
	v_fma_f32 v41, -v45, v47, v48
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v36, v103, v9
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v10, v38, v103, v10
	v_fma_f32 v44, -v40, v37, 1.0
	v_div_fmas_f32 v41, v41, v46, v47
	v_fma_f32 v46, -v51, v42, v39
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v44, v37
	v_div_scale_f32 v44, s1, v13, v103, v13
	v_div_fixup_f32 v11, v41, v103, v11
	v_div_scale_f32 v41, null, v103, v103, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v36, v44, v37
	v_fma_f32 v38, -v43, v45, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v47, v41
	v_fmac_f32_e32 v42, v46, v53
	v_fma_f32 v46, -v40, v36, v44
	v_fmac_f32_e32 v45, v38, v45
	v_div_scale_f32 v38, s4, v14, v103, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v51, v42, v39
	v_fmac_f32_e32 v36, v46, v37
	v_div_scale_f32 v46, null, v103, v103, v16
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v39, v39, v53, v42
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v48, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v12, v39, v103, v12
	v_fma_f32 v39, -v40, v36, v44
	v_fma_f32 v44, -v41, v47, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v39, v37, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v44, v47
	v_div_scale_f32 v44, null, v103, v103, v2
	v_div_scale_f32 v37, null, v103, v103, v1
	v_div_fixup_f32 v13, v36, v103, v13
	v_fma_f32 v36, -v46, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v44
	v_div_scale_f32 v39, s1, v15, v103, v15
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v48, v36, v48
	v_div_scale_f32 v36, s3, v16, v103, v16
	v_mul_f32_e32 v42, v38, v45
	v_div_scale_f32 v51, s4, v1, v103, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v44, v50, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v43, v42, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v52, v50
	v_div_scale_f32 v52, s5, v2, v103, v2
	v_fmac_f32_e32 v42, v40, v45
	v_rcp_f32_e32 v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v43, v42, v38
	v_mul_f32_e32 v43, v39, v47
	v_div_fmas_f32 v38, v38, v45, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v37, v40, 1.0
	v_fma_f32 v42, -v41, v43, v39
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v14, v38, v103, v14
	v_fmac_f32_e32 v40, v49, v40
	v_div_scale_f32 v49, null, v103, v103, v3
	v_fmac_f32_e32 v43, v42, v47
	v_mul_f32_e32 v45, v36, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v53, v49
	v_fma_f32 v38, -v41, v43, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v46, v45, v36
	v_div_fmas_f32 v38, v38, v47, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v45, v42, v48
	v_mul_f32_e32 v41, v52, v50
	v_fma_f32 v42, -v49, v53, 1.0
	v_mul_f32_e32 v54, v51, v40
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v46, v45, v36
	v_div_scale_f32 v43, null, v103, v103, v4
	v_fmac_f32_e32 v53, v42, v53
	v_fma_f32 v39, -v37, v54, v51
	v_div_scale_f32 v42, s1, v3, v103, v3
	v_div_fmas_f32 v36, v36, v48, v45
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v54, v39, v40
	v_fma_f32 v39, -v44, v41, v52
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v16, v36, v103, v16
	v_div_fixup_f32 v15, v38, v103, v15
	v_div_scale_f32 v47, null, v103, v103, v8
	v_fmac_f32_e32 v41, v39, v50
	v_mul_f32_e32 v39, v42, v53
	v_fma_f32 v37, -v37, v54, v51
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v16, 0, v16, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v43, v45, 1.0
	v_div_fmas_f32 v37, v37, v40, v54
	v_fma_f32 v40, -v44, v41, v52
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v44, -v49, v39, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v1, v37, v103, v1
	v_div_fmas_f32 v40, v40, v50, v41
	v_div_scale_f32 v37, null, v103, v103, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v44, v53
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v2, v40, v103, v2
	v_div_scale_f32 v40, null, v103, v103, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v44, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v40, v44, 1.0
	v_fmac_f32_e32 v44, v51, v44
	v_fma_f32 v36, -v49, v39, v42
	v_rcp_f32_e32 v49, v47
	v_div_scale_f32 v51, s4, v7, v103, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v36, v53, v39
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v41, vcc_lo, v4, v103, v4
	v_mul_f32_e32 v55, v51, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v3, v36, v103, v3
	v_fma_f32 v53, -v47, v49, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v37, v39, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, v53, v49
	v_div_scale_f32 v53, s5, v8, v103, v8
	v_fmac_f32_e32 v39, v36, v39
	v_div_scale_f32 v36, s1, v5, v103, v5
	v_fmac_f32_e32 v45, v38, v45
	v_div_scale_f32 v38, null, v103, v103, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v52, v36, v39
	v_mul_f32_e32 v56, v53, v49
	v_mul_f32_e32 v46, v41, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v42, v38
	v_fma_f32 v50, -v43, v46, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v46, v50, v45
	v_fma_f32 v48, -v38, v42, 1.0
	v_fma_f32 v50, -v37, v52, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v43, v46, v41
	v_fmac_f32_e32 v42, v48, v42
	v_div_scale_f32 v48, s3, v6, v103, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v52, v50, v39
	v_fma_f32 v50, -v40, v55, v51
	v_div_fmas_f32 v41, v41, v45, v46
	v_mul_f32_e32 v54, v48, v42
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v36, -v37, v52, v36
	v_fmac_f32_e32 v55, v50, v44
	v_fma_f32 v37, -v47, v56, v53
	v_fma_f32 v43, -v38, v54, v48
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	s_mul_i32 s1, s35, s46
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v39, v52
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v56, v37, v49
	v_fmac_f32_e32 v54, v43, v42
	v_fma_f32 v37, -v40, v55, v51
	v_div_fixup_f32 v5, v36, v103, v5
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v36, s35, v74
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v47, v56, v53
	v_fma_f32 v38, -v38, v54, v48
	v_div_fixup_f32 v4, v41, v103, v4
	s_mov_b32 s46, 0x7ffffffe
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s35, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v42, v54
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v44, v55
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v38, v103, v6
	v_div_fmas_f32 v39, v39, v49, v56
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s35, v73
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v37, v103, v7
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_nc_u32_e32 v37, v36, v73
	v_add_nc_u32_e32 v36, s1, v36
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v39, v103, v8
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v38, v36, v73, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s35, v34
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v37, v37, s1, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s35, v35
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v39, 8, v38
	v_add_nc_u32_e32 v40, 16, v38
	v_cndmask_b32_e32 v41, 0x80000000, v38, vcc_lo
	v_add_lshl_u32 v0, v36, v0, 2
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_cndmask_b32 v40, 0x80000000, v40
	s_clause 0x2
	buffer_store_b32 v25, v41, s[44:47], 0 offen
	buffer_store_b32 v26, v39, s[44:47], 0 offen
	buffer_store_b32 v27, v40, s[44:47], 0 offen
	v_add_nc_u32_e32 v39, 48, v38
	v_add_nc_u32_e32 v40, 56, v38
	v_add_nc_u32_e32 v25, 24, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	v_dual_cndmask_b32 v40, 0x80000000, v40 :: v_dual_add_nc_u32 v27, 40, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_add_nc_u32 v26, 32, v38
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	s_clause 0x4
	buffer_store_b32 v28, v25, s[44:47], 0 offen
	buffer_store_b32 v29, v26, s[44:47], 0 offen
	buffer_store_b32 v30, v27, s[44:47], 0 offen
	buffer_store_b32 v31, v39, s[44:47], 0 offen
	buffer_store_b32 v32, v40, s[44:47], 0 offen
	v_add_lshl_u32 v25, v36, v34, 2
	v_add_nc_u32_e32 v26, 0x48, v38
	v_add_nc_u32_e32 v27, 0x50, v38
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v28, 0x58, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	v_add_nc_u32_e32 v29, 0x60, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	s_clause 0x2
	buffer_store_b32 v17, v25, s[44:47], 0 offen
	buffer_store_b32 v18, v26, s[44:47], 0 offen
	buffer_store_b32 v19, v27, s[44:47], 0 offen
	v_add_nc_u32_e32 v18, 0x68, v38
	v_add_nc_u32_e32 v19, 0x70, v38
	v_cndmask_b32_e32 v17, 0x80000000, v29, vcc_lo
	buffer_store_b32 v20, v28, s[44:47], 0 offen
	v_add_nc_u32_e32 v20, 0x78, v38
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	buffer_store_b32 v21, v17, s[44:47], 0 offen
	v_add_lshl_u32 v17, v36, v35, 2
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v22, v18, s[44:47], 0 offen
	v_add_nc_u32_e32 v18, 0x88, v37
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v19, s[44:47], 0 offen
	buffer_store_b32 v24, v20, s[44:47], 0 offen
	buffer_store_b32 v9, v17, s[44:47], 0 offen
	v_add_nc_u32_e32 v9, 0x90, v37
	v_add_nc_u32_e32 v20, 0xa8, v37
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	v_add_nc_u32_e32 v18, 0x98, v37
	v_add_nc_u32_e32 v19, 0xa0, v37
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_store_b32 v10, v17, s[44:47], 0 offen
	v_dual_cndmask_b32 v10, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v19
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	buffer_store_b32 v11, v9, s[44:47], 0 offen
	v_add_nc_u32_e32 v9, 0xb0, v37
	s_clause 0x2
	buffer_store_b32 v12, v10, s[44:47], 0 offen
	buffer_store_b32 v13, v17, s[44:47], 0 offen
	buffer_store_b32 v14, v18, s[44:47], 0 offen
	v_add_nc_u32_e32 v10, 0xb8, v37
	v_add_lshl_u32 v11, v36, v33, 2
	v_add_nc_u32_e32 v12, 0xc8, v37
	v_add_nc_u32_e32 v13, 0xd0, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_cndmask_b32 v13, 0x80000000, v13
	s_clause 0x4
	buffer_store_b32 v15, v9, s[44:47], 0 offen
	buffer_store_b32 v16, v10, s[44:47], 0 offen
	buffer_store_b32 v1, v11, s[44:47], 0 offen
	buffer_store_b32 v2, v12, s[44:47], 0 offen
	buffer_store_b32 v3, v13, s[44:47], 0 offen
	v_add_nc_u32_e32 v1, 0xd8, v37
	v_add_nc_u32_e32 v2, 0xe0, v37
	v_add_nc_u32_e32 v3, 0xe8, v37
	v_add_nc_u32_e32 v9, 0xf0, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[44:47], 0 offen
	buffer_store_b32 v5, v2, s[44:47], 0 offen
	buffer_store_b32 v6, v3, s[44:47], 0 offen
	buffer_store_b32 v7, v9, s[44:47], 0 offen
	buffer_store_b32 v8, v0, s[44:47], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp38:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 140
		.amdhsa_next_free_sgpr 62
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.num_vgpr, 140
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.numbered_sgpr, 62
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8368
; TotalNumSgprs: 64
; NumVgprs: 140
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 64
; NumVGPRsForWavesPerEU: 140
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
	.short	883                             ; DW_AT_call_line
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
	.short	887                             ; DW_AT_call_line
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
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     64
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     140
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
