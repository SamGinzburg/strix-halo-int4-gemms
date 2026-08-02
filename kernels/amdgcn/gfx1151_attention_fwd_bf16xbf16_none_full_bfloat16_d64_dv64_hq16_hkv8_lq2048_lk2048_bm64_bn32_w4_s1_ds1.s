	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[30:31], s[0:1], 0x5c
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
	s_add_i32 s19, s8, s9
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v42, 0x60, v0
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
	v_mad_u64_u32 v[89:90], null, s30, v1, v[37:38]
	s_mul_i32 s9, s30, s19
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s30, v37
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s1, s30, 5
	s_mul_i32 s10, s30, 48
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s37, s5, 0xffff
	s_mov_b32 s36, s4
	v_dual_mov_b32 v26, v25 :: v_dual_add_nc_u32 v1, s9, v89
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v96, s30, 4, v89
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s0, s0, vcc_lo
	v_dual_mov_b32 v30, v25 :: v_dual_and_b32 v43, 0x78, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v27, v25 :: v_dual_lshlrev_b32 v2, 1, v1
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, v96, s9, 1
	v_add_lshl_u32 v4, v1, s1, 1
	v_add_lshl_u32 v1, v1, s10, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_dual_mov_b32 v29, v25 :: v_dual_lshlrev_b32 v44, 4, v0
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
	v_dual_mov_b32 v32, v25 :: v_dual_lshlrev_b32 v45, 1, v0
	s_lshr_b32 s0, s0, 28
	v_dual_mov_b32 v18, v25 :: v_dual_lshlrev_b32 v47, 3, v0
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v28, v25 :: v_dual_and_b32 v41, 15, v0
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, 0xfff0
	v_bfe_i32 v48, v0, 3, 1
	s_sub_i32 s3, s3, s1
	v_cmp_eq_u32_e64 s1, 0, v46
	v_dual_mov_b32 v20, v25 :: v_dual_and_b32 v45, 0x70, v45
	v_dual_mov_b32 v21, v25 :: v_dual_and_b32 v46, 48, v44
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v39, 0x1054, v39, s1
	v_dual_mov_b32 v24, v25 :: v_dual_and_b32 v47, 48, v47
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v49, 1, v42
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v50, 2, v43
	v_lshrrev_b32_e32 v43, 1, v43
	v_cndmask_b32_e64 v40, 0x3276, v40, s1
	v_lshl_or_b32 v39, v39, 8, v39
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s4, s3, 0x10007
	v_dual_mov_b32 v17, v25 :: v_dual_lshlrev_b32 v42, 6, v42
	v_dual_mov_b32 v19, v25 :: v_dual_lshlrev_b32 v52, 4, v38
	v_dual_mov_b32 v22, v25 :: v_dual_lshlrev_b32 v51, 7, v41
	v_dual_mov_b32 v23, v25 :: v_dual_and_b32 v48, 0x210, v48
	v_dual_mov_b32 v4, v25 :: v_dual_and_b32 v39, 0x540054, v39
	s_add_i32 s3, s3, s4
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v94, v49, v41
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v41, v44, v45
	v_xor_b32_e32 v43, v46, v43
	v_lshl_or_b32 v44, v38, 6, v47
	v_lshl_or_b32 v40, v40, 8, v40
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s3, s3, 0x80000
	v_mov_b32_e32 v3, v25
	s_sext_i32_i16 s3, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_or3_b32 v42, v51, v42, v52
	v_or_b32_e32 v97, v52, v51
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v45, s8, v94
	v_lshl_or_b32 v99, v38, 9, v43
	v_xor_b32_e32 v100, v44, v48
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s34, s2, 0x3fb8aa3b
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s2, s31, v37
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[90:91], null, s31, v50, v[37:38]
	v_lshl_or_b32 v37, v39, 4, v39
	v_and_b32_e32 v38, 0x760076, v40
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s0, s0, 10
	s_lshl_b32 s3, s3, 10
	s_and_b32 s0, s0, 0xffffc000
	s_and_b32 s35, s3, 0xfffff800
	v_dual_mov_b32 v1, v25 :: v_dual_add_nc_u32 v98, 0, v41
	v_dual_mov_b32 v2, v25 :: v_dual_add_nc_u32 v41, 0, v42
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v46, v42, 16, 0
	v_xad_u32 v47, v42, 32, 0
	v_xad_u32 v49, v42, 48, 0
	v_xad_u32 v51, v42, 64, 0
	v_xad_u32 v53, 0x50, v42, 0
	v_xad_u32 v57, 0x60, v42, 0
	v_xad_u32 v61, 0x70, v42, 0
	v_xor_b32_e32 v42, 16, v97
	v_xor_b32_e32 v52, 32, v97
	v_xor_b32_e32 v54, 48, v97
	v_xor_b32_e32 v55, 64, v97
	v_xor_b32_e32 v56, 0x50, v97
	v_xor_b32_e32 v58, 0x60, v97
	v_xor_b32_e32 v59, 0x70, v97
	.loc	1 852 32                        ; attention.py:852:32
	s_add_i32 s35, s35, s0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x800, v45
	v_xor_b32_e32 v39, 0x90, v99
	v_xor_b32_e32 v40, 0x120, v99
	v_xor_b32_e32 v43, 0x1b0, v99
	v_xor_b32_e32 v44, 16, v100
	v_xor_b32_e32 v45, 32, v100
	v_xor_b32_e32 v48, 48, v100
	v_xor_b32_e32 v50, 0x420, v100
	v_xor_b32_e32 v60, 0x430, v100
	v_xor_b32_e32 v62, 0x410, v100
	v_and_b32_e32 v91, 0x5040504, v37
	v_lshl_or_b32 v37, v38, 4, v38
	v_add_nc_u32_e32 v101, 0, v42
	v_add_nc_u32_e32 v102, 0, v52
	v_add_nc_u32_e32 v103, 0, v54
	v_add_nc_u32_e32 v104, 0, v55
	v_add_nc_u32_e32 v105, 0, v56
	v_add_nc_u32_e32 v106, 0, v58
	v_add_nc_u32_e32 v107, 0, v59
	v_add_nc_u32_e32 v108, 0, v39
	v_add_nc_u32_e32 v109, 0, v40
	v_add_nc_u32_e32 v110, 0, v43
	v_dual_mov_b32 v120, 0xff800000 :: v_dual_add_nc_u32 v111, 0, v44
	v_add_nc_u32_e32 v112, 0, v45
	v_add_nc_u32_e32 v113, 0, v48
	v_dual_mov_b32 v95, v25 :: v_dual_add_nc_u32 v114, 0, v50
	v_add_nc_u32_e32 v115, 0, v60
	v_add_nc_u32_e32 v116, 0, v62
	v_and_b32_e32 v92, 0x7060706, v37
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v117, s31, v90
	v_mov_b16_e32 v93.h, 0
	s_mov_b32 s20, 0
	s_mov_b32 s33, 0x76543210
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
	s_mov_b32 s36, s6
	s_mov_b32 s44, s20
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v98, v[5:8]
	s_waitcnt vmcnt(2)
	ds_store_b128 v98, v[9:12] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v98, v[13:16] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v98, v[33:36] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v41
	ds_load_b128 v[37:40], v46
	ds_load_b128 v[41:44], v47
	ds_load_b128 v[45:48], v49
	ds_load_b128 v[49:52], v51
	ds_load_b128 v[53:56], v53
	ds_load_b128 v[57:60], v57
	ds_load_b128 v[61:64], v61
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s4, s44, s35
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v82, 0, v97
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s3, s4, s30
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s4, s4, s31
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v65, s3, v89, 1
	v_add_lshl_u32 v66, s3, v96, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v81, s4, v90, 1
	v_add_lshl_u32 v83, s4, v117, 1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v127.h, v93.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 854 32                        ; attention.py:854:32
	v_dual_cndmask_b32 v65, 0x80000000, v65 :: v_dual_cndmask_b32 v66, 0x80000000, v66
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v81, 0x80000000, v81, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v85, 0x80000000, v83, s2
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v120
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
	v_dual_mov_b32 v66, s21 :: v_dual_add_nc_u32 v119, 0, v99
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v126.h, v93.h
	v_mov_b16_e32 v122.h, v93.h
	v_mov_b16_e32 v125.h, v93.h
	v_mov_b16_e32 v123.h, v93.h
	v_mov_b16_e32 v124.h, v93.h
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(1)
	ds_store_b128 v98, v[73:76]
	s_waitcnt vmcnt(0)
	ds_store_b128 v98, v[77:80] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[77:80], v101
	ds_load_b128 v[73:76], v82
	ds_load_b128 v[128:131], v82 offset:2048
	ds_load_b128 v[132:135], v101 offset:2048
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
	ds_load_b128 v[69:72], v103
	ds_load_b128 v[65:68], v102
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v133.h, v93.h
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[136:143], v[65:72], v[41:48], v[136:143]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v102 offset:2048
	ds_load_b128 v[69:72], v103 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[65:72], v[41:48], v[73:80]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[69:72], v105
	ds_load_b128 v[65:68], v104
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[136:143], v[65:72], v[49:56], v[136:143]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v104 offset:2048
	ds_load_b128 v[69:72], v105 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[65:72], v[49:56], v[73:80]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[69:72], v107
	ds_load_b128 v[65:68], v106
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[136:143], v[65:72], v[57:64], v[136:143]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v106 offset:2048
	ds_load_b128 v[69:72], v107 offset:2048
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v118, 0, v100
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_wmma_f32_16x16x16_bf16 v[73:80], v[65:72], v[57:64], v[73:80]
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v65, s34, v136 :: v_dual_mul_f32 v66, s34, v137
	v_dual_mul_f32 v68, s34, v139 :: v_dual_mul_f32 v69, s34, v140
	v_dual_mul_f32 v70, s34, v141 :: v_dual_mul_f32 v71, s34, v142
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v74, s34, v74 :: v_dual_mul_f32 v75, s34, v75
	v_dual_mul_f32 v76, s34, v76 :: v_dual_mul_f32 v77, s34, v77
	v_dual_mul_f32 v78, s34, v78 :: v_dual_mul_f32 v79, s34, v79
	v_dual_mul_f32 v67, s34, v138 :: v_dual_mul_f32 v72, s34, v143
	v_mul_f32_e32 v73, s34, v73
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v65, 0xff800000, v65, s0
	v_cndmask_b32_e64 v66, 0xff800000, v66, s0
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v80, s34, v80
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
	v_permlanex16_b32 v128, v121, s33, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v121, v120, v121, v128
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
	v_sub_f32_e32 v120, v120, v121
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
	v_exp_f32_e32 v120, v120
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v75
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v130, 0, v78, s0
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v133.l, v76.h
	v_cmp_o_f32_e64 s18, v76, v76
	v_cmp_o_f32_e64 s11, v128, v128
	v_cmp_o_f32_e64 s13, v129, v129
	v_cmp_o_f32_e64 s15, v130, v130
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s0
	v_cndmask_b32_e64 v70, 0, v70, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s17, v131, v131
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v74, 0, v75, s0
	v_cndmask_b32_e64 v75, 0, v77, s0
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v73, v73, v121
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v70, v70
	v_cmp_o_f32_e64 s9, v72, v72
	v_mov_b16_e32 v125.l, v74.h
	v_cmp_o_f32_e64 s14, v74, v74
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v73, v73
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s16, v75, v75
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
	v_cmp_o_f32_e64 s12, v73, v73
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
	v_cmp_o_f32_e64 s6, v67, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v80, v71, v72
