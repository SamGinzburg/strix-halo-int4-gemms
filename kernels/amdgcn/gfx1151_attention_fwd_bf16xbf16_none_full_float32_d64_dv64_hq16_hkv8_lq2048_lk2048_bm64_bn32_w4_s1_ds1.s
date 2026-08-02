	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[18:19], s[0:1], 0x5c
	v_dual_mov_b32 v39, 0x5410 :: v_dual_and_b32 v38, 7, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 3, v0
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[40:41], s[0:1], 0x10
	v_dual_mov_b32 v40, 0x7632 :: v_dual_lshlrev_b32 v37, 3, v38
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s8, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s9, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s8, v1
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s30, s8, s9
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v42, 15, v0
	s_clause 0x1
	s_load_b32 s2, s[0:1], 0x64
	s_load_b64 s[28:29], s[0:1], 0x38
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x800, v2
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	v_dual_mov_b32 v31, v25 :: v_dual_and_b32 v46, 16, v0
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[89:90], null, s18, v1, v[37:38]
	s_mul_i32 s9, s18, s30
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s18, v37
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s1, s18, 5
	s_mul_i32 s10, s18, 48
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s37, s5, 0xffff
	s_mov_b32 s36, s4
	v_dual_mov_b32 v26, v25 :: v_dual_add_nc_u32 v1, s9, v89
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v93, s18, 4, v89
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s0, s0, vcc_lo
	v_dual_mov_b32 v30, v25 :: v_dual_and_b32 v43, 0x60, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v27, v25 :: v_dual_lshlrev_b32 v2, 1, v1
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, v93, s9, 1
	v_add_lshl_u32 v4, v1, s1, 1
	v_add_lshl_u32 v1, v1, s10, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_dual_mov_b32 v32, v25 :: v_dual_lshlrev_b32 v45, 1, v0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	s_clause 0x3
	buffer_load_b128 v[5:8], v2, s[36:39], 0 offen
	buffer_load_b128 v[9:12], v3, s[36:39], 0 offen
	buffer_load_b128 v[13:16], v4, s[36:39], 0 offen
	buffer_load_b128 v[33:36], v1, s[36:39], 0 offen
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v28, v25 :: v_dual_and_b32 v41, 0x78, v0
	s_lshr_b32 s0, s0, 28
	v_dual_mov_b32 v29, v25 :: v_dual_lshlrev_b32 v44, 4, v0
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v18, v25 :: v_dual_lshlrev_b32 v47, 3, v0
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, 0xfff0
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s0, s0, 10
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	.loc	1 852 32                        ; attention.py:852:32
	s_and_b32 s3, s0, 0xffffc000
	v_cmp_eq_u32_e64 s0, 0, v46
	v_dual_mov_b32 v20, v25 :: v_dual_and_b32 v45, 0x70, v45
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v49, 1, v43
	v_bfe_i32 v48, v0, 3, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v39, 0x1054, v39, s0
	v_dual_mov_b32 v19, v25 :: v_dual_and_b32 v46, 48, v44
	v_dual_mov_b32 v22, v25 :: v_dual_lshlrev_b32 v51, 7, v42
	v_dual_mov_b32 v2, v25 :: v_dual_and_b32 v47, 48, v47
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v50, 2, v41
	v_lshrrev_b32_e32 v41, 1, v41
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v92, v49, v42
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v42, v44, v45
	v_cndmask_b32_e64 v40, 0x3276, v40, s0
	v_lshl_or_b32 v39, v39, 8, v39
	v_dual_mov_b32 v17, v25 :: v_dual_lshlrev_b32 v52, 4, v38
	v_dual_mov_b32 v21, v25 :: v_dual_and_b32 v48, 0x210, v48
	v_dual_mov_b32 v24, v25 :: v_dual_lshlrev_b32 v43, 6, v43
	v_dual_mov_b32 v4, v25 :: v_dual_add_nc_u32 v95, 0, v42
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s4, s1, 0x10007
	v_xor_b32_e32 v41, v46, v41
	v_lshl_or_b32 v44, v38, 6, v47
	v_and_b32_e32 v39, 0x540054, v39
	v_lshl_or_b32 v40, v40, 8, v40
	s_add_i32 s1, s1, s4
	v_mov_b32_e32 v1, v25
	s_bfe_i32 s0, s1, 0x80000
	.loc	1 788 26                        ; attention.py:788:26
	v_or3_b32 v43, v51, v43, v52
	v_or_b32_e32 v94, v52, v51
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v45, s8, v92
	v_lshl_or_b32 v96, v38, 9, v41
	v_xor_b32_e32 v97, v44, v48
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s19, v37
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[90:91], null, s19, v50, v[37:38]
	v_and_b32_e32 v38, 0x760076, v40
	.loc	1 758 19                        ; attention.py:758:19
	s_sext_i32_i16 s0, s0
	v_dual_mov_b32 v23, v25 :: v_dual_add_nc_u32 v42, 0, v43
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s0, s0, 10
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v46, v43, 16, 0
	v_xad_u32 v47, v43, 32, 0
	v_xad_u32 v49, v43, 48, 0
	v_xad_u32 v51, v43, 64, 0
	v_xad_u32 v53, 0x50, v43, 0
	v_xad_u32 v57, 0x60, v43, 0
	v_xad_u32 v61, 0x70, v43, 0
	v_xor_b32_e32 v43, 16, v94
	v_xor_b32_e32 v52, 32, v94
	v_xor_b32_e32 v54, 48, v94
	v_xor_b32_e32 v55, 64, v94
	v_xor_b32_e32 v56, 0x50, v94
	v_xor_b32_e32 v58, 0x60, v94
	v_xor_b32_e32 v59, 0x70, v94
	.loc	1 852 32                        ; attention.py:852:32
	s_and_b32 s34, s0, 0xfffff800
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x800, v45
	v_xor_b32_e32 v40, 0x120, v96
	v_xor_b32_e32 v41, 0x1b0, v96
	v_xor_b32_e32 v44, 16, v97
	v_xor_b32_e32 v45, 32, v97
	v_xor_b32_e32 v48, 48, v97
	v_xor_b32_e32 v50, 0x420, v97
	v_xor_b32_e32 v60, 0x430, v97
	v_xor_b32_e32 v62, 0x410, v97
	v_dual_mov_b32 v3, v25 :: v_dual_add_nc_u32 v98, 0, v43
	v_add_nc_u32_e32 v99, 0, v52
	v_add_nc_u32_e32 v100, 0, v54
	v_add_nc_u32_e32 v101, 0, v55
	v_add_nc_u32_e32 v102, 0, v56
	v_add_nc_u32_e32 v103, 0, v58
	v_add_nc_u32_e32 v104, 0, v59
	v_add_nc_u32_e32 v107, 0, v40
	v_add_nc_u32_e32 v108, 0, v41
	v_add_nc_u32_e32 v109, 0, v44
	v_add_nc_u32_e32 v110, 0, v45
	v_add_nc_u32_e32 v111, 0, v48
	v_dual_mov_b32 v119, 0xff800000 :: v_dual_add_nc_u32 v112, 0, v50
	v_add_nc_u32_e32 v113, 0, v60
	v_dual_mov_b32 v91, v25 :: v_dual_add_nc_u32 v114, 0, v62
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v116, s19, v90
	s_mov_b32 s20, 0
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s33, s2, 0x3fb8aa3b
	s_mov_b32 s31, 0x76543210
	s_mov_b32 s21, s20
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_and_b32 s37, s7, 0xffff
	s_and_b32 s41, s41, 0xffff
	.loc	1 852 32                        ; attention.py:852:32
	s_add_i32 s34, s34, s3
	s_mov_b32 s36, s6
	s_mov_b32 s35, s20
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v95, v[5:8]
	s_waitcnt vmcnt(2)
	ds_store_b128 v95, v[9:12] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v95, v[13:16] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v95, v[33:36] offset:6144
	v_mov_b32_e32 v6, v25
	v_lshl_or_b32 v37, v39, 4, v39
	v_xor_b32_e32 v39, 0x90, v96
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v5, v25
	v_dual_mov_b32 v14, v25 :: v_dual_and_b32 v105, 0x5040504, v37
	v_lshl_or_b32 v37, v38, 4, v38
	v_dual_mov_b32 v11, v25 :: v_dual_add_nc_u32 v106, 0, v39
	v_mov_b32_e32 v7, v25
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v8, v25 :: v_dual_and_b32 v115, 0x7060706, v37
	ds_load_b128 v[33:36], v42
	ds_load_b128 v[37:40], v46
	ds_load_b128 v[41:44], v47
	ds_load_b128 v[45:48], v49
	ds_load_b128 v[49:52], v51
	ds_load_b128 v[53:56], v53
	ds_load_b128 v[57:60], v57
	ds_load_b128 v[61:64], v61
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s3, s35, s34
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v82, 0, v94
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s2, s3, s18
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s3, s3, s19
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v65, s2, v89, 1
	v_add_lshl_u32 v66, s2, v93, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v81, s3, v90, 1
	v_add_lshl_u32 v83, s3, v116, 1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v120.h, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 854 32                        ; attention.py:854:32
	v_dual_cndmask_b32 v65, 0x80000000, v65 :: v_dual_cndmask_b32 v66, 0x80000000, v66
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v81, 0x80000000, v81, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v85, 0x80000000, v83, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v127.h, v120.h
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x1
	buffer_load_b128 v[73:76], v65, s[36:39], 0 offen
	buffer_load_b128 v[77:80], v66, s[36:39], 0 offen
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v72, s27 :: v_dual_mov_b32 v69, s24
	v_mov_b32_e32 v71, s26
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v70, s25 :: v_dual_mov_b32 v67, s22
	v_dual_mov_b32 v68, s23 :: v_dual_mov_b32 v65, s20
	v_dual_mov_b32 v66, s21 :: v_dual_add_nc_u32 v117, 0, v97
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v126.h, v120.h
	v_mov_b16_e32 v122.h, v120.h
	v_mov_b16_e32 v125.h, v120.h
	v_mov_b16_e32 v123.h, v120.h
	v_mov_b16_e32 v124.h, v120.h
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(1)
	ds_store_b128 v95, v[73:76]
	s_waitcnt vmcnt(0)
	ds_store_b128 v95, v[77:80] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[77:80], v98
	ds_load_b128 v[73:76], v82
	ds_load_b128 v[128:131], v82 offset:2048
	ds_load_b128 v[132:135], v98 offset:2048
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[81:84], v81, s[40:43], 0 offen
	buffer_load_b128 v[85:88], v85, s[40:43], 0 offen
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[136:143], v[73:80], v[33:40], v[65:72]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[128:135], v[33:40], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[69:72], v100
	ds_load_b128 v[65:68], v99
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v133.h, v120.h
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[136:143], v[65:72], v[41:48], v[136:143]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v99 offset:2048
	ds_load_b128 v[69:72], v100 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[65:72], v[41:48], v[73:80]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[69:72], v102
	ds_load_b128 v[65:68], v101
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[136:143], v[65:72], v[49:56], v[136:143]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v101 offset:2048
	ds_load_b128 v[69:72], v102 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[65:72], v[49:56], v[73:80]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[69:72], v104
	ds_load_b128 v[65:68], v103
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[136:143], v[65:72], v[57:64], v[136:143]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v103 offset:2048
	ds_load_b128 v[69:72], v104 offset:2048
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v118, 0, v96
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_wmma_f32_16x16x16_bf16 v[73:80], v[65:72], v[57:64], v[73:80]
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v65, s33, v136 :: v_dual_mul_f32 v66, s33, v137
	v_dual_mul_f32 v68, s33, v139 :: v_dual_mul_f32 v69, s33, v140
	v_dual_mul_f32 v70, s33, v141 :: v_dual_mul_f32 v71, s33, v142
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v74, s33, v74 :: v_dual_mul_f32 v75, s33, v75
	v_dual_mul_f32 v76, s33, v76 :: v_dual_mul_f32 v77, s33, v77
	v_dual_mul_f32 v78, s33, v78 :: v_dual_mul_f32 v79, s33, v79
	v_dual_mul_f32 v67, s33, v138 :: v_dual_mul_f32 v72, s33, v143
	v_mul_f32_e32 v73, s33, v73
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v65, 0xff800000, v65, s0
	v_cndmask_b32_e64 v66, 0xff800000, v66, s0
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v80, s33, v80
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v68, 0xff800000, v68, s0
	v_cndmask_b32_e64 v69, 0xff800000, v69, s0
	v_cndmask_b32_e64 v70, 0xff800000, v70, s0
	v_cndmask_b32_e64 v74, 0xff800000, v74, s0
	v_cndmask_b32_e64 v75, 0xff800000, v75, s0
	v_cndmask_b32_e64 v76, 0xff800000, v76, s0
	v_cndmask_b32_e64 v77, 0xff800000, v77, s0
	v_cndmask_b32_e64 v78, 0xff800000, v78, s0
	v_cndmask_b32_e64 v79, 0xff800000, v79, s0
	v_cndmask_b32_e64 v67, 0xff800000, v67, s0
	v_cndmask_b32_e64 v71, 0xff800000, v71, s0
	v_cndmask_b32_e64 v72, 0xff800000, v72, s0
	v_cndmask_b32_e64 v73, 0xff800000, v73, s0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v121, v65, v66
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v80, 0xff800000, v80, s0
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v128, v68, v69, v70
	v_max3_f32 v129, v74, v75, v76
	v_max3_f32 v130, v77, v78, v79
	v_max3_f32 v131, v71, v72, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v121, v121, v67, v128
	v_max3_f32 v128, v129, v130, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v121, v121, v131, v128
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v128, v121, s31, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v121, v119, v121, v128
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v76, v76, v121
	v_sub_f32_e32 v79, v79, v121
	v_sub_f32_e32 v80, v80, v121
	v_sub_f32_e32 v74, v74, v121
	v_sub_f32_e32 v77, v77, v121
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v76, v76
	v_exp_f32_e32 v79, v79
	v_exp_f32_e32 v80, v80
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v78, v78, v121
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v74, v74
	v_exp_f32_e32 v77, v77
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v72, v121
	v_sub_f32_e32 v70, v70, v121
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v78, v78
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_sub_f32_e32 v119, v119, v121
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v129, 0, v76, s0
	v_cndmask_b32_e64 v76, 0, v79, s0
	v_cndmask_b32_e64 v131, 0, v80, s0
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v75, v75, v121
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v128, 0, v74, s0
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v70, v70
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v119, v119
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v75
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v130, 0, v78, s0
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v133.l, v76.h
	v_cmp_o_f32_e64 s17, v76, v76
	v_cmp_o_f32_e64 s10, v128, v128
	v_cmp_o_f32_e64 s12, v129, v129
	v_cmp_o_f32_e64 s14, v130, v130
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s0
	v_cndmask_b32_e64 v70, 0, v70, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s16, v131, v131
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v74, 0, v75, s0
	v_cndmask_b32_e64 v75, 0, v77, s0
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v73, v73, v121
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v70, v70
	v_cmp_o_f32_e64 s8, v72, v72
	v_mov_b16_e32 v125.l, v74.h
	v_cmp_o_f32_e64 s13, v74, v74
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v73, v73
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s15, v75, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v125, 1, v125
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v73, 0, v73, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v67, v67, v121 :: v_dual_add_f32 v132, v73, v128
	v_sub_f32_e32 v71, v71, v121
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v124.l, v73.h
	v_cmp_o_f32_e64 s11, v73, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v124, 1, v124
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v73, v73, v124, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s0
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v69, v69, v121
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v126.l, v67.h
	v_cmp_o_f32_e64 s5, v67, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v80, v71, v72
