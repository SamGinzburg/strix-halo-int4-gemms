	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[46:47], s[0:1], 0x5c
	s_load_b64 s[48:49], s[0:1], 0x0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v65, 3, v0
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v35, 15, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v66, 7, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s4, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s4, v65
	v_mov_b32_e32 v7, v8
	v_dual_mov_b32 v6, v8 :: v_dual_lshlrev_b32 v33, 3, v66
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s56, s4, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_clause 0x2
	s_load_b64 s[8:9], s[0:1], 0x7c
	s_load_b64 s[44:45], s[0:1], 0x38
	s_load_b32 s10, s[0:1], 0x84
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v34, 0x60, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v25, 1, v0
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s46, v65
	s_mul_i32 s5, s46, s56
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s46, v33
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s6, s46, 4
	s_mul_i32 s7, s46, 48
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s49, s49, 0xffff
	v_lshlrev_b32_e32 v67, 4, v0
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 787 26                        ; attention.py:787:26
	v_add3_u32 v1, v2, v33, s5
	s_lshl_b32 s5, s46, 5
	v_dual_mov_b32 v15, v8 :: v_dual_and_b32 v90, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v13, v8 :: v_dual_lshlrev_b32 v2, 1, v1
	v_mov_b32_e32 v5, v8
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, v1, s6, 1
	v_add_lshl_u32 v4, v1, s5, 1
	v_add_lshl_u32 v1, v1, s7, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_mov_b32_e32 v12, v8
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_clause 0x3
	buffer_load_b128 v[37:40], v2, s[48:51], 0 offen
	buffer_load_b128 v[41:44], v3, s[48:51], 0 offen
	buffer_load_b128 v[45:48], v4, s[48:51], 0 offen
	buffer_load_b128 v[49:52], v1, s[48:51], 0 offen
	v_mov_b32_e32 v3, v8
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v36, 1, v34
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s4, s9
	v_mov_b32_e32 v2, v8
	s_add_i32 s2, s2, s10
	v_dual_mov_b32 v16, v8 :: v_dual_and_b32 v53, 0x70, v25
	s_add_i32 s2, s2, 64
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v89, v36, v35
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s2, 0x800
	v_mov_b32_e32 v4, v8
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 31
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v53, v67, v53
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v36, s4, v89
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s4, s4, s8
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s5, s2, 31
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s4, s4, s10
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s5, s5, 27
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s4, s4, 0
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s58, s2, s5
	v_mov_b32_e32 v1, v8
	v_dual_mov_b32 v14, v8 :: v_dual_add_nc_u32 v91, 0, v53
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
	v_mov_b32_e32 v77, v8
	v_cmp_eq_u32_e64 s20, 0, v90
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v36
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s57, s4, 0x7fffffe0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s58, s58, 31
	s_mov_b32 s36, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s57, s58
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v91, v[37:40]
	s_waitcnt vmcnt(2)
	ds_store_b128 v91, v[41:44] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v91, v[45:48] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v91, v[49:52] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s4, s3, 31
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v1, 7, v35
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s12, s4, 28
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v2, 6, v34
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v4, 0x78, v0
	v_lshlrev_b32_e32 v3, 4, v66
	s_clause 0x1
	s_load_b32 s11, s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s12
	v_mov_b32_e32 v26, v25
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, 0xfff0
	.loc	1 788 26                        ; attention.py:788:26
	v_or3_b32 v2, v1, v2, v3
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	v_dual_mov_b32 v28, v25 :: v_dual_add_nc_u32 v5, s10, v36
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s3, s1, 0x10007
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v6, 0x70, v2, 0
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s1, s1, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v7, 0x60, v2, 0
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s1, s1, 0x80000
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s0, s0, 10
	.loc	1 758 19                        ; attention.py:758:19
	s_sext_i32_i16 s1, s1
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v92, s8, v5
	v_dual_mov_b32 v30, v25 :: v_dual_add_nc_u32 v93, s9, v5
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v5, 0x50, v2, 0
	.loc	1 852 32                        ; attention.py:852:32
	s_and_b32 s3, s0, 0xffffc000
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s47, v33
	.loc	1 788 26                        ; attention.py:788:26
	ds_load_b128 v[37:40], v6
	ds_load_b128 v[33:36], v7
	v_xad_u32 v6, v2, 64, 0
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s1, s1, 10
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v7, v2, 48, 0
	v_xad_u32 v8, v2, 32, 0
	.loc	1 852 32                        ; attention.py:852:32
	s_and_b32 s1, s1, 0xfffff800
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v9, v2, 16, 0
	v_dual_mov_b32 v27, v25 :: v_dual_add_nc_u32 v2, 0, v2
	ds_load_b128 v[45:48], v5
	ds_load_b128 v[41:44], v6
	ds_load_b128 v[53:56], v7
	ds_load_b128 v[49:52], v8
	ds_load_b128 v[61:64], v9
	ds_load_b128 v[57:60], v2
	v_mov_b32_e32 v2, 0x5410
	v_or_b32_e32 v94, v3, v1
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v1, 2, v4
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s1, s3, s1
	v_mov_b32_e32 v22, v25
	s_add_i32 s1, s1, s57
	v_cndmask_b32_e64 v2, 0x1054, v2, s20
	v_add_nc_u32_e32 v1, s1, v1
	v_mov_b32_e32 v5, 0x7632
	v_xor_b32_e32 v11, 0x60, v94
	v_lshlrev_b32_e32 v13, 3, v0
	v_lshl_or_b32 v2, v2, 8, v2
	v_mul_lo_u32 v1, s47, v1
	v_cndmask_b32_e64 v5, 0x3276, v5, s20
	v_dual_mov_b32 v31, v25 :: v_dual_and_b32 v14, 48, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v29, v25 :: v_dual_and_b32 v2, 0x540054, v2
	v_lshrrev_b32_e32 v4, 1, v4
	v_bfe_i32 v0, v0, 3, 1
	v_add_nc_u32_e32 v18, s47, v1
	v_lshl_or_b32 v2, v2, 4, v2
	v_add_nc_u32_e32 v107, 0, v11
	v_mov_b32_e32 v11, v25
	v_lshl_or_b32 v5, v5, 8, v5
	v_lshl_add_u32 v98, v18, 1, v3
	v_dual_mov_b32 v18, v25 :: v_dual_and_b32 v13, 48, v13
	v_xor_b32_e32 v4, v14, v4
	v_and_b32_e32 v14, 0x210, v0
	v_and_b32_e32 v0, 0x5040504, v2
	v_dual_mov_b32 v23, v25 :: v_dual_add_nc_u32 v2, s1, v65
	v_lshl_or_b32 v13, v66, 6, v13
	v_dual_mov_b32 v32, v25 :: v_dual_and_b32 v5, 0x760076, v5
	v_xor_b32_e32 v9, 64, v94
	v_lshl_or_b32 v95, v66, 9, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v97, v13, v14
	v_add_nc_u32_e32 v14, 16, v2
	v_lshl_or_b32 v5, v5, 4, v5
	v_mul_lo_u32 v2, s46, v2
	v_add_nc_u32_e32 v105, 0, v9
	v_mov_b32_e32 v9, v25
	v_mul_lo_u32 v14, s46, v14
	v_xor_b32_e32 v6, 16, v94
	v_xor_b32_e32 v7, 32, v94
	v_xor_b32_e32 v8, 48, v94
	v_xor_b32_e32 v10, 0x50, v94
	v_xor_b32_e32 v12, 0x70, v94
	v_and_b32_e32 v96, 0x7060706, v5
	v_xor_b32_e32 v4, 0x90, v95
	v_xor_b32_e32 v5, 0x120, v95
	v_xor_b32_e32 v13, 0x1b0, v95
	v_xor_b32_e32 v15, 16, v97
	v_xor_b32_e32 v16, 32, v97
	v_xor_b32_e32 v17, 48, v97
	v_xor_b32_e32 v19, 0x420, v97
	v_xor_b32_e32 v20, 0x430, v97
	v_xor_b32_e32 v21, 0x410, v97
	v_lshl_add_u32 v99, v1, 1, v3
	v_lshl_add_u32 v100, v14, 1, v3
	v_lshl_add_u32 v101, v2, 1, v3
	v_add_nc_u32_e32 v102, 0, v6
	v_dual_mov_b32 v24, v25 :: v_dual_add_nc_u32 v103, 0, v7
	v_add_nc_u32_e32 v104, 0, v8
	v_dual_mov_b32 v1, v25 :: v_dual_add_nc_u32 v106, 0, v10
	v_dual_mov_b32 v3, v25 :: v_dual_add_nc_u32 v108, 0, v12
	v_dual_mov_b32 v14, v25 :: v_dual_add_nc_u32 v109, 0, v4
	v_add_nc_u32_e32 v110, 0, v5
	v_mov_b32_e32 v5, v25
	v_add_nc_u32_e32 v111, 0, v13
	v_dual_mov_b32 v7, v25 :: v_dual_add_nc_u32 v112, 0, v15
	v_dual_mov_b32 v2, v25 :: v_dual_add_nc_u32 v113, 0, v16
	v_dual_mov_b32 v73, 0xff800000 :: v_dual_add_nc_u32 v114, 0, v17
	v_dual_mov_b32 v4, v25 :: v_dual_add_nc_u32 v115, 0, v19
	v_dual_mov_b32 v77, v25 :: v_dual_add_nc_u32 v116, 0, v20
	v_dual_mov_b32 v6, v25 :: v_dual_add_nc_u32 v117, 0, v21
	v_mov_b32_e32 v17, v25
	v_mov_b32_e32 v19, v25
	v_mov_b32_e32 v20, v25
	v_mov_b32_e32 v21, v25
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
	v_mov_b32_e32 v8, v25
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v118, 4, v90
	.loc	1 860 31                        ; attention.py:860:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s59, s11, 0x3fb8aa3b
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s53, s7, 0xffff
	.loc	1 818 13                        ; attention.py:818:13
	s_lshl_b32 s60, s47, 6
	s_lshl_b32 s46, s46, 6
	s_mov_b32 s48, s4
	s_mov_b32 s49, s5
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	s_mov_b32 s52, s6
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
	s_mov_b32 s61, 0x76543210
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 854 32                        ; attention.py:854:32
	v_dual_cndmask_b32 v79, 0x80000000, v101 :: v_dual_add_nc_u32 v76, 0, v94
	v_dual_cndmask_b32 v81, 0x80000000, v100 :: v_dual_add_nc_u32 v120, 0, v97
	v_dual_mov_b32 v119, v77 :: v_dual_add_nc_u32 v78, s57, v118
	s_clause 0x1
	buffer_load_b128 v[82:85], v79, s[48:51], 0 offen
	buffer_load_b128 v[122:125], v81, s[48:51], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 866 30                        ; attention.py:866:30
	v_add_nc_u32_e32 v81, 28, v78
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v86, 26, v78
	.loc	1 866 30                        ; attention.py:866:30
	v_add_nc_u32_e32 v87, 24, v78
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v88, 22, v78
	.loc	1 866 30                        ; attention.py:866:30
	v_add_nc_u32_e32 v126, 20, v78
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v127, 18, v78
	.loc	1 866 30                        ; attention.py:866:30
	v_add_nc_u32_e32 v128, 16, v78
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v129, 14, v78
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s9, v81, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s10, v81, v93
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s11, v86, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s12, v86, v93
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s13, v87, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s14, v87, v93
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s15, v88, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s16, v88, v93
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s17, v126, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s18, v126, v93
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s19, v127, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s21, v127, v93
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s22, v128, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s23, v128, v93
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s24, v129, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s25, v129, v93
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v72, s43 :: v_dual_mov_b32 v71, s42
	v_dual_mov_b32 v70, s41 :: v_dual_mov_b32 v69, s40
	v_dual_mov_b32 v68, s39 :: v_dual_mov_b32 v67, s38
	v_dual_mov_b32 v66, s37 :: v_dual_mov_b32 v65, s36
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v75, 0x80000000, v99, s0
	v_cndmask_b32_e64 v74, 0x80000000, v98, s0
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v78, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s4, v78, v93
	.loc	1 866 30                        ; attention.py:866:30
	v_add_nc_u32_e32 v130, 12, v78
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v131, 10, v78
	.loc	1 866 30                        ; attention.py:866:30
	v_add_nc_u32_e32 v132, 8, v78
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v133, 6, v78
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s4, s3, s4
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s26, v130, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s27, v130, v93
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s28, v131, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s29, v131, v93
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v132, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s30, v132, v93
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s31, v133, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s34, v133, v93
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s4, s2, s4
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v80.h, 0
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s3, s30
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v73
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v99, s60, v99
	s_add_i32 s57, s57, 32
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v148.h, v80.h
	v_mov_b16_e64 v146.h, v80.h
	v_mov_b16_e64 v147.h, v80.h
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(1)
	ds_store_b128 v91, v[82:85]
	s_waitcnt vmcnt(0)
	ds_store_b128 v91, v[122:125] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[85:88], v102
	ds_load_b128 v[81:84], v76
	ds_load_b128 v[122:125], v76 offset:2048
	ds_load_b128 v[126:129], v102 offset:2048
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v100, s46, v100
	v_add_nc_u32_e32 v101, s46, v101
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[130:137], v[81:88], v[57:64], v[65:72]
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[81:84], v75, s[52:55], 0 offen
	buffer_load_b128 v[85:88], v74, s[52:55], 0 offen
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[138:145], v[122:129], v[57:64], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[69:72], v104
	ds_load_b128 v[65:68], v103
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[130:137], v[65:72], v[49:56], v[130:137]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v103 offset:2048
	ds_load_b128 v[69:72], v104 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[138:145], v[65:72], v[49:56], v[138:145]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[69:72], v106
	ds_load_b128 v[65:68], v105
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[130:137], v[65:72], v[41:48], v[130:137]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v105 offset:2048
	ds_load_b128 v[69:72], v106 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[138:145], v[65:72], v[41:48], v[138:145]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[69:72], v108
	ds_load_b128 v[65:68], v107
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[130:137], v[65:72], v[33:40], v[130:137]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v107 offset:2048
	ds_load_b128 v[69:72], v108 offset:2048
	.loc	1 866 30                        ; attention.py:866:30
	v_add_nc_u32_e32 v77, 2, v78
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v79, 30, v78
	.loc	1 866 30                        ; attention.py:866:30
	v_add_nc_u32_e32 v78, 4, v78
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v121, 0, v95
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v98, s60, v98
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s33, v78, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s35, v78, v93
	.loc	1 859 30                        ; attention.py:859:30
	v_wmma_f32_16x16x16_bf16 v[138:145], v[65:72], v[33:40], v[138:145]
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v66, s59, v131
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s5, v77, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s6, v77, v93
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v70, s59, v135
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s7, v79, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s8, v79, v93
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v65, s59, v130 :: v_dual_mul_f32 v68, s59, v133
	v_dual_mul_f32 v69, s59, v134 :: v_dual_mul_f32 v76, s59, v139
	v_mul_f32_e32 v78, s59, v140
	v_dual_mul_f32 v122, s59, v141 :: v_dual_mul_f32 v123, s59, v142
	v_dual_mul_f32 v124, s59, v143 :: v_dual_mul_f32 v125, s59, v144
	v_mul_f32_e32 v126, s59, v145
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s5, s6
	s_and_b32 s6, s7, s8
	s_and_b32 s7, s9, s10
	s_and_b32 s8, s11, s12
	s_and_b32 s9, s13, s14
	s_and_b32 s10, s15, s16
	s_and_b32 s11, s17, s18
	s_and_b32 s13, s19, s21
	s_and_b32 s14, s22, s23
	s_and_b32 s15, s24, s25
	s_and_b32 s16, s26, s27
	s_and_b32 s17, s28, s29
	s_and_b32 s18, s31, s34
	s_and_b32 s12, s2, s5
	s_and_b32 s5, s2, s6
	s_and_b32 s6, s2, s7
	s_and_b32 s7, s2, s8
	s_and_b32 s8, s2, s9
	s_and_b32 s9, s2, s10
	s_and_b32 s10, s2, s11
	s_and_b32 s11, s2, s13
	s_and_b32 s13, s2, s14
	s_and_b32 s14, s2, s15
	s_and_b32 s15, s2, s16
	s_and_b32 s16, s2, s17
	s_and_b32 s17, s2, s3
	s_and_b32 s18, s2, s18
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v67, s59, v132
	v_dual_mul_f32 v71, s59, v136 :: v_dual_mul_f32 v72, s59, v137
	v_mul_f32_e32 v75, s59, v138
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v65, 0xff800000, v65, s4
	v_cndmask_b32_e64 v66, 0xff800000, v66, s12
	v_cndmask_b32_e64 v74, 0xff800000, v125, s6
	v_cndmask_b32_e64 v125, 0xff800000, v126, s5
	v_cndmask_b32_e64 v123, 0xff800000, v123, s8
	v_cndmask_b32_e64 v124, 0xff800000, v124, s7
	v_cndmask_b32_e64 v78, 0xff800000, v78, s10
	v_cndmask_b32_e64 v126, 0xff800000, v122, s9
	v_cndmask_b32_e64 v76, 0xff800000, v76, s11
	v_cndmask_b32_e64 v69, 0xff800000, v69, s17
	v_cndmask_b32_e64 v70, 0xff800000, v70, s16
	v_cndmask_b32_e64 v68, 0xff800000, v68, s18
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s19, s33, s35
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v75, 0xff800000, v75, s13
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s19, s2, s19
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v71, 0xff800000, v71, s15
	v_cndmask_b32_e64 v72, 0xff800000, v72, s14
	v_cndmask_b32_e64 v67, 0xff800000, v67, s19
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v122, v123, v124, v74
	v_max3_f32 v127, v76, v78, v126
	v_max_f32_e32 v128, v65, v66
	v_max3_f32 v129, v68, v69, v70
	v_max3_f32 v130, v71, v72, v75