.Ltmp7:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v123.l, v71.h
	v_cmp_o_f32_e64 s10, v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s0
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v66, v66, v121 :: v_dual_add_f32 v79, v69, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v122.l, v69.h
	v_cmp_o_f32_e64 s8, v69, v69
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v79, v79, v80
	v_add_f32_e32 v80, v75, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp9:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v122, 1, v122
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s0
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v68, v68, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v69, v69, v122, 0x7fff
	v_mov_b16_e32 v93.l, v66.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v66, v66
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
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v77, v65, v66
.Ltmp11:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v65, v65
	v_and_b32_e32 v127, 1, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v77, v77, v78
.Ltmp13:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v65, v127, 0x7fff
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v127, 0, v120, s3
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v78, v74, v129
.Ltmp15:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v120, 1, v126
	v_cmp_o_f32_e64 s3, v68, v68
	v_add3_u32 v74, v74, v125, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v31, v31, v127 :: v_dual_add_f32 v78, v132, v78
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v132, v76, v131
.Ltmp17:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v127
	v_mul_f32_e32 v21, v21, v127
	v_mul_f32_e32 v5, v5, v127
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v67, v67, v120, 0x7fff
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v80, v80, v132
.Ltmp19:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v132, 1, v93
	v_mov_b16_e32 v93.l, v68.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v30, v30, v127
	v_mul_f32_e32 v28, v28, v127
	v_mul_f32_e32 v23, v23, v127
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v66, v66, v132, 0x7fff
	v_mov_b16_e64 v132.h, v93.h
	v_mov_b16_e64 v132.l, v75.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v127
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s5
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v127
	v_dual_mul_f32 v7, v7, v127 :: v_dual_add_f32 v122, v78, v80
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v126, 1, v132
	v_and_b32_e32 v132, 1, v133
	v_and_b32_e32 v133, 1, v93
	v_mov_b16_e32 v93.l, v70.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v127
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v75, v75, v126, 0x7fff
	v_add3_u32 v76, v76, v132, 0x7fff
	v_add3_u32 v65, v68, v133, 0x7fff
	v_and_b32_e32 v68, 1, v93
	v_mov_b16_e32 v93.l, v72.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v11, v11, v127
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v65.l, 0x7fff, v67.h, s6
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s3
	v_add3_u32 v68, v70, v68, 0x7fff
	v_and_b32_e32 v70, 1, v93
	v_mov_b16_e64 v93.l, v128.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v13, v13, v127
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v120, v77, v79
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v123, 1, v123
	v_cndmask_b16 v125.l, 0x7fff, v76.h, s18
	v_permlanex16_b32 v76, v65, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v67.h, 0x7fff, v68.h, s7
	v_add3_u32 v68, v72, v70, 0x7fff
	v_and_b32_e32 v70, 1, v93
	v_mov_b16_e64 v93.l, v129.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v15, v15, v127
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v71, v71, v123, 0x7fff
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s4
	v_cndmask_b16 v67.l, 0x7fff, v69.h, s8
	v_cndmask_b16 v124.l, 0x7fff, v75.h, s16
	v_perm_b32 v75, v76, v65, v91
	v_cndmask_b16 v69.h, 0x7fff, v68.h, s9
	v_and_b32_e32 v68, 1, v93
	v_perm_b32 v76, v76, v65, v92
	v_add3_u32 v65, v128, v70, 0x7fff
	v_cndmask_b16 v69.l, 0x7fff, v71.h, s10
	v_cndmask_b16 v123.l, 0x7fff, v74.h, s14
	v_permlanex16_b32 v74, v66, s33, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v93.l, v130.h
	v_cndmask_b16 v71.h, 0x7fff, v65.h, s11
	v_add3_u32 v65, v129, v68, 0x7fff
	v_cndmask_b16 v71.l, 0x7fff, v73.h, s12
	v_perm_b32 v73, v74, v66, v91
	v_perm_b32 v74, v74, v66, v92
	v_permlanex16_b32 v66, v67, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v70, v69, s33, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v72, 1, v93
	v_mov_b16_e64 v93.l, v131.h
	v_cndmask_b16 v123.h, 0x7fff, v65.h, s13
	v_perm_b32 v77, v66, v67, v91
	v_perm_b32 v78, v66, v67, v92
	v_perm_b32 v79, v70, v69, v91
	v_and_b32_e32 v66, 1, v93
	v_permlanex16_b32 v67, v71, s33, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v68, v130, v72, 0x7fff
	v_perm_b32 v80, v70, v69, v92
	v_permlanex16_b32 v70, v123, s33, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v69, v131, v66, 0x7fff
	v_perm_b32 v65, v67, v71, v91
	v_cndmask_b16 v124.h, 0x7fff, v68.h, s15
	v_perm_b32 v66, v67, v71, v92
	v_perm_b32 v67, v70, v123, v91
	v_perm_b32 v68, v70, v123, v92
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v123.l, v81.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v123.h, v85.l
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
	ds_store_2addr_b32 v119, v123, v85 offset1:16
	ds_store_2addr_b32 v108, v81, v86 offset1:16
	ds_store_2addr_b32 v109, v82, v87 offset1:16
	ds_store_2addr_b32 v110, v83, v88 offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[81:84], v118
	ds_load_b128 v[85:88], v111
	ds_load_b128 v[132:135], v115
	ds_load_b128 v[128:131], v114
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v127
	v_mul_f32_e32 v26, v26, v127
	v_mul_f32_e32 v27, v27, v127
	v_mul_f32_e32 v29, v29, v127
	v_mul_f32_e32 v32, v32, v127
	v_mul_f32_e32 v18, v18, v127
	v_mul_f32_e32 v19, v19, v127
	v_mul_f32_e32 v20, v20, v127
	v_mul_f32_e32 v22, v22, v127
	v_mul_f32_e32 v24, v24, v127
	v_mul_f32_e32 v2, v2, v127
	v_mul_f32_e32 v4, v4, v127
	v_mul_f32_e32 v6, v6, v127
	v_mul_f32_e32 v8, v8, v127
	v_mul_f32_e32 v10, v10, v127
	v_mul_f32_e32 v12, v12, v127
	v_mul_f32_e32 v14, v14, v127
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[81:88], v[73:80], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[85:88], v111 offset:2048
	ds_load_b128 v[81:84], v118 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[128:135], v[73:80], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[128:131], v114 offset:2048
	ds_load_b128 v[132:135], v115 offset:2048
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v127
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v125.h, 0x7fff, v69.h, s17
	v_permlanex16_b32 v71, v124, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s3, s44, 32
	s_cmpk_lt_u32 s44, 0x7e0
	s_mov_b32 s44, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v69, v71, v124, v91
	v_perm_b32 v70, v71, v124, v92
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[81:88], v[73:80], v[1:8]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[85:88], v113
	ds_load_b128 v[81:84], v112
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[128:135], v[73:80], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[73:76], v118 offset:1024
	ds_load_b128 v[128:131], v118 offset:3072
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v118, v120, v122
	v_mov_b32_e32 v122, v95
	v_mov_b32_e32 v120, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v119, v118, s33, 0xfedcba98 op_sel:[1,0]
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v95, v118, v119
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v72, v125, s33, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v95, v122, v127
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v71, v72, v125, v91
	v_perm_b32 v72, v72, v125, v92
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[81:88], v[65:72], v[25:32]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[81:84], v112 offset:2048
	ds_load_b128 v[77:80], v116
	ds_load_b128 v[85:88], v113 offset:2048
	ds_load_b128 v[132:135], v116 offset:2048
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
	v_div_scale_f32 v36, null, v95, v95, v25
	v_div_scale_f32 v37, null, v95, v95, v26
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v0, 1, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v38, v36
	v_div_scale_f32 v40, vcc_lo, v25, v95, v25
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v41, s2, v26, v95, v26
	v_div_scale_f32 v45, null, v95, v95, v28
	v_div_scale_f32 v42, null, v95, v95, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v36, v38, 1.0
	v_rcp_f32_e32 v49, v45
	v_div_scale_f32 v46, null, v95, v95, v29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v37, v39, 1.0
	v_fmac_f32_e32 v38, v33, v38
	v_rcp_f32_e32 v44, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v50, v46
	v_div_scale_f32 v43, s3, v27, v95, v27
	v_dual_fmac_f32 v39, v34, v39 :: v_dual_and_b32 v34, 8, v0
	v_mul_f32_e32 v47, v40, v38
	v_fma_f32 v52, -v45, v49, 1.0
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s30, 0x7ffffffe
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v0, -v42, v44, 1.0
	v_fma_f32 v35, -v36, v47, v40
	v_mul_f32_e32 v48, v41, v39
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v33, 32, v34
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v49, v52, v49
	v_div_scale_f32 v52, null, v95, v95, v31
	v_fmac_f32_e32 v47, v35, v38
	v_fma_f32 v51, -v37, v48, v41
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v35, 16, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v36, v47, v40
	v_fmac_f32_e32 v48, v51, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v38, v47
	v_fma_f32 v37, -v37, v48, v41
	v_div_scale_f32 v47, null, v95, v95, v30
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v41, -v46, v50, 1.0
	v_div_fmas_f32 v37, v37, v39, v48
	v_rcp_f32_e32 v39, v47
	v_div_scale_f32 v38, s4, v28, v95, v28
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v26, v37, v95, v26
	v_div_fixup_f32 v36, v36, v95, v25
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s2, 0, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v48, -v47, v39, 1.0
	v_fmac_f32_e32 v50, v41, v50
	v_div_scale_f32 v41, s5, v29, v95, v29
	v_fmac_f32_e32 v39, v48, v39
	v_fmac_f32_e32 v44, v0, v44
	v_div_scale_f32 v48, s3, v30, v95, v30
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v0, 48, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v51, v43, v44
	v_fma_f32 v40, -v42, v51, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v51, v40, v44 :: v_dual_mul_f32 v40, v38, v49
	v_fma_f32 v37, -v42, v51, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v45, v40, v38
	v_dual_mul_f32 v43, v41, v50 :: v_dual_fmac_f32 v40, v42, v49
	v_rcp_f32_e32 v42, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v37, v37, v44, v51
	v_fma_f32 v44, -v46, v43, v41
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v25, v37, v95, v27
	v_fma_f32 v27, -v45, v40, v38
	v_fmac_f32_e32 v43, v44, v50
	v_div_scale_f32 v45, s4, v31, v95, v31
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v38, -v52, v42, 1.0
	v_mul_f32_e32 v37, v48, v39
	v_div_fmas_f32 v27, v27, v49, v40
	v_fma_f32 v40, -v46, v43, v41
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v42, v38, v42
	v_div_scale_f32 v44, null, v95, v95, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v40, v40, v50, v43
	v_fma_f32 v41, -v47, v37, v48
	v_mul_f32_e32 v43, v45, v42
	v_div_scale_f32 v46, null, v95, v95, v17
	v_div_fixup_f32 v28, v27, v95, v28
	v_div_fixup_f32 v27, v40, v95, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v40, -v52, v43, v45
	v_rcp_f32_e32 v38, v44
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s2
	v_cndmask_b32_e64 v25, 0, v25, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v40, v42
	v_div_scale_f32 v40, s3, v17, v95, v17
	v_fmac_f32_e32 v37, v41, v39
	v_rcp_f32_e32 v41, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v44, v38, 1.0
	v_fma_f32 v29, -v47, v37, v48
	v_div_scale_f32 v47, s5, v32, v95, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v27, v27
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v48, -v46, v41, 1.0
	v_fmac_f32_e32 v38, v49, v38
	v_div_scale_f32 v49, null, v95, v95, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, null, v95, v95, v19
	v_mul_f32_e32 v50, v40, v41
	v_div_fmas_f32 v29, v29, v39, v37
	v_rcp_f32_e32 v39, v49
	v_mul_f32_e32 v37, v47, v38
	v_rcp_f32_e32 v51, v48
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v30, v29, v95, v30
	v_fma_f32 v29, -v52, v43, v45
	v_fma_f32 v45, -v44, v37, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v52, -v49, v39, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v29, v29, v42, v43
	v_fma_f32 v42, -v46, v50, v40
	v_div_scale_f32 v43, s4, v18, v95, v18
	v_fmac_f32_e32 v39, v52, v39
	v_fmac_f32_e32 v37, v45, v38
	v_fma_f32 v45, -v48, v51, 1.0
	v_div_fixup_f32 v29, v29, v95, v31
	v_fmac_f32_e32 v50, v42, v41
	v_mul_f32_e32 v42, v43, v39
	v_fma_f32 v31, -v44, v37, v47
	v_fmac_f32_e32 v51, v45, v51
	v_div_scale_f32 v45, null, v95, v95, v20
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v44, s6, v19, v95, v19
	v_div_fmas_f32 v31, v31, v38, v37
	v_fma_f32 v37, -v46, v50, v40
	v_rcp_f32_e32 v40, v45
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v38, -v49, v42, v43
	v_div_scale_f32 v47, null, v95, v95, v21
	v_div_fmas_f32 v37, v37, v41, v50
	v_mul_f32_e32 v46, v44, v51
	v_div_fixup_f32 v31, v31, v95, v32
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v45, v40, 1.0
	v_fma_f32 v41, -v48, v46, v44
	v_div_fixup_f32 v17, v37, v95, v17
	v_div_scale_f32 v37, s3, v20, v95, v20
	v_fmac_f32_e32 v40, v50, v40
	v_fmac_f32_e32 v42, v38, v39
	v_rcp_f32_e32 v38, v47
	v_fmac_f32_e32 v46, v41, v51
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v32, -v49, v42, v43
	v_div_scale_f32 v43, null, v95, v95, v22
	v_div_fmas_f32 v32, v32, v39, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v47, v38, 1.0
	v_fma_f32 v39, -v48, v46, v44
	v_div_scale_f32 v44, s4, v21, v95, v21
	v_div_scale_f32 v48, null, v95, v95, v23
	v_fmac_f32_e32 v38, v41, v38
	v_rcp_f32_e32 v41, v43
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v32, v32, v95, v18
	v_div_fmas_f32 v39, v39, v51, v46
	v_rcp_f32_e32 v51, v48
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v18, v39, v95, v19
	v_div_scale_f32 v39, s5, v22, v95, v22
	v_fma_f32 v50, -v43, v41, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v41, v50, v41 :: v_dual_mul_f32 v42, v37, v40
	v_mul_f32_e32 v49, v44, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v48, v51, 1.0
	v_fma_f32 v46, -v45, v42, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v19, -v47, v49, v44
	v_fmac_f32_e32 v51, v50, v51
	v_div_scale_f32 v50, s6, v23, v95, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v46, v40
	v_div_scale_f32 v46, null, v95, v95, v24
	v_fmac_f32_e32 v49, v19, v38
	v_fma_f32 v37, -v45, v42, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v52, v46
	v_div_fmas_f32 v19, v37, v40, v42
	v_mul_f32_e32 v42, v50, v51
	v_fma_f32 v37, -v47, v49, v44
	v_div_scale_f32 v47, null, v95, v95, v1
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v44, -v46, v52, 1.0
	v_mul_f32_e32 v45, v39, v41
	v_div_fmas_f32 v38, v37, v38, v49
	v_fma_f32 v49, -v48, v42, v50
	v_div_fixup_f32 v37, v19, v95, v20
	v_fmac_f32_e32 v52, v44, v52
	v_fma_f32 v40, -v43, v45, v39
	v_div_fixup_f32 v19, v38, v95, v21
	v_fmac_f32_e32 v42, v49, v51
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v44, s3, v24, v95, v24
	v_fmac_f32_e32 v45, v40, v41
	v_rcp_f32_e32 v40, v47
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v43, v45, v39
	v_div_scale_f32 v39, null, v95, v95, v2
	v_div_fmas_f32 v20, v20, v41, v45
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v38, -v47, v40, 1.0
	v_fma_f32 v41, -v48, v42, v50
	v_div_scale_f32 v48, null, v95, v95, v3
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v40, v38, v40
	v_rcp_f32_e32 v38, v39
	v_div_scale_f32 v45, s4, v1, v95, v1
	v_div_fixup_f32 v22, v20, v95, v22
	v_div_scale_f32 v50, null, v95, v95, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v39, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v38, v49, v38
	v_div_fmas_f32 v41, v41, v51, v42
	v_rcp_f32_e32 v42, v48
	v_mul_f32_e32 v21, v44, v52
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v49, null, v95, v95, v4
	v_div_fixup_f32 v20, v41, v95, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v43, -v46, v21, v44
	v_rcp_f32_e32 v51, v50
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v21, v43, v52
	v_fma_f32 v23, -v46, v21, v44
	v_div_scale_f32 v44, s5, v2, v95, v2
	v_fma_f32 v46, -v48, v42, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v23, v52, v21
	v_mul_f32_e32 v23, v44, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v43, v45, v40 :: v_dual_fmac_f32 v42, v46, v42
	v_div_scale_f32 v46, s3, v3, v95, v3
	v_div_fixup_f32 v21, v21, v95, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v47, v43, v45
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v41, v40
	v_rcp_f32_e32 v41, v49
	v_fma_f32 v24, -v47, v43, v45
	v_fma_f32 v45, -v39, v23, v44
	v_mul_f32_e32 v47, v46, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v24, v24, v40, v43
	v_fma_f32 v52, -v49, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v23, v45, v38
	v_fma_f32 v40, -v48, v47, v46
	v_div_scale_f32 v43, s4, v4, v95, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v41, v52, v41
	v_fma_f32 v45, -v50, v51, 1.0
	v_div_fixup_f32 v1, v24, v95, v1
	v_fma_f32 v24, -v39, v23, v44
	v_fmac_f32_e32 v47, v40, v42
	v_mul_f32_e32 v39, v43, v41
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v51, v45, v51
	v_div_scale_f32 v40, s6, v5, v95, v5
	v_div_scale_f32 v44, null, v95, v95, v6
	v_div_fmas_f32 v23, v24, v38, v23
	v_fma_f32 v24, -v48, v47, v46
	v_fma_f32 v38, -v49, v39, v43
	v_div_scale_f32 v48, null, v95, v95, v7
	v_rcp_f32_e32 v45, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v46, v40, v51 :: v_dual_fmac_f32 v39, v38, v41
	v_rcp_f32_e32 v38, v48
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v2, v23, v95, v2
	v_div_fmas_f32 v24, v24, v42, v47
	v_fma_f32 v42, -v50, v46, v40
	v_fma_f32 v23, -v49, v39, v43
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v47, -v44, v45, 1.0
	v_div_fixup_f32 v3, v24, v95, v3
	v_fmac_f32_e32 v46, v42, v51
	v_fma_f32 v42, -v48, v38, 1.0
	v_div_scale_f32 v24, s3, v6, v95, v6
	v_fmac_f32_e32 v45, v47, v45
	v_div_scale_f32 v49, null, v95, v95, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v38, v42, v38
	v_div_fmas_f32 v23, v23, v41, v39
	v_fma_f32 v39, -v50, v46, v40
	s_mov_b32 vcc_lo, s6
	v_mul_f32_e32 v40, v24, v45
	v_div_scale_f32 v41, null, v95, v95, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v51, v46
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v46, -v44, v40, v24
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v43, v41
	v_div_scale_f32 v42, s4, v7, v95, v7
	v_div_fixup_f32 v5, v39, v95, v5
	v_rcp_f32_e32 v39, v49
	v_fmac_f32_e32 v40, v46, v45
	v_div_fixup_f32 v4, v23, v95, v4
	v_div_scale_f32 v51, null, v95, v95, v11
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v24, -v44, v40, v24
	v_fma_f32 v46, -v41, v43, 1.0
	v_div_scale_f32 v44, null, v95, v95, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v50, -v49, v39, 1.0
	v_div_fmas_f32 v24, v24, v45, v40
	v_div_scale_f32 v45, s3, v9, v95, v9
	v_fmac_f32_e32 v43, v46, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v39, v50, v39
	v_rcp_f32_e32 v46, v44
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v53, v51
	v_div_fixup_f32 v6, v24, v95, v6
	v_dual_mul_f32 v52, v45, v39 :: v_dual_mul_f32 v47, v42, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s2
	v_cndmask_b32_e64 v4, 0, v4, s2
	v_cndmask_b32_e64 v3, 0, v3, s2
	v_cndmask_b32_e64 v5, 0, v5, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v23, -v48, v47, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v47, v23, v38
	v_div_scale_f32 v23, s5, v8, v95, v8
	v_fma_f32 v40, -v48, v47, v42
	v_fma_f32 v48, -v44, v46, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v42, v23, v43
	v_div_fmas_f32 v38, v40, v38, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s6, v10, v95, v10
	v_fma_f32 v50, -v41, v42, v23
	v_fma_f32 v40, -v49, v52, v45
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v47, v48, v46
	v_div_fixup_f32 v7, v38, v95, v7
	v_fmac_f32_e32 v42, v50, v43
	v_fmac_f32_e32 v52, v40, v39
	v_fma_f32 v38, -v51, v53, 1.0
	v_fma_f32 v24, -v44, v47, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v23, -v41, v42, v23
	v_fma_f32 v40, -v49, v52, v45
	v_fmac_f32_e32 v53, v38, v53
	v_fmac_f32_e32 v47, v24, v46
	v_div_scale_f32 v24, s4, v11, v95, v11
	v_div_fmas_f32 v23, v23, v43, v42
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v42, -v44, v47, v48
	v_div_fmas_f32 v39, v40, v39, v52
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v38, null, v95, v95, v12
	v_div_fmas_f32 v42, v42, v46, v47
	v_mul_f32_e32 v40, v24, v53
	v_div_scale_f32 v43, null, v95, v95, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v41, v38
	v_div_fixup_f32 v10, v42, v95, v10
	v_div_scale_f32 v42, null, v95, v95, v14
	v_fma_f32 v44, -v51, v40, v24
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v8, v23, v95, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v46, v42
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v40, v44, v53
	v_fma_f32 v44, -v38, v41, 1.0
	v_div_fixup_f32 v9, v39, v95, v9
	v_div_scale_f32 v47, s4, v13, v95, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v23, -v51, v40, v24
	v_div_scale_f32 v24, s3, v12, v95, v12
	v_fma_f32 v50, -v42, v46, 1.0
	v_fmac_f32_e32 v41, v44, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v23, v23, v53, v40
	v_fma_f32 v39, -v43, v45, 1.0
	v_div_scale_f32 v44, null, v95, v95, v15
	v_fmac_f32_e32 v46, v50, v46
	v_mul_f32_e32 v40, v24, v41
	v_div_scale_f32 v50, s5, v14, v95, v14
	v_fmac_f32_e32 v45, v39, v45
	v_rcp_f32_e32 v39, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v38, v40, v24
	v_div_scale_f32 v48, null, v95, v95, v16
	v_div_fixup_f32 v11, v23, v95, v11
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v40, v49, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v51, v48
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s31, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v44, v39, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v24, -v38, v40, v24
	v_dual_mul_f32 v38, v50, v46 :: v_dual_mul_f32 v23, v47, v45
	v_fmac_f32_e32 v39, v49, v39
	v_div_scale_f32 v49, s6, v15, v95, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v52, -v43, v23, v47
	v_fma_f32 v53, -v48, v51, 1.0
	v_div_fmas_f32 v24, v24, v41, v40
	v_fma_f32 v41, -v42, v38, v50
	s_mov_b32 vcc_lo, s4
	v_dual_fmac_f32 v23, v52, v45 :: v_dual_mul_f32 v52, v49, v39
	v_fmac_f32_e32 v51, v53, v51
	v_div_scale_f32 v53, s7, v16, v95, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v43, v23, v47
	v_fma_f32 v43, -v44, v52, v49
	v_fmac_f32_e32 v38, v41, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v47, v53, v51
	v_div_fixup_f32 v12, v24, v95, v12
	v_div_fmas_f32 v23, v40, v45, v23
	v_fmac_f32_e32 v52, v43, v39
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v40, -v48, v47, v53
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s31, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v13, v23, v95, v13
	v_fma_f32 v23, -v42, v38, v50
	v_fma_f32 v24, -v44, v52, v49
	v_fmac_f32_e32 v47, v40, v51
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s31, v34
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v23, v23, v46, v38
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v38, -v48, v47, v53
	v_div_fmas_f32 v24, v24, v39, v52
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v28, v28
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v14, v23, v95, v14
	v_div_fmas_f32 v38, v38, v51, v47
	v_div_fixup_f32 v15, v24, v95, v15
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v26, s2
	v_cndmask_b32_e64 v26, 0, v36, s2
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v36.h, v93.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v16, v38, v95, v16
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s31, v35
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v93.l, v24.h
	v_mov_b16_e32 v36.l, v26.h
	v_cmp_o_f32_e64 s6, v24, v24
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v23, s19, v94
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v38, 1, v93
	v_and_b32_e32 v36, 1, v36
	v_mov_b16_e32 v93.l, v28.h
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v23, s31, v23
	s_mov_b32 s31, 0x31027000
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v38, v24, v38, 0x7fff
	v_add3_u32 v24, v26, v36, 0x7fff
	v_mov_b16_e32 v36.l, v25.h
	v_mov_b16_e32 v36.h, v93.h
	v_and_b32_e32 v39, 1, v93
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s6
	v_cmp_o_f32_e64 s6, v26, v26
	v_mov_b16_e32 v93.l, v30.h
	v_and_b32_e32 v26, 1, v36
	v_add3_u32 v36, v28, v39, 0x7fff
	v_mov_b16_e32 v39.l, v27.h
	v_mov_b16_e32 v39.h, v93.h
	v_cndmask_b16 v38.l, 0x7fff, v24.h, s6
	v_add3_u32 v24, v25, v26, 0x7fff
	v_cndmask_b16 v28.h, 0x7fff, v36.h, s7
	v_and_b32_e32 v36, 1, v93
	v_and_b32_e32 v26, 1, v39
	v_cmp_o_f32_e64 s6, v25, v25
	v_cmp_o_f32_e64 s7, v30, v30
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v0, v23, v0, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v25, v27, v26, 0x7fff
	.loc	1 1044 19 is_stmt 1             ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v31, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v31, v30, v36, 0x7fff
	v_mov_b16_e32 v36.l, v29.h
	v_mov_b16_e32 v36.h, v93.h
	v_cndmask_b16 v28.l, 0x7fff, v24.h, s6
	v_mov_b16_e32 v93.l, v26.h
	v_cndmask_b16 v27.h, 0x7fff, v31.h, s7
	v_cndmask_b16 v27.l, 0x7fff, v25.h, s8
	v_and_b32_e32 v24, 1, v36
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v32, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v30, 1, v93
	v_cmp_o_f32_e64 s7, v29, v29
	v_cmp_o_f32_e64 s6, v26, v26
	v_add3_u32 v24, v29, v24, 0x7fff
	v_mov_b16_e32 v93.l, v25.h
	v_add3_u32 v30, v26, v30, 0x7fff
	v_mov_b16_e32 v26.l, v17.h
	v_mov_b16_e32 v26.h, v93.h
	v_cndmask_b16 v29.l, 0x7fff, v24.h, s7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v37, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v29.h, 0x7fff, v30.h, s6
	v_and_b32_e32 v30, 1, v93
	v_and_b32_e32 v26, 1, v26
	v_cmp_o_f32_e64 s6, v25, v25
	v_mov_b16_e32 v93.l, v24.h
	v_cmp_o_f32_e64 s7, v24, v24
	v_add3_u32 v30, v25, v30, 0x7fff
	v_add3_u32 v25, v17, v26, 0x7fff
	v_mov_b16_e32 v26.l, v18.h
	v_mov_b16_e32 v26.h, v93.h
	v_and_b32_e32 v31, 1, v93
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s6
	v_cmp_o_f32_e64 s6, v17, v17
	v_mov_b16_e32 v93.l, v22.h
	v_and_b32_e32 v17, 1, v26
	v_add3_u32 v26, v24, v31, 0x7fff
	v_mov_b16_e32 v31.l, v19.h
	v_mov_b16_e32 v31.h, v93.h
	v_cndmask_b16 v30.l, 0x7fff, v25.h, s6
	v_add3_u32 v17, v18, v17, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s7
	v_and_b32_e32 v26, 1, v93
	v_and_b32_e32 v24, 1, v31
	v_cmp_o_f32_e64 s6, v18, v18
	v_mov_b16_e32 v93.l, v21.h
	v_cmp_o_f32_e64 s7, v22, v22
	v_cmp_o_f32_e64 s8, v19, v19
	v_add3_u32 v18, v19, v24, 0x7fff
	v_add3_u32 v24, v22, v26, 0x7fff
	v_mov_b16_e32 v26.l, v20.h
	v_mov_b16_e32 v26.h, v93.h
	v_cndmask_b16 v25.l, 0x7fff, v17.h, s6
	v_and_b32_e32 v22, 1, v93
	v_cndmask_b16 v19.h, 0x7fff, v24.h, s7
	v_mov_b16_e32 v93.l, v2.h
	v_and_b32_e32 v17, 1, v26
	v_cmp_o_f32_e64 s7, v20, v20
	v_cndmask_b16 v19.l, 0x7fff, v18.h, s8
	v_add3_u32 v18, v21, v22, 0x7fff
	v_cmp_o_f32_e64 s6, v21, v21
	v_add3_u32 v17, v20, v17, 0x7fff
	v_mov_b16_e32 v20.l, v1.h
	v_mov_b16_e32 v20.h, v93.h
	v_and_b32_e32 v21, 1, v93
	v_mov_b16_e32 v93.l, v4.h
	v_cndmask_b16 v18.l, 0x7fff, v17.h, s7
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s6
	v_and_b32_e32 v17, 1, v20
	v_add3_u32 v20, v2, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v2, v2
	v_and_b32_e32 v21, 1, v93
	v_cmp_o_f32_e64 s7, v4, v4
	v_add3_u32 v2, v1, v17, 0x7fff
	v_mov_b16_e32 v17.l, v3.h
	v_mov_b16_e32 v17.h, v93.h
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s6
	v_cmp_o_f32_e64 s6, v1, v1
	v_mov_b16_e32 v93.l, v6.h
	v_cmp_o_f32_e64 s8, v5, v5
	v_and_b32_e32 v1, 1, v17
	v_add3_u32 v17, v4, v21, 0x7fff
	v_mov_b16_e32 v21.l, v5.h
	v_mov_b16_e32 v21.h, v93.h
	v_cndmask_b16 v20.l, 0x7fff, v2.h, s6
	v_add3_u32 v1, v3, v1, 0x7fff
	v_cndmask_b16 v4.h, 0x7fff, v17.h, s7
	v_and_b32_e32 v17, 1, v93
	v_and_b32_e32 v2, 1, v21
	v_cmp_o_f32_e64 s6, v3, v3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v8, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v6, v6
	v_add3_u32 v8, v6, v17, 0x7fff
	v_add3_u32 v2, v5, v2, 0x7fff
	v_mov_b16_e32 v17.l, v7.h
	v_mov_b16_e32 v17.h, v93.h
	v_mov_b16_e32 v93.l, v3.h
	v_cndmask_b16 v4.l, 0x7fff, v1.h, s6
	v_cndmask_b16 v5.l, 0x7fff, v2.h, s8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v10, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v1, 1, v17
	v_cndmask_b16 v5.h, 0x7fff, v8.h, s7
	v_and_b32_e32 v6, 1, v93
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v9, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v93.l, v2.h
	v_add3_u32 v1, v7, v1, 0x7fff
	v_cmp_o_f32_e64 s6, v3, v3
	v_add3_u32 v6, v3, v6, 0x7fff
	v_cmp_o_f32_e64 s7, v7, v7
	v_mov_b16_e32 v3.l, v8.h
	v_mov_b16_e32 v3.h, v93.h
	v_and_b32_e32 v7, 1, v93
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v12, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s6
	v_cmp_o_f32_e64 s6, v2, v2
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v7, v2, v7, 0x7fff
	v_mov_b16_e32 v93.l, v9.h
	v_cndmask_b16 v6.l, 0x7fff, v1.h, s7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v11, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v3, v8, v3, 0x7fff
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s6
	v_cmp_o_f32_e64 s6, v8, v8
	v_and_b32_e32 v8, 1, v93
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v14, s2
	v_cndmask_b32_e64 v11, 0, v13, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v2.l, v1.h
	v_mov_b16_e32 v2.h, v93.h
	v_cndmask_b16 v7.l, 0x7fff, v3.h, s6
	v_add3_u32 v3, v9, v8, 0x7fff
	v_mov_b16_e32 v93.l, v10.h
	v_mov_b16_e32 v8.l, v11.h
	v_mov_b16_e32 v8.h, v93.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v15, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v9, v9
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v16, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v2, 1, v2
	v_and_b32_e32 v13, 1, v93
	v_and_b32_e32 v8, 1, v8
	v_mov_b16_e32 v14.l, v12.h
	v_mov_b16_e32 v14.h, v93.h
	v_mov_b16_e32 v93.l, v9.h
	v_add3_u32 v2, v1, v2, 0x7fff
	v_cmp_o_f32_e64 s2, v1, v1
	v_add3_u32 v1, v11, v8, 0x7fff
	v_and_b32_e32 v8, 1, v14
	v_and_b32_e32 v14, 1, v93
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s6
	v_add3_u32 v13, v10, v13, 0x7fff
	v_cmp_o_f32_e64 s6, v10, v10
	v_cmp_o_f32_e64 s7, v11, v11
	v_add3_u32 v8, v12, v8, 0x7fff
	v_add3_u32 v10, v9, v14, 0x7fff
	v_cmp_o_f32_e64 s8, v9, v9
	v_cmp_o_f32_e64 s9, v12, v12
	v_cndmask_b16 v3.l, 0x7fff, v2.h, s2
	v_cndmask_b16 v2.h, 0x7fff, v13.h, s6
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s7
	v_cndmask_b16 v1.h, 0x7fff, v10.h, s8
	v_cndmask_b16 v1.l, 0x7fff, v8.h, s9
	v_cndmask_b32_e64 v9, v38, v27, s1
	v_cndmask_b32_e64 v11, v28, v29, s1
	v_cndmask_b32_e64 v13, v30, v19, s1
	v_cndmask_b32_e64 v14, v18, v25, s1
	v_cndmask_b32_e64 v15, v25, v18, s1
	v_cndmask_b32_e64 v16, v5, v20, s1
	v_cndmask_b32_e64 v5, v20, v5, s1
	v_cndmask_b32_e64 v17, v6, v4, s1
	v_cndmask_b32_e64 v4, v4, v6, s1
	v_cndmask_b32_e64 v18, v2, v7, s1
	v_cndmask_b32_e64 v2, v7, v2, s1
	v_cndmask_b32_e64 v12, v19, v30, s1
	v_cndmask_b32_e64 v19, v1, v3, s1
	v_cndmask_b32_e64 v1, v3, v1, s1
	s_mov_b32 s2, 0x76543210
	v_cndmask_b32_e64 v8, v27, v38, s1
	v_cndmask_b32_e64 v10, v29, v28, s1
	v_permlanex16_b32 v3, v9, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v11, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v13, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v15, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v5, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v4, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v2, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v1, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v1, v3, v8, v91
	v_perm_b32 v2, v3, v8, v92
	v_perm_b32 v3, v6, v10, v91
	v_perm_b32 v4, v6, v10, v92
	v_perm_b32 v5, v7, v12, v91
	v_perm_b32 v6, v7, v12, v92
	v_perm_b32 v7, v9, v14, v91
	v_perm_b32 v8, v9, v14, v92
	v_perm_b32 v9, v11, v16, v91
	v_perm_b32 v10, v11, v16, v92
	v_perm_b32 v11, v13, v17, v91
	v_perm_b32 v12, v13, v17, v92
	v_perm_b32 v13, v15, v18, v91
	v_perm_b32 v14, v15, v18, v92
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v18, v23, v35, 1
	v_add_lshl_u32 v17, v23, v34, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v15, v20, v19, v91
	v_perm_b32 v16, v20, v19, v92
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v23, v33, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s5
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v17, 0x80000000, v17, s1
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[1:4], v17, s[28:31], 0 offen
	buffer_store_b128 v[5:8], v18, s[28:31], 0 offen
	buffer_store_b128 v[9:12], v19, s[28:31], 0 offen
	buffer_store_b128 v[13:16], v0, s[28:31], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp26:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_vgpr, 144
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8752
; TotalNumSgprs: 47
; NumVgprs: 144
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 47
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
	.quad	.Ltmp25-.Lfunc_begin0
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
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.kd
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