.Ltmp7:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v123.l, v71.h
	v_cmp_o_f32_e64 s9, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v123, 1, v123
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s0
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v66, v66, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v71, v71, v123, 0x7fff
	v_cndmask_b16 v71.l, 0x7fff, v73.h, s11
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v79, v69, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp9:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v122.l, v69.h
	v_cmp_o_f32_e64 s7, v69, v69
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v79, v79, v80
	v_add_f32_e32 v80, v75, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp11:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v122, 1, v122
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s0
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v68, v68, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v69, v69, v122, 0x7fff
	v_cndmask_b16 v69.l, 0x7fff, v71.h, s9
	v_mov_b16_e32 v120.l, v66.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v66, v66
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v65, v65, v121 :: v_dual_add_f32 v78, v67, v68
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s0
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v127.l, v65.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v77, v65, v66
.Ltmp13:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v65, v65
	v_and_b32_e32 v127, 1, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v77, v77, v78
.Ltmp15:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v65, v127, 0x7fff
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v127, 0, v119, s2
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v78, v74, v129 :: v_dual_and_b32 v119, 1, v126
.Ltmp17:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s2, v68, v68
	v_add3_u32 v74, v74, v125, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v31, v31, v127 :: v_dual_add_f32 v78, v132, v78
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v132, v76, v131
.Ltmp19:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v127
	v_mul_f32_e32 v23, v23, v127
	v_mul_f32_e32 v30, v30, v127
	v_dual_mul_f32 v17, v17, v127 :: v_dual_add_f32 v80, v80, v132
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v132, 1, v120
	v_mov_b16_e32 v120.l, v68.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v32, v32, v127
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v67, v67, v119, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v19, v19, v127
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v66, v66, v132, 0x7fff
	v_mov_b16_e64 v132.h, v120.h
	v_mov_b16_e64 v132.l, v75.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v127
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s4
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s3
	v_cndmask_b16 v67.l, 0x7fff, v69.h, s7
	v_and_b32_e32 v126, 1, v132
	v_and_b32_e32 v132, 1, v133
	v_and_b32_e32 v133, 1, v120
	v_mov_b16_e32 v120.l, v70.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v127
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v123.l, 0x7fff, v74.h, s13
	v_add3_u32 v76, v76, v132, 0x7fff
	v_add3_u32 v65, v68, v133, 0x7fff
	v_and_b32_e32 v68, 1, v120
	v_mov_b16_e32 v120.l, v72.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v127
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v65.l, 0x7fff, v67.h, s5
	v_permlanex16_b32 v74, v66, s31, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v68, v70, v68, 0x7fff
	v_and_b32_e32 v70, 1, v120
	v_mov_b16_e64 v120.l, v128.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v7, v7, v127
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s2
	v_cndmask_b16 v67.h, 0x7fff, v68.h, s6
	v_add3_u32 v68, v72, v70, 0x7fff
	v_and_b32_e32 v70, 1, v120
	v_mov_b16_e64 v120.l, v129.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v127
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v75, v75, v126, 0x7fff
	v_cndmask_b16 v69.h, 0x7fff, v68.h, s8
	v_cndmask_b16 v125.l, 0x7fff, v76.h, s17
	v_and_b32_e32 v68, 1, v120
	v_mov_b16_e64 v120.l, v130.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v11, v11, v127
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v73, v74, v66, v105
	v_permlanex16_b32 v76, v65, s31, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v74, v74, v66, v115
	v_permlanex16_b32 v66, v67, s31, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v72, 1, v120
	v_mov_b16_e64 v120.l, v131.h
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v1, v1, v127 :: v_dual_add_f32 v122, v78, v80
	v_mul_f32_e32 v13, v13, v127
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v119, v77, v79
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v124.l, 0x7fff, v75.h, s15
	v_perm_b32 v75, v76, v65, v105
	v_perm_b32 v76, v76, v65, v115
	v_add3_u32 v65, v128, v70, 0x7fff
	v_perm_b32 v77, v66, v67, v105
	v_permlanex16_b32 v70, v69, s31, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v78, v66, v67, v115
	v_and_b32_e32 v66, 1, v120
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v120.l, v81.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v120.h, v85.l
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
	v_cndmask_b16 v71.h, 0x7fff, v65.h, s10
	v_add3_u32 v65, v129, v68, 0x7fff
	v_perm_b32 v79, v70, v69, v105
	v_add3_u32 v68, v130, v72, 0x7fff
	v_perm_b32 v80, v70, v69, v115
	v_add3_u32 v69, v131, v66, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b32 v118, v120, v85 offset1:16
	ds_store_2addr_b32 v106, v81, v86 offset1:16
	ds_store_2addr_b32 v107, v82, v87 offset1:16
	ds_store_2addr_b32 v108, v83, v88 offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[81:84], v117
	ds_load_b128 v[85:88], v109
	ds_load_b128 v[132:135], v113
	ds_load_b128 v[128:131], v112
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v127
	v_mul_f32_e32 v26, v26, v127
	v_mul_f32_e32 v27, v27, v127
	v_mul_f32_e32 v29, v29, v127
	v_mul_f32_e32 v18, v18, v127
	v_mul_f32_e32 v20, v20, v127
	v_mul_f32_e32 v22, v22, v127
	v_mul_f32_e32 v24, v24, v127
	v_mul_f32_e32 v2, v2, v127
	v_mul_f32_e32 v4, v4, v127
	v_mul_f32_e32 v6, v6, v127
	v_mul_f32_e32 v8, v8, v127
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v67, v71, s31, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v123.h, 0x7fff, v65.h, s12
	v_cndmask_b16 v124.h, 0x7fff, v68.h, s14
	v_cndmask_b16 v125.h, 0x7fff, v69.h, s16
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v127
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[81:88], v[73:80], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[85:88], v109 offset:2048
	ds_load_b128 v[81:84], v117 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[128:135], v[73:80], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[128:131], v112 offset:2048
	ds_load_b128 v[132:135], v113 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v65, v67, v71, v105
	v_permlanex16_b32 v70, v123, s31, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v66, v67, v71, v115
	v_permlanex16_b32 v71, v124, s31, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v72, v125, s31, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v12, v12, v127
	v_mul_f32_e32 v14, v14, v127
	v_mul_f32_e32 v15, v15, v127
	v_mul_f32_e32 v16, v16, v127
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v67, v70, v123, v105
	v_perm_b32 v68, v70, v123, v115
	v_perm_b32 v69, v71, v124, v105
	v_perm_b32 v70, v71, v124, v115
	v_perm_b32 v71, v72, v125, v105
	v_perm_b32 v72, v72, v125, v115
	v_mov_b32_e32 v120, v91
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s2, s35, 32
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[81:88], v[73:80], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[85:88], v111
	ds_load_b128 v[81:84], v110
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[128:135], v[73:80], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[73:76], v117 offset:1024
	ds_load_b128 v[128:131], v117 offset:3072
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v117, v119, v122
	v_mov_b32_e32 v119, v121