.Ltmp2:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v77.h, v80.h
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v122, v127, v122, v125
.Ltmp4:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v132.h, v80.h
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v127, v128, v67, v129
.Ltmp6:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v79.h, v80.h
	v_mov_b16_e64 v133.h, v80.h
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s57, s58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v122, v127, v130, v122
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v127, v122, s61, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v122, v73, v122, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v75, v75, v122
	v_sub_f32_e32 v69, v69, v122
	v_sub_f32_e32 v70, v70, v122
	v_sub_f32_e32 v71, v71, v122
	v_sub_f32_e32 v72, v72, v122
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v75, v75
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v67, v122
	v_sub_f32_e32 v76, v76, v122
	v_sub_f32_e32 v78, v78, v122
	v_sub_f32_e32 v126, v126, v122
	v_sub_f32_e32 v124, v124, v122
	v_sub_f32_e32 v125, v125, v122
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v71, v71
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v75, 0, v75, s13
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v76, v76
	v_exp_f32_e32 v78, v78
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v148.l, v75.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v123, v123, v122
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v126, v126
	v_exp_f32_e32 v124, v124
	v_exp_f32_e32 v125, v125
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v134, 1, v148
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v123, v123
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s17
	v_cndmask_b32_e64 v70, 0, v70, s16
	v_cndmask_b32_e64 v71, 0, v71, s15
	v_cndmask_b32_e64 v72, 0, v72, s14
	v_cndmask_b32_e64 v67, 0, v67, s19
	v_cndmask_b32_e64 v127, 0, v76, s11
	v_cndmask_b32_e64 v76, 0, v78, s10
	v_cndmask_b32_e64 v78, 0, v126, s9
	v_cndmask_b32_e64 v128, 0, v124, s7
	v_cndmask_b32_e64 v126, 0, v123, s8
	v_cndmask_b32_e64 v129, 0, v125, s5
.Ltmp10:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v125, v69, v70 :: v_dual_add_f32 v130, v71, v72
.Ltmp11:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v68, v122
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v77.l, v67.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v66, v122
	v_sub_f32_e32 v74, v74, v122
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v125, v125, v130 :: v_dual_add_f32 v130, v126, v128
.Ltmp13:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v65, v122
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v77, 1, v77
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v74, v74
	v_exp_f32_e32 v65, v65
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v132.l, v76.h
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v131, v75, v127
.Ltmp15:
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v73, v122
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v79.l, v69.h
	v_cmp_o_f32_e64 s7, v69, v69
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s18
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v132, 1, v132
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s12
	v_cndmask_b32_e64 v74, 0, v74, s6
	v_cndmask_b32_e64 v65, 0, v65, s4
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v124, v67, v68
.Ltmp17:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v80.l, v66.h
	v_cmp_o_f32_e64 s3, v66, v66
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v123, v65, v66
.Ltmp19:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v146.l, v65.h
	v_cmp_o_f32_e64 s4, v65, v65
	v_cmp_o_f32_e64 s5, v67, v67
	v_add3_u32 v67, v67, v77, 0x7fff
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v124, v123, v124 :: v_dual_add_f32 v123, v76, v78
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v77.h, v80.h
	v_mov_b16_e32 v77.l, v74.h
	v_cmp_o_f32_e64 s6, v70, v70
	v_mov_b16_e64 v147.l, v71.h
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v131, v131, v123
	v_add_f32_e32 v123, v74, v129
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v77, 1, v77
	v_cmp_o_f32_e64 s8, v72, v72
	v_mov_b16_e64 v133.l, v126.h
	v_cmp_o_f32_e64 s17, v74, v74
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v130, v130, v123 :: v_dual_and_b32 v123, 1, v80
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v80.l, v68.h
	v_add3_u32 v74, v74, v77, 0x7fff
	v_cmp_o_f32_e64 s9, v71, v71
	v_cmp_o_f32_e64 s11, v75, v75
	v_add3_u32 v66, v66, v123, 0x7fff
	v_and_b32_e32 v123, 1, v146
	v_cmp_o_f32_e64 s13, v76, v76
	v_and_b32_e32 v133, 1, v133
	v_add3_u32 v75, v75, v134, 0x7fff
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s3
	v_add3_u32 v65, v65, v123, 0x7fff
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v123, 0, v73, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v73, 1, v79
	v_cmp_o_f32_e64 s1, v68, v68
	v_and_b32_e32 v79, 1, v147
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s4
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v14, v14, v123
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v69, v69, v73, 0x7fff
	v_and_b32_e32 v73, 1, v80
	v_mov_b16_e32 v80.l, v70.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v12, v12, v123
	v_mul_f32_e32 v22, v22, v123
	v_mul_f32_e32 v10, v10, v123
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v68, v73, 0x7fff
	v_and_b32_e32 v68, 1, v80
	v_mov_b16_e32 v80.l, v72.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v13, v13, v123
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v65.l, 0x7fff, v67.h, s5
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s1
	v_add3_u32 v68, v70, v68, 0x7fff
	v_and_b32_e32 v70, 1, v80
	v_mov_b16_e32 v80.l, v127.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v15, v15, v123
	v_mul_f32_e32 v16, v16, v123
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v71, v71, v79, 0x7fff
	v_add3_u32 v70, v72, v70, 0x7fff
	v_and_b32_e32 v72, 1, v80
	v_mov_b16_e32 v80.l, v78.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v123
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v76, v76, v132, 0x7fff
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v124, v124, v125 :: v_dual_add_f32 v125, v131, v130
.Ltmp27:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v67.l, 0x7fff, v69.h, s7
	v_cndmask_b16 v131.l, 0x7fff, v74.h, s17
	v_permlanex16_b32 v74, v66, s61, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v67.h, 0x7fff, v68.h, s6
	v_permlanex16_b32 v68, v65, s61, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v69.h, 0x7fff, v70.h, s8
	v_and_b32_e32 v70, 1, v80
	v_mov_b16_e64 v80.l, v128.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v123
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v127, v127
	v_cmp_o_f32_e64 s15, v126, v126
	v_add3_u32 v79, v126, v133, 0x7fff
	v_cndmask_b16 v69.l, 0x7fff, v71.h, s9
	v_cndmask_b16 v71.l, 0x7fff, v75.h, s11
	v_cndmask_b16 v126.l, 0x7fff, v76.h, s13
	v_perm_b32 v73, v74, v66, v0
	v_perm_b32 v74, v74, v66, v96
	v_perm_b32 v75, v68, v65, v0
	v_permlanex16_b32 v66, v67, s61, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v76, v68, v65, v96
	v_add3_u32 v65, v127, v72, 0x7fff
	v_and_b32_e32 v72, 1, v80
	v_mov_b16_e64 v80.l, v129.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v123
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s12, v78, v78
	v_perm_b32 v77, v66, v67, v0
	v_permlanex16_b32 v68, v69, s61, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v71.h, 0x7fff, v65.h, s10
	v_add3_u32 v65, v78, v70, 0x7fff
	v_perm_b32 v78, v66, v67, v96
	v_and_b32_e32 v66, 1, v80
	v_cmp_o_f32_e64 s14, v128, v128
	v_cmp_o_f32_e64 s16, v129, v129
	v_cndmask_b16 v130.l, 0x7fff, v79.h, s15
	v_perm_b32 v79, v68, v69, v0
	v_cndmask_b16 v126.h, 0x7fff, v65.h, s12
	v_add3_u32 v70, v128, v72, 0x7fff
	v_perm_b32 v80, v68, v69, v96
	v_add3_u32 v68, v129, v66, 0x7fff
	v_permlanex16_b32 v67, v71, s61, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v69, v126, s61, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v130.h, 0x7fff, v70.h, s14
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v123
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v131.h, 0x7fff, v68.h, s16
	v_perm_b32 v65, v67, v71, v0
	v_perm_b32 v66, v67, v71, v96
	v_perm_b32 v67, v69, v126, v0
	v_permlanex16_b32 v70, v130, s61, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v68, v69, v126, v96
	v_permlanex16_b32 v72, v131, s61, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v126.l, v81.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v126.h, v85.l
	v_mov_b16_e32 v85.l, v81.h
	v_mov_b16_e32 v81.l, v82.l
	v_mov_b16_e32 v81.h, v86.l
	v_mov_b16_e32 v86.l, v82.h
	v_mov_b16_e32 v82.l, v83.l
	v_mov_b16_e32 v82.h, v87.l
	v_mov_b16_e32 v87.l, v83.h
	v_mov_b16_e32 v83.l, v84.l
	v_mov_b16_e32 v83.h, v88.l
	v_mov_b16_e32 v88.l, v84.h
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v69, v70, v130, v0
	v_perm_b32 v70, v70, v130, v96
	v_perm_b32 v71, v72, v131, v0
	v_perm_b32 v72, v72, v131, v96
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b32 v121, v126, v85 offset1:16
	ds_store_2addr_b32 v109, v81, v86 offset1:16
	ds_store_2addr_b32 v110, v82, v87 offset1:16
	ds_store_2addr_b32 v111, v83, v88 offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[81:84], v120
	ds_load_b128 v[85:88], v112
	ds_load_b128 v[130:133], v116
	ds_load_b128 v[126:129], v115
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v123
	v_mul_f32_e32 v27, v27, v123
	v_mul_f32_e32 v28, v28, v123
	v_mul_f32_e32 v29, v29, v123
	v_mul_f32_e32 v30, v30, v123
	v_mul_f32_e32 v31, v31, v123
	v_mul_f32_e32 v32, v32, v123
	v_mul_f32_e32 v17, v17, v123
	v_mul_f32_e32 v18, v18, v123
	v_mul_f32_e32 v19, v19, v123
	v_mul_f32_e32 v20, v20, v123
	v_mul_f32_e32 v21, v21, v123
	v_mul_f32_e32 v23, v23, v123
	v_mul_f32_e32 v24, v24, v123
	v_mul_f32_e32 v9, v9, v123
	v_mul_f32_e32 v11, v11, v123
	v_mul_f32_e32 v2, v2, v123
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[81:88], v[73:80], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[85:88], v112 offset:2048
	ds_load_b128 v[81:84], v120 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[126:133], v[73:80], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[126:129], v115 offset:2048
	ds_load_b128 v[130:133], v116 offset:2048
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v4, v4, v123
	v_mul_f32_e32 v6, v6, v123
	v_mul_f32_e32 v7, v7, v123
	v_mul_f32_e32 v8, v8, v123
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[73:80], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[85:88], v114
	ds_load_b128 v[81:84], v113
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[126:133], v[73:80], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[126:129], v120 offset:1024
	ds_load_b128 v[134:137], v120 offset:3072
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v73, v124, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp29:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v74, v73, s61, 0xfedcba98 op_sel:[1,0]
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v77, v73, v74
	v_mov_b32_e32 v73, v122
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp31:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v77, v119, v123
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[81:88], v[65:72], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[78:81], v113 offset:2048
	ds_load_b128 v[130:133], v117
	ds_load_b128 v[82:85], v114 offset:2048
	ds_load_b128 v[138:141], v117 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[126:133], v[65:72], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[78:85], v[65:72], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[134:141], v[65:72], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v36, null, v77, v77, v25
	v_div_scale_f32 v37, null, v77, v77, v26
	v_div_scale_f32 v41, null, v77, v77, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v38, v36
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v43, null, v77, v77, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v44, v41
	v_div_scale_f32 v40, vcc_lo, v25, v77, v25
	v_rcp_f32_e32 v46, v43
	v_div_scale_f32 v42, s0, v26, v77, v26
	v_fma_f32 v33, -v36, v38, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v34, -v37, v39, 1.0
	v_div_scale_f32 v45, s1, v27, v77, v27
	v_fma_f32 v35, -v41, v44, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v38, v33, v38 :: v_dual_fmac_f32 v39, v34, v39
	v_fma_f32 v51, -v43, v46, 1.0
	v_div_scale_f32 v48, s3, v28, v77, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v47, v40, v38 :: v_dual_fmac_f32 v44, v35, v44
	v_dual_mul_f32 v49, v42, v39 :: v_dual_fmac_f32 v46, v51, v46
	v_div_scale_f32 v51, null, v77, v77, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v36, v47, v40
	v_fma_f32 v52, -v37, v49, v42
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v0, 1, v90
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s46, 0x7ffffffe
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v47, v50, v38 :: v_dual_mul_f32 v50, v45, v44
	v_fmac_f32_e32 v49, v52, v39
	v_div_scale_f32 v52, null, v77, v77, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v36, v47, v40
	v_div_scale_f32 v40, null, v77, v77, v29
	v_fma_f32 v37, -v37, v49, v42
	v_fma_f32 v42, -v41, v50, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v36, v36, v38, v47
	v_rcp_f32_e32 v38, v40
	s_mov_b32 vcc_lo, s0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v77
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v50, v42, v44
	v_div_fixup_f32 v25, v36, v77, v25
	v_div_fmas_f32 v36, v37, v39, v49
	v_rcp_f32_e32 v37, v51
	s_mov_b32 vcc_lo, s1
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v35, 16, v0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v42, -v40, v38, 1.0
	v_div_fixup_f32 v26, v36, v77, v26
	v_fma_f32 v36, -v41, v50, v45
	v_div_scale_f32 v45, s1, v30, v77, v30
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v34, 32, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v51, v37, 1.0
	v_fmac_f32_e32 v38, v42, v38
	v_div_scale_f32 v42, null, v77, v77, v31
	v_div_fmas_f32 v36, v36, v44, v50
	v_fmac_f32_e32 v37, v41, v37
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v42
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v27, v36, v77, v27
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v33, 48, v0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v49, -v42, v41, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v27, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v49, v41
	v_mul_f32_e32 v47, v48, v46
	v_fma_f32 v39, -v43, v47, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v47, v39, v46
	v_div_scale_f32 v39, s4, v29, v77, v29
	v_fma_f32 v43, -v43, v47, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v44, v39, v38
	v_div_scale_f32 v48, null, v77, v77, v32
	v_div_fmas_f32 v43, v43, v46, v47
	v_mul_f32_e32 v47, v45, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v46, -v40, v44, v39
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v50, v48
	v_div_fixup_f32 v28, v43, v77, v28
	v_fma_f32 v36, -v51, v47, v45
	v_fmac_f32_e32 v44, v46, v38
	v_div_scale_f32 v46, null, v77, v77, v17
	v_div_scale_f32 v43, s3, v31, v77, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v36, v37
	v_fma_f32 v39, -v40, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v40, v46
	v_fma_f32 v49, -v48, v50, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v39, v38, v44
	v_fma_f32 v39, -v51, v47, v45
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v29, v38, v77, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v46, v40, 1.0
	v_div_fmas_f32 v37, v39, v37, v47
	v_rcp_f32_e32 v39, v52
	v_div_scale_f32 v47, s1, v17, v77, v17
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v40, v51, v40
	v_mul_f32_e32 v36, v43, v41
	v_div_fixup_f32 v30, v37, v77, v30
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v38, v47, v40
	v_fma_f32 v44, -v42, v36, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v44, v41
	v_fma_f32 v37, -v42, v36, v43
	v_fma_f32 v42, -v52, v39, 1.0
	v_fmac_f32_e32 v50, v49, v50
	v_div_scale_f32 v49, s5, v32, v77, v32
	v_div_scale_f32 v43, null, v77, v77, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v42, v39
	v_mul_f32_e32 v45, v49, v50
	v_div_fmas_f32 v36, v37, v41, v36
	v_fma_f32 v41, -v46, v38, v47
	v_rcp_f32_e32 v42, v43
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v44, -v48, v45, v49
	v_div_fixup_f32 v31, v36, v77, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v38, v41, v40 :: v_dual_fmac_f32 v45, v44, v50
	v_div_scale_f32 v44, s3, v18, v77, v18
	v_fma_f32 v36, -v46, v38, v47
	v_div_scale_f32 v46, s4, v19, v77, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v48, v45, v49
	v_div_scale_f32 v48, null, v77, v77, v20
	v_fma_f32 v49, -v43, v42, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v50, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v41, v48
	v_dual_mul_f32 v45, v44, v39 :: v_dual_fmac_f32 v42, v49, v42
	v_div_scale_f32 v49, null, v77, v77, v21
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v32, v37, v77, v32
	v_fma_f32 v37, -v52, v45, v44
	v_div_fmas_f32 v36, v36, v40, v38
	v_rcp_f32_e32 v38, v49
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v48, v41, 1.0
	v_div_scale_f32 v40, s1, v20, v77, v20
	v_div_fixup_f32 v17, v36, v77, v17
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v47, v41
	v_fmac_f32_e32 v45, v37, v39
	v_div_scale_f32 v47, null, v77, v77, v22
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v50, v40, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v52, v45, v44
	v_rcp_f32_e32 v51, v47
	v_fma_f32 v52, -v49, v38, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v39, v45
	v_fma_f32 v39, -v48, v50, v40
	v_fmac_f32_e32 v38, v52, v38
	v_mul_f32_e32 v37, v46, v42
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v18, v36, v77, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v51, 1.0
	v_fmac_f32_e32 v50, v39, v41
	v_fma_f32 v44, -v43, v37, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v51, v45, v51
	v_div_scale_f32 v45, null, v77, v77, v23
	v_fmac_f32_e32 v37, v44, v42
	v_div_scale_f32 v44, s3, v21, v77, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v43, v37, v46
	v_div_scale_f32 v43, s5, v22, v77, v22
	v_mul_f32_e32 v46, v43, v51
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v36, v36, v42, v37
	v_rcp_f32_e32 v42, v45
	v_fma_f32 v37, -v48, v50, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v48, null, v77, v77, v24
	v_div_fixup_f32 v19, v36, v77, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v37, v37, v41, v50
	v_fma_f32 v41, -v47, v46, v43
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v50, -v45, v42, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v20, v37, v77, v20
	v_div_scale_f32 v37, s1, v23, v77, v23
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v50, v42
	v_dual_mul_f32 v39, v44, v38 :: v_dual_fmac_f32 v46, v41, v51
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v49, v39, v44
	v_fmac_f32_e32 v39, v40, v38
	v_rcp_f32_e32 v40, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v48, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v49, v39, v44
	v_div_scale_f32 v49, null, v77, v77, v10
	v_div_scale_f32 v41, null, v77, v77, v9
	v_div_fmas_f32 v36, v36, v38, v39
	v_fma_f32 v38, -v47, v46, v43
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v43, s3, v24, v77, v24
	v_rcp_f32_e32 v44, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v38, v38, v51, v46
	v_mul_f32_e32 v39, v37, v42
	v_div_fixup_f32 v21, v36, v77, v21
	v_div_scale_f32 v51, null, v77, v77, v12
	v_div_fixup_f32 v22, v38, v77, v22
	v_rcp_f32_e32 v38, v49
	v_fma_f32 v46, -v45, v39, v37
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v53, v51
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v49, v38, 1.0
	v_dual_mul_f32 v47, v43, v40 :: v_dual_fmac_f32 v38, v50, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v48, v47, v43
	v_fmac_f32_e32 v47, v36, v40
	v_div_scale_f32 v36, s4, v9, v77, v9
	v_fmac_f32_e32 v39, v46, v42
	v_fma_f32 v46, -v41, v44, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v45, v39, v37
	v_div_scale_f32 v45, null, v77, v77, v11
	v_fmac_f32_e32 v44, v46, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v37, v37, v42, v39
	v_rcp_f32_e32 v46, v45
	v_fma_f32 v39, -v48, v47, v43
	v_div_scale_f32 v43, s1, v10, v77, v10
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v42, v36, v44
	v_div_fixup_f32 v23, v37, v77, v23
	v_mul_f32_e32 v52, v43, v38
	v_div_fmas_f32 v39, v39, v40, v47
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v48, -v45, v46, 1.0
	v_fma_f32 v50, -v41, v42, v36
	v_fma_f32 v40, -v49, v52, v43
	v_div_fixup_f32 v24, v39, v77, v24
	v_fma_f32 v39, -v51, v53, 1.0
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s5, v11, v77, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v52, v40, v38 :: v_dual_fmac_f32 v53, v39, v53
	v_dual_fmac_f32 v42, v50, v44 :: v_dual_mul_f32 v47, v48, v46
	v_div_scale_f32 v40, null, v77, v77, v13
	v_div_scale_f32 v39, s3, v12, v77, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v45, v47, v48
	v_fma_f32 v36, -v41, v42, v36
	v_fma_f32 v41, -v49, v52, v43
	v_div_scale_f32 v43, null, v77, v77, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v47, v37, v46
	v_rcp_f32_e32 v37, v40
	v_div_fmas_f32 v36, v36, v44, v42
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v42, v39, v53
	v_div_fmas_f32 v38, v41, v38, v52
	v_fma_f32 v41, -v45, v47, v48
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v36, v77, v9
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v10, v38, v77, v10
	v_fma_f32 v44, -v40, v37, 1.0
	v_div_fmas_f32 v41, v41, v46, v47
	v_fma_f32 v46, -v51, v42, v39
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v44, v37
	v_div_scale_f32 v44, s1, v13, v77, v13
	v_div_fixup_f32 v11, v41, v77, v11
	v_div_scale_f32 v41, null, v77, v77, v15
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
	v_div_scale_f32 v38, s4, v14, v77, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v51, v42, v39
	v_fmac_f32_e32 v36, v46, v37
	v_div_scale_f32 v46, null, v77, v77, v16
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
	v_div_fixup_f32 v12, v39, v77, v12
	v_fma_f32 v39, -v40, v36, v44
	v_fma_f32 v44, -v41, v47, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v39, v37, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v44, v47
	v_div_scale_f32 v44, null, v77, v77, v2
	v_div_scale_f32 v37, null, v77, v77, v1
	v_div_fixup_f32 v13, v36, v77, v13
	v_fma_f32 v36, -v46, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v44
	v_div_scale_f32 v39, s1, v15, v77, v15
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v48, v36, v48
	v_div_scale_f32 v36, s3, v16, v77, v16
	v_mul_f32_e32 v42, v38, v45
	v_div_scale_f32 v51, s4, v1, v77, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v44, v50, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v43, v42, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v52, v50
	v_div_scale_f32 v52, s5, v2, v77, v2
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
	v_div_fixup_f32 v14, v38, v77, v14
	v_fmac_f32_e32 v40, v49, v40
	v_div_scale_f32 v49, null, v77, v77, v3
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
	v_div_scale_f32 v43, null, v77, v77, v4
	v_fmac_f32_e32 v53, v42, v53
	v_fma_f32 v39, -v37, v54, v51
	v_div_scale_f32 v42, s1, v3, v77, v3
	v_div_fmas_f32 v36, v36, v48, v45
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v54, v39, v40
	v_fma_f32 v39, -v44, v41, v52
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v16, v36, v77, v16
	v_div_fixup_f32 v15, v38, v77, v15
	v_div_scale_f32 v47, null, v77, v77, v8
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
	v_div_fixup_f32 v1, v37, v77, v1
	v_div_fmas_f32 v40, v40, v50, v41
	v_div_scale_f32 v37, null, v77, v77, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v44, v53
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v2, v40, v77, v2
	v_div_scale_f32 v40, null, v77, v77, v7
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
	v_div_scale_f32 v51, s4, v7, v77, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v36, v53, v39
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v41, vcc_lo, v4, v77, v4
	v_mul_f32_e32 v55, v51, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v3, v36, v77, v3
	v_fma_f32 v53, -v47, v49, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v37, v39, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, v53, v49
	v_div_scale_f32 v53, s5, v8, v77, v8
	v_fmac_f32_e32 v39, v36, v39
	v_div_scale_f32 v36, s1, v5, v77, v5
	v_fmac_f32_e32 v45, v38, v45
	v_div_scale_f32 v38, null, v77, v77, v6
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
	v_div_scale_f32 v48, s3, v6, v77, v6
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
	v_div_fixup_f32 v4, v41, v77, v4
	v_div_fmas_f32 v36, v36, v39, v52
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v56, v37, v49
	v_fmac_f32_e32 v54, v43, v42
	v_fma_f32 v37, -v40, v55, v51
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s3, v25, v25
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v5, v36, v77, v5
	v_fma_f32 v39, -v47, v56, v53
	v_fma_f32 v38, -v38, v54, v48
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_or_b32_e32 v36, s56, v89
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s47, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v42, v54
	s_mov_b32 vcc_lo, s4
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v36, s47, v36
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v44, v55
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v38, v77, v6
	v_div_fmas_f32 v39, v39, v49, v56
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v38, v26, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v37, v77, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v37, v25, 16, 1
	v_cmp_o_f32_e64 s5, v26, v26
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v39, v77, v8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v39, v27, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v37, v25, v37, 0x7fff
	v_add3_u32 v25, v26, v38, 0x7fff
	v_bfe_u32 v38, v30, 16, 1
	v_add3_u32 v26, v27, v39, 0x7fff
	v_bfe_u32 v27, v28, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v37.h, s3
	v_bfe_u32 v37, v29, 16, 1
	v_cmp_o_f32_e64 s3, v28, v28
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s5
	v_add3_u32 v27, v28, v27, 0x7fff
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s6
	v_add3_u32 v28, v29, v37, 0x7fff
	v_cmp_o_f32_e64 s5, v29, v29
	v_add3_u32 v29, v30, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v30, v30
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s3
	v_bfe_u32 v27, v31, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s5
	v_bfe_u32 v30, v32, 16, 1
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s6
	v_bfe_u32 v29, v17, 16, 1
	v_add3_u32 v27, v31, v27, 0x7fff
	v_cmp_o_f32_e64 s3, v31, v31
	v_add3_u32 v30, v32, v30, 0x7fff
	v_cmp_o_f32_e64 s5, v32, v32
	v_add3_u32 v29, v17, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v27.h, s3
	v_bfe_u32 v27, v18, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v30.h, s5
	v_bfe_u32 v30, v19, 16, 1
	v_bfe_u32 v31, v20, 16, 1
	v_cmp_o_f32_e64 s3, v18, v18
	v_add3_u32 v27, v18, v27, 0x7fff
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s6
	v_add3_u32 v18, v19, v30, 0x7fff
	v_cmp_o_f32_e64 s5, v19, v19
	v_add3_u32 v19, v20, v31, 0x7fff
	v_cmp_o_f32_e64 s6, v20, v20
	v_cndmask_b16 v29.h, 0x7fff, v27.h, s3
	v_bfe_u32 v20, v21, 16, 1
	v_bfe_u32 v27, v22, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s5
	v_cmp_o_f32_e64 s3, v21, v21
	v_cmp_o_f32_e64 s5, v22, v22
	v_add3_u32 v20, v21, v20, 0x7fff
	v_add3_u32 v21, v22, v27, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s6
	v_bfe_u32 v19, v23, 16, 1
	v_bfe_u32 v22, v24, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s3
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s5
	v_bfe_u32 v21, v9, 16, 1
	v_add3_u32 v19, v23, v19, 0x7fff
	v_cmp_o_f32_e64 s6, v23, v23
	v_bfe_u32 v23, v10, 16, 1
	v_add3_u32 v22, v24, v22, 0x7fff
	v_cmp_o_f32_e64 s3, v24, v24
	v_add3_u32 v21, v9, v21, 0x7fff
	v_cmp_o_f32_e64 s5, v9, v9
	v_add3_u32 v9, v10, v23, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s6
	v_cmp_o_f32_e64 s6, v10, v10
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s3
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s5
	v_bfe_u32 v21, v12, 16, 1
	v_bfe_u32 v22, v13, 16, 1
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s6
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s3, v11, v11
	v_add3_u32 v11, v12, v21, 0x7fff
	v_cmp_o_f32_e64 s5, v12, v12
	v_add3_u32 v12, v13, v22, 0x7fff
	v_cmp_o_f32_e64 s6, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s3
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s5
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v21, v16, 16, 1
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s3, v14, v14
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s6
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s5, v15, v15
	v_add3_u32 v14, v16, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v16, v16
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s3
	v_bfe_u32 v13, v1, 16, 1
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s5
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s6
	v_bfe_u32 v14, v3, 16, 1
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s3, v1, v1
	v_add3_u32 v1, v2, v15, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s5, v2, v2
	v_add3_u32 v2, v3, v14, 0x7fff
	v_cmp_o_f32_e64 s6, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v13.h, s3
	v_bfe_u32 v13, v5, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s5
	v_cmp_o_f32_e64 s3, v4, v4
	v_add3_u32 v3, v4, v3, 0x7fff
	v_bfe_u32 v4, v6, 16, 1
	v_add3_u32 v13, v5, v13, 0x7fff
	v_bfe_u32 v14, v7, 16, 1
	v_cmp_o_f32_e64 s5, v5, v5
	v_bfe_u32 v5, v8, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s6
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s6, v6, v6
	v_add3_u32 v6, v7, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v7, v7
	v_add3_u32 v5, v8, v5, 0x7fff
	v_cmp_o_f32_e64 s8, v8, v8
	v_cndmask_b32_e64 v7, v17, v26, s20
	v_cndmask_b32_e64 v8, v26, v17, s20
	v_mov_b32_e32 v16, 0x5410
	v_mov_b32_e32 v17, 0x7632
	v_cndmask_b32_e64 v15, v19, v18, s20
	v_cndmask_b32_e64 v18, v18, v19, s20
	v_cndmask_b32_e64 v19, v12, v9, s20
	v_cndmask_b32_e64 v9, v9, v12, s20
	v_cndmask_b32_e64 v12, 0x1054, v16, s20
	v_cndmask_b32_e64 v16, 0x3276, v17, s20
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v3.l, 0x7fff, v13.h, s5
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s6
	v_cndmask_b32_e64 v17, v11, v10, s20
	v_cndmask_b32_e64 v10, v10, v11, s20
	v_lshl_or_b32 v11, v12, 8, v12
	v_lshl_or_b32 v12, v16, 8, v16
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s7
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s8
	v_cndmask_b32_e64 v6, v25, v28, s20
	v_cndmask_b32_e64 v13, v20, v29, s20
	v_cndmask_b32_e64 v14, v29, v20, s20
	v_cndmask_b32_e64 v20, v3, v1, s20
	v_cndmask_b32_e64 v1, v1, v3, s20
	v_and_b32_e32 v3, 0x540054, v11
	v_and_b32_e32 v11, 0x760076, v12
	s_mov_b32 s3, 0x76543210
	v_cndmask_b32_e64 v16, v4, v2, s20
	v_cndmask_b32_e64 v2, v2, v4, s20
	v_permlanex16_b32 v4, v6, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v8, s3, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v3, v3, 4, v3
	v_lshl_or_b32 v8, v11, 4, v11
	v_cndmask_b32_e64 v5, v28, v25, s20
	v_permlanex16_b32 v11, v14, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v18, s3, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v18, 0x5040504, v3
	v_and_b32_e32 v21, 0x7060706, v8
	v_permlanex16_b32 v22, v10, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v9, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v1, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v2, s3, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s47, v35
	v_cmp_gt_i32_e64 s4, s47, v0
	v_cmp_gt_i32_e64 s0, s47, v34
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v1, v4, v5, v18
	v_perm_b32 v2, v4, v5, v21
	v_perm_b32 v3, v6, v7, v18
	v_perm_b32 v4, v6, v7, v21
	v_perm_b32 v5, v11, v13, v18
	v_perm_b32 v6, v11, v13, v21
	v_perm_b32 v7, v12, v15, v18
	v_perm_b32 v8, v12, v15, v21
	v_perm_b32 v11, v22, v17, v18
	v_perm_b32 v12, v22, v17, v21
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v36, v35, 1
	v_add_lshl_u32 v0, v36, v0, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v9, v14, v19, v18
	v_perm_b32 v13, v23, v20, v18
	v_perm_b32 v15, v24, v16, v18
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v18, v36, v34, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v10, v14, v19, v21
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v36, v33, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v14, v23, v20, v21
	v_perm_b32 v16, v24, v16, v21
	s_mov_b32 s47, 0x31027000
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[1:4], v0, s[44:47], 0 offen
	buffer_store_b128 v[5:8], v17, s[44:47], 0 offen
	buffer_store_b128 v[9:12], v18, s[44:47], 0 offen
	buffer_store_b128 v[13:16], v19, s[44:47], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp32:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 149
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_vgpr, 149
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.numbered_sgpr, 62
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9480
; TotalNumSgprs: 64
; NumVgprs: 149
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 64
; NumVGPRsForWavesPerEU: 149
; Occupancy: 9
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
	.quad	.Ltmp9-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     64
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     149
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