.Ltmp23:
	.loc	1 818 13                        ; attention.py:818:13
	s_cmpk_lt_u32 s35, 0x7e0
	s_mov_b32 s35, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v118, v117, s31, 0xfedcba98 op_sel:[1,0]
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v91, v117, v118
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp26:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v91, v120, v127
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[81:88], v[65:72], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[81:84], v110 offset:2048
	ds_load_b128 v[77:80], v114
	ds_load_b128 v[85:88], v111 offset:2048
	ds_load_b128 v[132:135], v114 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[73:80], v[65:72], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[81:88], v[65:72], v[1:8]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[128:135], v[65:72], v[9:16]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v37, null, v91, v91, v25
	v_div_scale_f32 v38, null, v91, v91, v26
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v33, 4, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v39, v37
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v35, v0, 4, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v40, v38
	v_div_scale_f32 v42, null, v91, v91, v27
	v_div_scale_f32 v41, vcc_lo, v25, v91, v25
	v_div_scale_f32 v43, null, v91, v91, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v45, v42
	v_fma_f32 v0, -v37, v39, 1.0
	v_div_scale_f32 v44, s1, v26, v91, v26
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v38, v40, 1.0
	v_rcp_f32_e32 v46, v43
	v_fmac_f32_e32 v39, v0, v39
	v_div_scale_f32 v47, s2, v27, v91, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v40, v34, v40
	v_fma_f32 v36, -v42, v45, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v48, v41, v39
	v_div_scale_f32 v53, null, v91, v91, v18
	v_mul_f32_e32 v49, v44, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v43, v46, 1.0
	v_fma_f32 v50, -v37, v48, v41
	v_fmac_f32_e32 v45, v36, v45
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 62, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v52, -v38, v49, v44
	v_fmac_f32_e32 v46, v51, v46
	v_fmac_f32_e32 v48, v50, v39
	v_div_scale_f32 v51, s3, v28, v91, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v52, v40
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v33, 48, v35
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v37, v48, v41
	v_div_scale_f32 v41, null, v91, v91, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v38, v49, v44
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v34, 32, v35
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v39, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v39, v41
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v91
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v40, v49
	v_div_fixup_f32 v25, v37, v91, v25
	v_div_scale_f32 v37, null, v91, v91, v30
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v26, v38, v91, v26
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v36, 16, v35
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v41, v39, 1.0
	v_mul_f32_e32 v50, v47, v45
	v_rcp_f32_e32 v40, v37
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	v_cndmask_b32_e64 v26, 0, v26, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v49, v39
	v_fma_f32 v52, -v42, v50, v47
	v_div_scale_f32 v49, s2, v30, v91, v30
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s31, 0x31027000
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v50, v52, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v42, v50, v47
	v_div_scale_f32 v42, s4, v29, v91, v29
	v_mul_f32_e32 v48, v51, v46
	v_div_scale_f32 v47, null, v91, v91, v31
	v_div_fmas_f32 v38, v38, v45, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v42, v39
	v_fma_f32 v44, -v43, v48, v51
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v50, null, v91, v91, v32
	v_div_fixup_f32 v27, v38, v91, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v48, v44, v46
	v_fma_f32 v44, -v37, v40, 1.0
	v_rcp_f32_e32 v52, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v43, v48, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v40, v44, v40
	v_rcp_f32_e32 v44, v47
	v_div_fmas_f32 v43, v43, v46, v48
	v_fma_f32 v46, -v41, v45, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v48, v49, v40
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v28, v43, v91, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v45, v46, v39
	v_div_scale_f32 v46, null, v91, v91, v17
	v_fma_f32 v38, -v37, v48, v49
	v_fma_f32 v51, -v47, v44, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v41, v45, v42
	v_rcp_f32_e32 v42, v46
	v_div_scale_f32 v43, s3, v31, v91, v31
	v_fmac_f32_e32 v48, v38, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v41, v39, v45
	s_mov_b32 vcc_lo, s2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v37, v48, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v29, v39, v91, v29
	v_fma_f32 v49, -v46, v42, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v37, v37, v40, v48
	v_div_scale_f32 v48, s2, v17, v91, v17
	v_fmac_f32_e32 v42, v49, v42
	v_fmac_f32_e32 v44, v51, v44
	v_fma_f32 v51, -v50, v52, 1.0
	v_rcp_f32_e32 v40, v53
	v_div_fixup_f32 v30, v37, v91, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v39, v48, v42 :: v_dual_mul_f32 v38, v43, v44
	v_fmac_f32_e32 v52, v51, v52
	v_div_scale_f32 v51, s5, v32, v91, v32
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v41, -v47, v38, v43
	v_div_scale_f32 v49, null, v91, v91, v20
	v_mul_f32_e32 v45, v51, v52
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v41, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v50, v45, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v47, v38, v43
	v_div_scale_f32 v43, null, v91, v91, v19
	v_fmac_f32_e32 v45, v41, v52
	v_fma_f32 v41, -v53, v40, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v37, v37, v44, v38
	v_fma_f32 v44, -v46, v39, v48
	v_div_scale_f32 v47, s3, v18, v91, v18
	v_fmac_f32_e32 v40, v41, v40
	v_rcp_f32_e32 v41, v43
	v_fma_f32 v38, -v50, v45, v51
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v31, v37, v91, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v38, v38, v52, v45
	v_mul_f32_e32 v45, v47, v40
	v_fmac_f32_e32 v39, v44, v42
	v_rcp_f32_e32 v44, v49
	v_fma_f32 v50, -v43, v41, 1.0
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v32, v38, v91, v32
	v_fma_f32 v37, -v46, v39, v48
	v_fma_f32 v38, -v53, v45, v47
	v_fmac_f32_e32 v41, v50, v41
	v_div_scale_f32 v50, null, v91, v91, v21
	v_div_scale_f32 v46, s4, v19, v91, v19
	v_div_fmas_f32 v37, v37, v42, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v39, v50
	v_fma_f32 v48, -v49, v44, 1.0
	v_fmac_f32_e32 v45, v38, v40
	v_mul_f32_e32 v38, v46, v41
	v_div_scale_f32 v42, s2, v20, v91, v20
	v_fmac_f32_e32 v44, v48, v44
	v_div_fixup_f32 v17, v37, v91, v17
	v_fma_f32 v37, -v53, v45, v47
	v_fma_f32 v47, -v43, v38, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v53, -v50, v39, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v48, null, v91, v91, v22
	v_fmac_f32_e32 v38, v47, v41
	v_div_fmas_f32 v37, v37, v40, v45
	v_fmac_f32_e32 v39, v53, v39
	v_div_scale_f32 v45, s3, v21, v91, v21
	v_mul_f32_e32 v51, v42, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v18, v37, v91, v18
	v_fma_f32 v37, -v43, v38, v46
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v52, v48
	v_fma_f32 v40, -v49, v51, v42
	v_div_scale_f32 v46, null, v91, v91, v23
	v_div_fmas_f32 v37, v37, v41, v38
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v51, v40, v44 :: v_dual_mul_f32 v40, v45, v39
	v_div_scale_f32 v43, s5, v22, v91, v22
	v_fma_f32 v47, -v48, v52, 1.0
	v_div_fixup_f32 v19, v37, v91, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v41, -v50, v40, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s1
	v_cndmask_b32_e64 v32, 0, v32, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v52, v47, v52
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v41, v39
	v_fma_f32 v38, -v49, v51, v42
	v_rcp_f32_e32 v42, v46
	v_div_scale_f32 v49, null, v91, v91, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v50, v40, v45
	v_div_fmas_f32 v38, v38, v44, v51
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v49
	v_div_scale_f32 v50, null, v91, v91, v2
	v_div_fixup_f32 v20, v38, v91, v20
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v46, v42, 1.0
	v_div_scale_f32 v38, s2, v23, v91, v23
	v_div_fmas_f32 v37, v37, v39, v40
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v42, v51, v42
	v_mul_f32_e32 v47, v43, v52
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v21, v37, v91, v21
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v40, v38, v42
	v_fma_f32 v44, -v48, v47, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	v_cndmask_b32_e64 v21, 0, v21, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v47, v44, v52
	v_fma_f32 v44, -v49, v41, 1.0
	v_fma_f32 v39, -v48, v47, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v44, s3, v24, v91, v24
	v_div_scale_f32 v43, null, v91, v91, v1
	v_mul_f32_e32 v48, v44, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v45, v43
	v_fma_f32 v37, -v49, v48, v44
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v48, v37, v41
	v_div_fmas_f32 v39, v39, v52, v47
	v_fma_f32 v47, -v46, v40, v38
	v_div_scale_f32 v52, null, v91, v91, v4
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v22, v39, v91, v22
	v_fmac_f32_e32 v40, v47, v42
	v_rcp_f32_e32 v39, v50
	v_fma_f32 v47, -v43, v45, 1.0
	v_rcp_f32_e32 v54, v52
	v_div_scale_f32 v37, s4, v1, v91, v1
	v_fma_f32 v38, -v46, v40, v38
	v_div_scale_f32 v46, null, v91, v91, v3
	v_fmac_f32_e32 v45, v47, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v42, v40
	v_rcp_f32_e32 v47, v46
	v_fma_f32 v40, -v49, v48, v44
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v51, -v50, v39, 1.0
	v_div_scale_f32 v44, s2, v2, v91, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v40, v40, v41, v48
	v_div_fixup_f32 v23, v38, v91, v23
	v_fmac_f32_e32 v39, v51, v39
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v49, -v46, v47, 1.0
	v_div_fixup_f32 v24, v40, v91, v24
	v_fma_f32 v40, -v52, v54, 1.0
	v_mul_f32_e32 v53, v44, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v3, v91, v3
	v_fmac_f32_e32 v54, v40, v54
	v_div_scale_f32 v40, s3, v4, v91, v4
	v_mul_f32_e32 v42, v37, v45
	v_fma_f32 v41, -v50, v53, v44
	v_mul_f32_e32 v48, v49, v47
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v51, -v43, v42, v37
	v_fmac_f32_e32 v53, v41, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v46, v48, v49
	v_div_scale_f32 v41, null, v91, v91, v5
	v_fmac_f32_e32 v42, v51, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v38, v47
	v_rcp_f32_e32 v38, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v43, v42, v37
	v_mul_f32_e32 v43, v40, v54
	v_div_fmas_f32 v37, v37, v45, v42
	v_fma_f32 v42, -v50, v53, v44
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v44, null, v91, v91, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v41, v38, 1.0
	v_div_fmas_f32 v39, v42, v39, v53
	v_fma_f32 v42, -v46, v48, v49
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v46, v44
	v_fmac_f32_e32 v38, v45, v38
	v_div_scale_f32 v45, s2, v5, v91, v5
	v_div_fmas_f32 v42, v42, v47, v48
	v_fma_f32 v47, -v52, v43, v40
	v_div_fixup_f32 v1, v37, v91, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v37, v45, v38
	v_div_fixup_f32 v2, v39, v91, v2
	v_div_fixup_f32 v3, v42, v91, v3
	v_fmac_f32_e32 v43, v47, v54
	v_fma_f32 v39, -v44, v46, 1.0
	v_div_scale_f32 v42, null, v91, v91, v7
	v_fma_f32 v47, -v41, v37, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v40, -v52, v43, v40
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v46, v39, v46
	v_div_scale_f32 v39, s4, v6, v91, v6
	v_rcp_f32_e32 v48, v42
	v_div_fmas_f32 v40, v40, v54, v43
	v_fmac_f32_e32 v37, v47, v38
	v_div_scale_f32 v47, null, v91, v91, v8
	v_mul_f32_e32 v43, v39, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v4, v40, v91, v4
	v_fma_f32 v40, -v41, v37, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v49, v47
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v41, -v44, v43, v39
	v_fma_f32 v45, -v42, v48, 1.0
	v_div_fmas_f32 v37, v40, v38, v37
	v_div_scale_f32 v38, null, v91, v91, v9
	v_div_scale_f32 v40, s2, v7, v91, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v48, v45, v48
	v_fmac_f32_e32 v43, v41, v46
	v_div_fixup_f32 v5, v37, v91, v5
	v_fma_f32 v37, -v47, v49, 1.0
	v_rcp_f32_e32 v41, v38
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v39, -v44, v43, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v44, v40, v48 :: v_dual_fmac_f32 v49, v37, v49
	v_div_scale_f32 v37, s3, v8, v91, v8
	v_div_scale_f32 v45, null, v91, v91, v10
	v_div_fmas_f32 v39, v39, v46, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v42, v44, v40
	v_mul_f32_e32 v46, v37, v49
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v50, -v38, v41, 1.0
	v_rcp_f32_e32 v51, v45
	v_div_fixup_f32 v6, v39, v91, v6
	v_fmac_f32_e32 v44, v43, v48
	v_fma_f32 v43, -v47, v46, v37
	v_fmac_f32_e32 v41, v50, v41
	v_div_scale_f32 v50, null, v91, v91, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v42, v44, v40
	v_fmac_f32_e32 v46, v43, v49
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v52, s4, v9, v91, v9
	v_fma_f32 v53, -v45, v51, 1.0
	v_rcp_f32_e32 v54, v50
	v_div_fmas_f32 v39, v39, v48, v44
	v_fma_f32 v37, -v47, v46, v37
	v_div_scale_f32 v44, null, v91, v91, v12
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v55, v52, v41
	v_fmac_f32_e32 v51, v53, v51
	v_div_scale_f32 v53, s5, v10, v91, v10
	v_div_fmas_f32 v37, v37, v49, v46
	v_rcp_f32_e32 v46, v44
	v_fma_f32 v40, -v38, v55, v52
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v42, v53, v51
	v_fma_f32 v43, -v50, v54, 1.0
	v_div_fixup_f32 v7, v39, v91, v7
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v55, v40, v41
	v_fma_f32 v40, -v45, v42, v53
	v_fmac_f32_e32 v54, v43, v54
	v_div_scale_f32 v43, s2, v11, v91, v11
	v_fma_f32 v39, -v44, v46, 1.0
	v_fma_f32 v38, -v38, v55, v52
	v_div_fixup_f32 v8, v37, v91, v8
	v_div_scale_f32 v48, null, v91, v91, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v46, v39, v46
	v_fmac_f32_e32 v42, v40, v51
	v_mul_f32_e32 v40, v43, v54
	v_div_fmas_f32 v38, v38, v41, v55
	v_div_scale_f32 v39, null, v91, v91, v14
	v_fma_f32 v41, -v45, v42, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v50, v40, v43
	v_div_fixup_f32 v9, v38, v91, v9
	v_div_scale_f32 v38, null, v91, v91, v13
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v40, v45, v54
	v_div_fmas_f32 v41, v41, v51, v42
	s_mov_b32 vcc_lo, s2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v50, v40, v43
	v_rcp_f32_e32 v43, v39
	v_rcp_f32_e32 v50, v48
	v_div_fixup_f32 v10, v41, v91, v10
	v_div_scale_f32 v41, null, v91, v91, v15
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	v_cndmask_b32_e64 v4, 0, v4, s1
	v_cndmask_b32_e64 v5, 0, v5, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v45, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v39, v43, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v8, 0, v8, s1
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v49, v43
	v_div_scale_f32 v49, s3, v14, v91, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v52, -v41, v45, 1.0
	v_mul_f32_e32 v55, v49, v43
	v_div_fmas_f32 v37, v37, v54, v40
	v_rcp_f32_e32 v40, v38
	v_div_scale_f32 v42, vcc_lo, v12, v91, v12
	v_fma_f32 v54, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v11, v37, v91, v11
	v_fmac_f32_e32 v45, v52, v45
	v_mul_f32_e32 v47, v42, v46
	v_div_scale_f32 v52, s4, v15, v91, v15
	v_fmac_f32_e32 v50, v54, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v38, v40, 1.0
	v_div_scale_f32 v54, s5, v16, v91, v16
	v_fma_f32 v51, -v44, v47, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v40, v37, v40 :: v_dual_mul_f32 v57, v54, v50
	v_div_scale_f32 v37, s2, v13, v91, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v47, v51, v46
	v_mul_f32_e32 v53, v37, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v42, -v44, v47, v42
	v_fma_f32 v44, -v39, v55, v49
	v_fma_f32 v51, -v38, v53, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v42, v42, v46, v47
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v55, v44, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v53, v51, v40
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s19, v34
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v12, v42, v91, v12
	v_fma_f32 v39, -v39, v55, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v38, v53, v37
	v_fma_f32 v38, -v48, v57, v54
	v_mul_f32_e32 v56, v52, v45
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v40, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v57, v38, v50
	v_fma_f32 v51, -v41, v56, v52
	s_mov_b32 vcc_lo, s3
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s19, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v13, v37, v91, v13
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v37, s30, v92
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v56, v51, v45
	v_div_fmas_f32 v39, v39, v43, v55
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v40, -v48, v57, v54
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v37, s19, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v41, v56, v52
	v_div_fixup_f32 v14, v39, v91, v14
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v45, v56
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v40, v50, v57
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s19, v35
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v15, v38, v91, v15
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v38, v37, v35, 2
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v0, v37, v0, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v16, v40, v91, v16
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v35, 8, v38
	v_add_nc_u32_e32 v39, 16, v38
	v_cndmask_b32_e32 v40, 0x80000000, v38, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s19, v36
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	s_clause 0x2
	buffer_store_b32 v25, v40, s[28:31], 0 offen
	buffer_store_b32 v26, v35, s[28:31], 0 offen
	buffer_store_b32 v27, v39, s[28:31], 0 offen
	v_add_nc_u32_e32 v25, 24, v38
	v_add_nc_u32_e32 v35, 48, v38
	v_add_nc_u32_e32 v26, 32, v38
	v_add_nc_u32_e32 v27, 40, v38
	v_add_nc_u32_e32 v39, 56, v38
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	s_clause 0x4
	buffer_store_b32 v28, v25, s[28:31], 0 offen
	buffer_store_b32 v29, v26, s[28:31], 0 offen
	buffer_store_b32 v30, v27, s[28:31], 0 offen
	buffer_store_b32 v31, v35, s[28:31], 0 offen
	buffer_store_b32 v32, v39, s[28:31], 0 offen
	v_add_lshl_u32 v25, v37, v36, 2
	v_add_nc_u32_e32 v26, 0x48, v38
	v_add_nc_u32_e32 v27, 0x50, v38
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v28, 0x58, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	v_add_nc_u32_e32 v29, 0x60, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	s_clause 0x2
	buffer_store_b32 v17, v25, s[28:31], 0 offen
	buffer_store_b32 v18, v26, s[28:31], 0 offen
	buffer_store_b32 v19, v27, s[28:31], 0 offen
	v_add_nc_u32_e32 v18, 0x68, v38
	v_add_nc_u32_e32 v19, 0x70, v38
	v_cndmask_b32_e32 v17, 0x80000000, v29, vcc_lo
	buffer_store_b32 v20, v28, s[28:31], 0 offen
	v_add_nc_u32_e32 v20, 0x78, v38
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	buffer_store_b32 v21, v17, s[28:31], 0 offen
	v_add_lshl_u32 v17, v37, v34, 2
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s2
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v22, v18, s[28:31], 0 offen
	v_add_nc_u32_e32 v18, 0x88, v38
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v19, s[28:31], 0 offen
	buffer_store_b32 v24, v20, s[28:31], 0 offen
	buffer_store_b32 v1, v17, s[28:31], 0 offen
	v_add_nc_u32_e32 v1, 0x90, v38
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	v_add_nc_u32_e32 v18, 0x98, v38
	v_add_nc_u32_e32 v19, 0xa0, v38
	v_add_nc_u32_e32 v20, 0xa8, v38
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_store_b32 v2, v17, s[28:31], 0 offen
	v_dual_cndmask_b32 v2, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v19
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	buffer_store_b32 v3, v1, s[28:31], 0 offen
	v_add_nc_u32_e32 v1, 0xb0, v38
	s_clause 0x2
	buffer_store_b32 v4, v2, s[28:31], 0 offen
	buffer_store_b32 v5, v17, s[28:31], 0 offen
	buffer_store_b32 v6, v18, s[28:31], 0 offen
	v_add_nc_u32_e32 v2, 0xb8, v38
	v_add_lshl_u32 v3, v37, v33, 2
	v_add_nc_u32_e32 v4, 0xc8, v38
	v_add_nc_u32_e32 v5, 0xd0, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	s_clause 0x4
	buffer_store_b32 v7, v1, s[28:31], 0 offen
	buffer_store_b32 v8, v2, s[28:31], 0 offen
	buffer_store_b32 v9, v3, s[28:31], 0 offen
	buffer_store_b32 v10, v4, s[28:31], 0 offen
	buffer_store_b32 v11, v5, s[28:31], 0 offen
	v_add_nc_u32_e32 v1, 0xd8, v38
	v_add_nc_u32_e32 v2, 0xe0, v38
	v_add_nc_u32_e32 v3, 0xe8, v38
	v_add_nc_u32_e32 v4, 0xf0, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b32 v12, v1, s[28:31], 0 offen
	buffer_store_b32 v13, v2, s[28:31], 0 offen
	buffer_store_b32 v14, v3, s[28:31], 0 offen
	buffer_store_b32 v15, v4, s[28:31], 0 offen
	buffer_store_b32 v16, v0, s[28:31], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp27:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
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
		.amdhsa_next_free_sgpr 44
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
		.amdhsa_inst_pref_size 61
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_vgpr, 144
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7716
; TotalNumSgprs: 46
; NumVgprs: 144
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 46
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
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.kd
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
