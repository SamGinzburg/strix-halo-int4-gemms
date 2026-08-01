	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[28:29], s[0:1], 0x5c
	v_dual_mov_b32 v39, 0x7632 :: v_dual_and_b32 v16, 7, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v37, 3, v0
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[24:25], s[0:1], 0x10
	v_dual_mov_b32 v38, 0x5410 :: v_dual_lshlrev_b32 v15, 3, v16
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s19, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s8, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s19, v37
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s18, s19, s8
	s_clause 0x1
	s_load_b32 s2, s[0:1], 0x64
	s_load_b64 s[16:17], s[0:1], 0x38
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x800, v1
	v_dual_mov_b32 v128, 0xff800000 :: v_dual_mov_b32 v25, 0
	v_and_b32_e32 v43, 16, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v40, 15, v0
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[105:106], null, s28, v37, v[15:16]
	s_mul_i32 s1, s28, s18
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s28, v15
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s21, s5, 0xffff
	s_mov_b32 s20, s4
	v_dual_mov_b32 v26, v25 :: v_dual_and_b32 v41, 0x60, v0
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[106:107], null, s28, 48, v[105:106]
	v_lshl_add_u32 v111, s28, 4, v105
	v_lshl_add_u32 v112, s28, 5, v105
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v1, v105, s1, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s0, s0, vcc_lo
	v_dual_mov_b32 v29, v25 :: v_dual_lshlrev_b32 v42, 1, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v2, v111, s1, 1
	v_add_lshl_u32 v3, v112, s1, 1
	v_add_lshl_u32 v4, v106, s1, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_mov_b32_e32 v30, v25
	v_cndmask_b32_e64 v5, 0x80000000, v2, s0
	v_cndmask_b32_e64 v9, 0x80000000, v3, s0
	v_cndmask_b32_e64 v10, 0x80000000, v4, s0
	s_clause 0x3
	buffer_load_b128 v[1:4], v1, s[20:23], 0 offen
	buffer_load_b128 v[5:8], v5, s[20:23], 0 offen
	buffer_load_b128 v[11:14], v9, s[20:23], 0 offen
	buffer_load_b128 v[33:36], v10, s[20:23], 0 offen
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v28, v25 :: v_dual_lshlrev_b32 v113, 4, v0
	s_lshr_b32 s0, s0, 28
	v_mov_b32_e32 v27, v25
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v31, v25 :: v_dual_and_b32 v42, 0x70, v42
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, 0xfff0
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s0, s0, 10
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	.loc	1 852 32                        ; attention.py:852:32
	s_and_b32 s3, s0, 0xffffc000
	v_cmp_eq_u32_e64 s0, 0, v43
	v_dual_mov_b32 v32, v25 :: v_dual_lshlrev_b32 v45, 7, v40
	v_dual_mov_b32 v17, v25 :: v_dual_lshlrev_b32 v16, 4, v16
	v_mov_b32_e32 v18, v25
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v44, 1, v41
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v41, 6, v41
	v_cndmask_b32_e64 v38, 0x1054, v38, s0
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s4, s1, 0x10007
	v_lshl_add_u32 v114, v40, 1, 0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v110, v44, v40
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v40, v113, v42
	v_or3_b32 v41, v45, v41, v16
	v_or_b32_e32 v115, v16, v45
	v_cndmask_b32_e64 v16, 0x3276, v39, s0
	v_lshl_or_b32 v38, v38, 8, v38
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s1, s1, s4
	v_dual_mov_b32 v19, v25 :: v_dual_add_nc_u32 v116, 0, v40
	s_bfe_i32 s0, s1, 0x80000
	v_dual_mov_b32 v21, v25 :: v_dual_add_nc_u32 v40, 0, v41
	v_dual_mov_b32 v23, v25 :: v_dual_and_b32 v38, 0x540054, v38
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v39, s19, v110
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v42, v41, 16, 0
	v_xad_u32 v43, v41, 32, 0
	v_xad_u32 v45, v41, 48, 0
	v_xad_u32 v49, v41, 64, 0
	v_xad_u32 v53, 0x50, v41, 0
	v_xad_u32 v57, 0x60, v41, 0
	v_xad_u32 v61, 0x70, v41, 0
	v_xor_b32_e32 v41, 16, v115
	v_xor_b32_e32 v44, 32, v115
	v_xor_b32_e32 v46, 48, v115
	v_xor_b32_e32 v47, 64, v115
	v_xor_b32_e32 v48, 0x50, v115
	v_xor_b32_e32 v50, 0x60, v115
	v_xor_b32_e32 v51, 0x70, v115
	v_lshl_or_b32 v16, v16, 8, v16
	.loc	1 758 19                        ; attention.py:758:19
	s_sext_i32_i16 s0, s0
	v_dual_mov_b32 v20, v25 :: v_dual_add_nc_u32 v117, 0, v41
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s0, s0, 10
	v_dual_mov_b32 v22, v25 :: v_dual_add_nc_u32 v119, 0, v46
	v_dual_mov_b32 v24, v25 :: v_dual_add_nc_u32 v121, 0, v48
	v_dual_mov_b32 v10, v25 :: v_dual_add_nc_u32 v123, 0, v51
	s_and_b32 s30, s0, 0xfffff800
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s29, v15
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[107:108], null, s29, v37, v[15:16]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x800, v39
	v_lshl_or_b32 v15, v38, 4, v38
	v_add_nc_u32_e32 v118, 0, v44
	v_add_nc_u32_e32 v120, 0, v47
	v_dual_mov_b32 v9, v25 :: v_dual_add_nc_u32 v122, 0, v50
	v_and_b32_e32 v16, 0x760076, v16
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[108:109], null, s29, 48, v[107:108]
	v_lshl_add_u32 v124, s29, 4, v107
	v_lshl_add_u32 v125, s29, 5, v107
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v16, v16, 4, v16
	v_and_b32_e32 v126, 0x5040504, v15
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v109, v25
	s_mov_b32 s8, 0
	v_and_b32_e32 v127, 0x7060706, v16
	v_mov_b32_e32 v16, v25
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s19, s2, 0x3fb8aa3b
	s_mov_b32 s5, 0x76543210
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_and_b32 s21, s7, 0xffff
	s_and_b32 s25, s25, 0xffff
	.loc	1 852 32                        ; attention.py:852:32
	s_add_i32 s30, s30, s3
	s_mov_b32 s20, s6
	s_mov_b32 s6, s8
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v116, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v116, v[5:8] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v116, v[11:14] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v116, v[33:36] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v40
	ds_load_b128 v[37:40], v42
	ds_load_b128 v[41:44], v43
	ds_load_b128 v[45:48], v45
	ds_load_b128 v[49:52], v49
	ds_load_b128 v[53:56], v53
	ds_load_b128 v[57:60], v57
	ds_load_b128 v[61:64], v61
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s2, s6, s30
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v72, s15 :: v_dual_add_nc_u32 v97, 0, v115
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s3, s2, s28
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v71, s14 :: v_dual_mov_b32 v70, s13
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v73, s3, v105, 1
	v_add_lshl_u32 v74, s3, v111, 1
	v_add_lshl_u32 v75, s3, v112, 1
	v_add_lshl_u32 v76, s3, v106, 1
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v69, s12 :: v_dual_mov_b32 v68, s11
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	v_cndmask_b32_e32 v77, 0x80000000, v74, vcc_lo
	v_cndmask_b32_e32 v81, 0x80000000, v75, vcc_lo
	v_cndmask_b32_e32 v85, 0x80000000, v76, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[73:76], v73, s[20:23], 0 offen
	buffer_load_b128 v[77:80], v77, s[20:23], 0 offen
	buffer_load_b128 v[81:84], v81, s[20:23], 0 offen
	buffer_load_b128 v[85:88], v85, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v67, s10 :: v_dual_mov_b32 v66, s9
	v_mov_b32_e32 v65, s8
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s2, s2, s29
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v116, v[73:76]
	s_waitcnt vmcnt(2)
	ds_store_b128 v116, v[77:80] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v116, v[81:84] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v116, v[85:88] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[77:80], v117
	ds_load_b128 v[73:76], v97
	ds_load_b128 v[81:84], v97 offset:2048
	ds_load_b128 v[85:88], v117 offset:2048
	ds_load_b128 v[93:96], v117 offset:4096
	ds_load_b128 v[89:92], v97 offset:4096
	ds_load_b128 v[97:100], v97 offset:6144
	ds_load_b128 v[101:104], v117 offset:6144
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v161, s2, v107, 1
	v_add_lshl_u32 v162, s2, v124, 1
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[129:136], v[73:80], v[33:40], v[65:72]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[81:88], v[33:40], v[65:72]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[145:152], v[89:96], v[33:40], v[65:72]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[153:160], v[97:104], v[33:40], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[69:72], v119
	ds_load_b128 v[65:68], v118
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v101, 0, v113
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[129:136], v[65:72], v[41:48], v[129:136]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v118 offset:2048
	ds_load_b128 v[69:72], v119 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[65:72], v[41:48], v[137:144]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[69:72], v119 offset:4096
	ds_load_b128 v[65:68], v118 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[145:152], v[65:72], v[41:48], v[145:152]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v118 offset:6144
	ds_load_b128 v[69:72], v119 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[153:160], v[65:72], v[41:48], v[153:160]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[69:72], v121
	ds_load_b128 v[65:68], v120
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[129:136], v[65:72], v[49:56], v[129:136]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v120 offset:2048
	ds_load_b128 v[69:72], v121 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[65:72], v[49:56], v[137:144]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[69:72], v121 offset:4096
	ds_load_b128 v[65:68], v120 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[145:152], v[65:72], v[49:56], v[145:152]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v120 offset:6144
	ds_load_b128 v[69:72], v121 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[153:160], v[65:72], v[49:56], v[153:160]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[69:72], v123
	ds_load_b128 v[65:68], v122
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[129:136], v[65:72], v[57:64], v[129:136]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v122 offset:2048
	ds_load_b128 v[69:72], v123 offset:2048
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v78, s19, v129 :: v_dual_mul_f32 v79, s19, v130
	v_dual_mul_f32 v84, s19, v133 :: v_dual_mul_f32 v83, s19, v132
	v_mul_f32_e32 v80, s19, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v78, 0xff800000, v78, s0
	v_cndmask_b32_e64 v79, 0xff800000, v79, s0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v84, 0xff800000, v84, s0
	v_cndmask_b32_e64 v83, 0xff800000, v83, s0
	v_cndmask_b32_e64 v80, 0xff800000, v80, s0
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[65:72], v[57:64], v[137:144]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[69:72], v123 offset:4096
	ds_load_b128 v[65:68], v122 offset:4096
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v85, s19, v134
	v_mul_f32_e32 v81, s19, v136
	v_dual_mul_f32 v77, s19, v131 :: v_dual_mul_f32 v82, s19, v137
	v_dual_mul_f32 v91, s19, v138 :: v_dual_mul_f32 v96, s19, v143
	v_mul_f32_e32 v92, s19, v139
	v_dual_mul_f32 v94, s19, v141 :: v_dual_mul_f32 v95, s19, v142
	v_mul_f32_e32 v102, s19, v144
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v141, 0xff800000, v96, s0
	v_cndmask_b32_e64 v85, 0xff800000, v85, s0
	v_cndmask_b32_e64 v77, 0xff800000, v77, s0
	v_cndmask_b32_e64 v81, 0xff800000, v81, s0
	v_cndmask_b32_e64 v142, 0xff800000, v102, s0
	v_cndmask_b32_e64 v82, 0xff800000, v82, s0
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[145:152], v[65:72], v[57:64], v[145:152]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v122 offset:6144
	ds_load_b128 v[69:72], v123 offset:6144
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v93, s19, v140
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v140, 0xff800000, v95, s0
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v103, s19, v145 :: v_dual_mul_f32 v130, s19, v148
	v_dual_mul_f32 v104, s19, v146 :: v_dual_mul_f32 v129, s19, v147
	v_dual_mul_f32 v132, s19, v150 :: v_dual_mul_f32 v131, s19, v149
	v_mul_f32_e32 v134, s19, v152
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v143, 0xff800000, v103, s0
	v_cndmask_b32_e64 v144, 0xff800000, v104, s0
	v_cndmask_b32_e64 v145, 0xff800000, v129, s0
	v_cndmask_b32_e64 v146, 0xff800000, v130, s0
	v_cndmask_b32_e64 v138, 0xff800000, v131, s0
	v_cndmask_b32_e64 v139, 0xff800000, v132, s0
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[153:160], v[65:72], v[57:64], v[153:160]
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v65, s2, v125, 1
	v_add_lshl_u32 v66, s2, v108, 1
	v_cndmask_b32_e64 v67, 0x80000000, v161, s1
	v_cndmask_b32_e64 v68, 0x80000000, v162, s1
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v133, s19, v151 :: v_dual_mul_f32 v136, s19, v154
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	v_cndmask_b32_e64 v97, 0x80000000, v66, s1
	s_clause 0x3
	buffer_load_b128 v[69:72], v67, s[24:27], 0 offen
	buffer_load_b128 v[73:76], v68, s[24:27], 0 offen
	buffer_load_b128 v[65:68], v65, s[24:27], 0 offen
	buffer_load_b128 v[97:100], v97, s[24:27], 0 offen
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v135, s19, v153 :: v_dual_mul_f32 v86, s19, v158
	v_dual_mul_f32 v137, s19, v155 :: v_dual_mul_f32 v88, s19, v157
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v132, 0xff800000, v133, s0
	v_cndmask_b32_e64 v133, 0xff800000, v134, s0
	v_cndmask_b32_e64 v130, 0xff800000, v135, s0
	v_cndmask_b32_e64 v131, 0xff800000, v136, s0
	v_cndmask_b32_e64 v103, 0xff800000, v137, s0
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v89, s19, v159 :: v_dual_mul_f32 v90, s19, v160
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v102, 0xff800000, v86, s0
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	ds_store_b128 v101, v[69:72]
	s_waitcnt vmcnt(2)
	ds_store_b128 v101, v[73:76] offset:2048
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v73, 0xff800000, v91, s0
	v_cndmask_b32_e64 v74, 0xff800000, v92, s0
	v_cndmask_b32_e64 v75, 0xff800000, v93, s0
	v_cndmask_b32_e64 v76, 0xff800000, v94, s0
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	ds_store_b128 v101, v[65:68] offset:4096
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v67, v142, v143, v144
	v_max3_f32 v68, v145, v146, v138
	v_max3_f32 v65, v73, v74, v75
	v_max3_f32 v66, v76, v140, v141
.Ltmp2:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v71.h, 0
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v87, s19, v156
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v72, 0xff800000, v88, s0
	v_cndmask_b32_e64 v69, 0xff800000, v89, s0
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v65, v66, v67
	v_max3_f32 v66, v139, v132, v133
	v_max3_f32 v67, v130, v131, v103
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v104, 0xff800000, v87, s0
	v_cndmask_b32_e64 v70, 0xff800000, v90, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v66, v68, v66, v67
	v_max_f32_e32 v67, v78, v79
	v_max3_f32 v68, v83, v84, v85
	v_max3_f32 v67, v67, v77, v68
	v_max3_f32 v68, v80, v81, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v65, v67, v68, v65
	v_dual_max_f32 v67, v104, v72 :: v_dual_max_f32 v68, v69, v70
	v_max3_f32 v67, v67, v102, v68
.Ltmp6:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v68.h, v71.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v65, v66, v67
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v66, v65, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v129, v128, v65, v66
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v79, v129
	v_sub_f32_e32 v66, v78, v129
	v_sub_f32_e32 v72, v72, v129
	v_sub_f32_e32 v102, v102, v129
	v_sub_f32_e32 v69, v69, v129
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v102, v102
	v_exp_f32_e32 v69, v69
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v70, v129
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v134, 0, v65, s0
	v_cndmask_b32_e64 v135, 0, v66, s0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v72, 0, v72, s0
	v_cndmask_b32_e64 v102, 0, v102, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v69, 0, v69, s0
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v71.l, v134.h
	v_mov_b16_e64 v68.l, v135.h
	v_cmp_o_f32_e64 s2, v134, v134
	v_cmp_o_f32_e64 s3, v135, v135
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v65, 1, v71
	v_and_b32_e32 v66, 1, v68
	v_cmp_o_f32_e64 s4, v102, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v65, v134, v65, 0x7fff
	v_add3_u32 v66, v135, v66, 0x7fff
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v134, v135, v134
.Ltmp11:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_store_b128 v101, v[97:100] offset:6144
	s_waitcnt lgkmcnt(0)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s2
	v_cndmask_b16 v65.l, 0x7fff, v66.h, s3
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v66, v65, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v89, v66, v65, v126
	v_perm_b32 v90, v66, v65, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v77, v129
	v_sub_f32_e32 v66, v83, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v136, 0, v65, s0
	v_cndmask_b32_e64 v137, 0, v66, s0
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v65.h, v71.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v65.l, v136.h
	v_mov_b16_e64 v71.l, v137.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v137, v137
	v_cmp_o_f32_e64 s3, v136, v136
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v135, v136, v137
.Ltmp13:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v65, 1, v65
	v_and_b32_e32 v66, 1, v71
	v_add3_u32 v65, v136, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v137, v66, 0x7fff
	v_cndmask_b16 v65.l, 0x7fff, v65.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s2
	v_permlanex16_b32 v66, v65, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v91, v66, v65, v126
	v_perm_b32 v92, v66, v65, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v84, v129
	v_sub_f32_e32 v66, v85, v129
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v66, v66
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v147, 0, v65, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v148, 0, v66, s0
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v65.h, v71.h
	v_mov_b16_e64 v65.l, v147.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v71.l, v148.h
	v_cmp_o_f32_e64 s2, v148, v148
	v_cmp_o_f32_e64 s3, v147, v147
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v136, v147, v148 :: v_dual_and_b32 v65, 1, v65
.Ltmp15:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v66, 1, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v65, v147, v65, 0x7fff
	v_add3_u32 v66, v148, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v65.l, 0x7fff, v65.h, s3
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v66, v65, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v93, v66, v65, v126
	v_perm_b32 v94, v66, v65, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v80, v129
	v_sub_f32_e32 v66, v81, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v149, 0, v65, s0
	v_cndmask_b32_e64 v150, 0, v66, s0
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v65.h, v71.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v65.l, v149.h
	v_mov_b16_e64 v71.l, v150.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v150, v150
	v_cmp_o_f32_e64 s3, v149, v149
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v137, v149, v150
.Ltmp17:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v65, 1, v65
	v_and_b32_e32 v66, 1, v71
	v_add3_u32 v65, v149, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v150, v66, 0x7fff
	v_cndmask_b16 v65.l, 0x7fff, v65.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s2
	v_permlanex16_b32 v66, v65, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v95, v66, v65, v126
	v_perm_b32 v96, v66, v65, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v82, v129
	v_sub_f32_e32 v66, v73, v129
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v66, v66
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v151, 0, v65, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v152, 0, v66, s0
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v65.h, v71.h
	v_mov_b16_e64 v65.l, v151.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v71.l, v152.h
	v_cmp_o_f32_e64 s2, v152, v152
	v_cmp_o_f32_e64 s3, v151, v151
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v147, v151, v152
.Ltmp19:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v65, 1, v65
	v_and_b32_e32 v66, 1, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v65, v151, v65, 0x7fff
	v_add3_u32 v66, v152, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v65.l, 0x7fff, v65.h, s3
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v66, v65, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v81, v66, v65, v126
	v_perm_b32 v82, v66, v65, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v74, v129
	v_sub_f32_e32 v66, v75, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v153, 0, v65, s0
	v_cndmask_b32_e64 v154, 0, v66, s0
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v65.h, v71.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v65.l, v153.h
	v_mov_b16_e64 v71.l, v154.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s2, v154, v154
	v_cmp_o_f32_e64 s3, v153, v153
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v148, v153, v154 :: v_dual_and_b32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v66, 1, v71
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v104, v129
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v153, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v66, v154, v66, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v65.l, 0x7fff, v65.h, s3
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_permlanex16_b32 v66, v65, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v104, 0, v68, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v83, v66, v65, v126
	v_perm_b32 v84, v66, v65, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v76, v129
	v_sub_f32_e32 v66, v140, v129
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v66, v66
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v140, 0, v65, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v155, 0, v66, s0
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v65.h, v71.h
	v_mov_b16_e64 v65.l, v140.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v71.l, v155.h
	v_cmp_o_f32_e64 s2, v155, v155
	v_cmp_o_f32_e64 s3, v140, v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v65, 1, v65
	v_and_b32_e32 v66, 1, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v65, v140, v65, 0x7fff
	v_add3_u32 v66, v155, v66, 0x7fff
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v140, v140, v155
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v65.l, 0x7fff, v65.h, s3
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v66, v65, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v85, v66, v65, v126
	v_perm_b32 v86, v66, v65, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v141, v129
	v_sub_f32_e32 v66, v142, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v141, 0, v65, s0
	v_cndmask_b32_e64 v142, 0, v66, s0
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v65.h, v71.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v65.l, v141.h
	v_mov_b16_e64 v71.l, v142.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s2, v142, v142
	v_cmp_o_f32_e64 s3, v141, v141
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v66, 1, v71
	v_add3_u32 v65, v141, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v66, v142, v66, 0x7fff
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v141, v141, v142
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v65.l, 0x7fff, v65.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s2
	v_permlanex16_b32 v66, v65, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v87, v66, v65, v126
	v_perm_b32 v88, v66, v65, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v143, v129
	v_sub_f32_e32 v66, v144, v129
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v66, v66
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v143, 0, v65, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v144, 0, v66, s0
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v65.h, v71.h
	v_mov_b16_e64 v65.l, v143.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v71.l, v144.h
	v_cmp_o_f32_e64 s2, v144, v144
	v_cmp_o_f32_e64 s3, v143, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v142, v143, v144 :: v_dual_and_b32 v65, 1, v65
.Ltmp27:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v66, 1, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v65, v143, v65, 0x7fff
	v_add3_u32 v66, v144, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v65.l, 0x7fff, v65.h, s3
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v66, v65, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v73, v66, v65, v126
	v_perm_b32 v74, v66, v65, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v145, v129
	v_sub_f32_e32 v66, v146, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v145, 0, v65, s0
	v_cndmask_b32_e64 v146, 0, v66, s0
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v65.h, v71.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v65.l, v145.h
	v_mov_b16_e64 v71.l, v146.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v146, v146
	v_cmp_o_f32_e64 s3, v145, v145
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v143, v145, v146
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v65, 1, v65
	v_and_b32_e32 v66, 1, v71
	v_add3_u32 v65, v145, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v146, v66, 0x7fff
	v_cndmask_b16 v65.l, 0x7fff, v65.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s2
	v_permlanex16_b32 v66, v65, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v75, v66, v65, v126
	v_perm_b32 v76, v66, v65, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v138, v129
	v_sub_f32_e32 v66, v139, v129
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v66, v66
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v138, 0, v65, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v139, 0, v66, s0
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v65.h, v71.h
	v_mov_b16_e64 v65.l, v138.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v71.l, v139.h
	v_cmp_o_f32_e64 s2, v139, v139
	v_cmp_o_f32_e64 s3, v138, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v65, 1, v65
	v_and_b32_e32 v66, 1, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v65, v138, v65, 0x7fff
	v_add3_u32 v66, v139, v66, 0x7fff
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v138, v138, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v65.l, 0x7fff, v65.h, s3
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v66, v65, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v77, v66, v65, v126
	v_perm_b32 v78, v66, v65, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v132, v129
	v_sub_f32_e32 v66, v133, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v132, 0, v65, s0
	v_cndmask_b32_e64 v133, 0, v66, s0
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v65.h, v71.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v65.l, v132.h
	v_mov_b16_e64 v71.l, v133.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s2, v133, v133
	v_cmp_o_f32_e64 s3, v132, v132
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v66, 1, v71
	v_add3_u32 v65, v132, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v133, v66, 0x7fff
	v_cndmask_b16 v65.l, 0x7fff, v65.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s2
	v_permlanex16_b32 v66, v65, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v79, v66, v65, v126
	v_perm_b32 v80, v66, v65, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v130, v129
	v_sub_f32_e32 v66, v131, v129
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v66, v66
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v130, 0, v65, s0
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v65.h, v71.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v131, 0, v66, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v65.l, v130.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v130, v130
	v_mov_b16_e64 v71.l, v131.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s2, v131, v131
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v65, v130, v65, 0x7fff
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v130, v130, v131
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s3
	v_and_b32_e32 v65, 1, v71
	v_mov_b16_e32 v71.l, v104.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v65, v131, v65, 0x7fff
	v_cndmask_b16 v66.h, 0x7fff, v65.h, s2
	v_cmp_o_f32_e64 s2, v104, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v67, v66, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v67, v66, v126
	v_perm_b32 v66, v67, v66, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v103, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v103, 0, v67, s0
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v67.h, v71.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v67.l, v103.h
	v_cmp_o_f32_e64 s3, v103, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v67, 1, v67
	v_add3_u32 v67, v103, v67, 0x7fff
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v103, v103, v104 :: v_dual_add_f32 v132, v132, v133
	v_add_f32_e32 v133, v147, v148
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s3
	v_and_b32_e32 v67, 1, v71
	v_mov_b16_e32 v71.l, v102.h
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v131, v136, v137
.Ltmp37:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v136, 0, v70, s0
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v103, v130, v103 :: v_dual_add_f32 v70, v72, v102
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v67, v104, v67, 0x7fff
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v104, v134, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_add_f32 v130, v69, v136 :: v_dual_add_f32 v135, v142, v143
	v_add_f32_e32 v132, v138, v132
	v_add_f32_e32 v134, v140, v141
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v72, v72
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v70, v130
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v130.h, v71.h
	v_mov_b16_e64 v130.l, v72.h
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v104, v104, v131 :: v_dual_add_f32 v131, v135, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v70, v103, v70
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v103.h, v71.h
	v_and_b32_e32 v130, 1, v130
	v_mov_b16_e32 v103.l, v69.h
	v_cndmask_b16 v68.h, 0x7fff, v67.h, s2
	v_cmp_o_f32_e64 s2, v69, v69
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v131, v70
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v72, v72, v130, 0x7fff
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v130, v133, v134 :: v_dual_and_b32 v103, 1, v103
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v156, v68, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v69, v69, v103, 0x7fff
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v103, v104, v130 :: v_dual_mov_b32 v130, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v67, v156, v68, v126
	v_perm_b32 v68, v156, v68, v127
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v103, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v103, v70, s5, 0xfedcba98 op_sel:[1,0]
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v109, v70, v103
.Ltmp55:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v70, 1, v71
	v_mov_b16_e64 v71.l, v136.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v70, v102, v70, 0x7fff
	v_cndmask_b16 v70.l, 0x7fff, v72.h, s3
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v72, v128, v129 :: v_dual_and_b32 v71, 1, v71
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v136, v136
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s4
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s4, 0xff800000, v128
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v72, v72
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v71, v136, v71, 0x7fff
	v_mov_b32_e32 v128, v129
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v131, 0, v72, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v72.l, 0x7fff, v69.h, s2
	v_cndmask_b16 v72.h, 0x7fff, v71.h, s3
	v_permlanex16_b32 v71, v70, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s2, s6, 64
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v131
	v_mul_f32_e32 v26, v26, v131
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v102, v72, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v71, v70, v126
	v_perm_b32 v70, v71, v70, v127
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v131
	v_mul_f32_e32 v28, v28, v131
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v71, v102, v72, v126
	v_perm_b32 v72, v102, v72, v127
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v97, v114
	ds_load_u16_d16 v100, v114 offset:768
	ds_load_u16_d16 v101, v114 offset:1024
	ds_load_u16_d16 v102, v114 offset:1280
	ds_load_u16_d16 v103, v114 offset:1536
	ds_load_u16_d16 v104, v114 offset:1792
	ds_load_u16_d16 v99, v114 offset:512
	ds_load_u16_d16 v98, v114 offset:256
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v97, v114 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v100, v114 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v101, v114 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v102, v114 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v103, v114 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v104, v114 offset:1920
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v99, v114 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v98, v114 offset:384
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v29, v29, v131
	v_mul_f32_e32 v30, v30, v131
	v_mul_f32_e32 v31, v31, v131
	v_mul_f32_e32 v32, v32, v131
	v_mul_f32_e32 v17, v17, v131
	v_mul_f32_e32 v18, v18, v131
	v_mul_f32_e32 v19, v19, v131
	v_mul_f32_e32 v20, v20, v131
	v_mul_f32_e32 v21, v21, v131
	v_mul_f32_e32 v22, v22, v131
	v_mul_f32_e32 v23, v23, v131
	v_mul_f32_e32 v24, v24, v131
	v_mul_f32_e32 v9, v9, v131
	v_mul_f32_e32 v10, v10, v131
	v_mul_f32_e32 v11, v11, v131
	v_mul_f32_e32 v12, v12, v131
	v_mul_f32_e32 v13, v13, v131
	v_mul_f32_e32 v14, v14, v131
	v_mul_f32_e32 v15, v15, v131
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[97:104], v[89:96], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v97, v114 offset:32
	ds_load_u16_d16 v98, v114 offset:288
	ds_load_u16_d16 v99, v114 offset:544
	ds_load_u16_d16 v100, v114 offset:800
	ds_load_u16_d16 v101, v114 offset:1056
	ds_load_u16_d16 v102, v114 offset:1312
	ds_load_u16_d16 v103, v114 offset:1568
	ds_load_u16_d16 v104, v114 offset:1824
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v97, v114 offset:160
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v98, v114 offset:416
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v99, v114 offset:672
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v100, v114 offset:928
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v101, v114 offset:1184
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v102, v114 offset:1440
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v103, v114 offset:1696
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v104, v114 offset:1952
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v131
	v_mul_f32_e32 v1, v1, v131
	v_mul_f32_e32 v2, v2, v131
	v_mul_f32_e32 v3, v3, v131
	v_mul_f32_e32 v4, v4, v131
	v_mul_f32_e32 v5, v5, v131
	v_mul_f32_e32 v6, v6, v131
	v_mul_f32_e32 v7, v7, v131
	v_mul_f32_e32 v8, v8, v131
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v109, v130, v131
	.loc	1 818 13                        ; attention.py:818:13
	s_cmpk_lt_u32 s6, 0x7c0
	s_mov_b32 s6, s2
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[97:104], v[89:96], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v99, v114 offset:576
	ds_load_u16_d16 v100, v114 offset:832
	ds_load_u16_d16 v101, v114 offset:1088
	ds_load_u16_d16 v102, v114 offset:1344
	ds_load_u16_d16 v103, v114 offset:1600
	ds_load_u16_d16 v104, v114 offset:1856
	ds_load_u16_d16 v97, v114 offset:64
	ds_load_u16_d16 v98, v114 offset:320
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v99, v114 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v100, v114 offset:960
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v101, v114 offset:1216
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v102, v114 offset:1472
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v103, v114 offset:1728
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v104, v114 offset:1984
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v97, v114 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v98, v114 offset:448
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[97:104], v[89:96], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v98, v114 offset:352
	ds_load_u16_d16 v97, v114 offset:96
	ds_load_u16_d16 v99, v114 offset:608
	ds_load_u16_d16 v100, v114 offset:864
	ds_load_u16_d16 v101, v114 offset:1120
	ds_load_u16_d16 v102, v114 offset:1376
	ds_load_u16_d16 v103, v114 offset:1632
	ds_load_u16_d16 v104, v114 offset:1888
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v98, v114 offset:480
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v97, v114 offset:224
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v99, v114 offset:736
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v100, v114 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v101, v114 offset:1248
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v102, v114 offset:1504
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v103, v114 offset:1760
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v104, v114 offset:2016
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[97:104], v[89:96], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v89, v114 offset:2048
	ds_load_u16_d16 v91, v114 offset:2560
	ds_load_u16_d16 v92, v114 offset:2816
	ds_load_u16_d16 v93, v114 offset:3072
	ds_load_u16_d16 v94, v114 offset:3328
	ds_load_u16_d16 v95, v114 offset:3584
	ds_load_u16_d16 v96, v114 offset:3840
	ds_load_u16_d16 v90, v114 offset:2304
	ds_load_u16_d16 v97, v114 offset:2080
	ds_load_u16_d16 v98, v114 offset:2336
	ds_load_u16_d16 v99, v114 offset:2592
	ds_load_u16_d16 v100, v114 offset:2848
	ds_load_u16_d16 v101, v114 offset:3104
	ds_load_u16_d16 v102, v114 offset:3360
	ds_load_u16_d16 v103, v114 offset:3616
	ds_load_u16_d16 v104, v114 offset:3872
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v89, v114 offset:2176
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v91, v114 offset:2688
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v92, v114 offset:2944
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v93, v114 offset:3200
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v94, v114 offset:3456
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v95, v114 offset:3712
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v96, v114 offset:3968
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v90, v114 offset:2432
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[89:96], v[81:88], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v89, v114 offset:2112
	ds_load_u16_d16 v90, v114 offset:2368
	ds_load_u16_d16 v91, v114 offset:2624
	ds_load_u16_d16 v92, v114 offset:2880
	ds_load_u16_d16 v93, v114 offset:3136
	ds_load_u16_d16 v94, v114 offset:3392
	ds_load_u16_d16 v95, v114 offset:3648
	ds_load_u16_d16 v96, v114 offset:3904
	ds_load_u16_d16_hi v97, v114 offset:2208
	ds_load_u16_d16_hi v98, v114 offset:2464
	ds_load_u16_d16_hi v99, v114 offset:2720
	ds_load_u16_d16_hi v100, v114 offset:2976
	ds_load_u16_d16_hi v101, v114 offset:3232
	ds_load_u16_d16_hi v102, v114 offset:3488
	ds_load_u16_d16_hi v103, v114 offset:3744
	ds_load_u16_d16_hi v104, v114 offset:4000
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[97:104], v[81:88], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v97, v114 offset:2144
	ds_load_u16_d16 v98, v114 offset:2400
	ds_load_u16_d16 v99, v114 offset:2656
	ds_load_u16_d16 v100, v114 offset:2912
	ds_load_u16_d16 v101, v114 offset:3168
	ds_load_u16_d16 v102, v114 offset:3424
	ds_load_u16_d16 v103, v114 offset:3680
	ds_load_u16_d16 v104, v114 offset:3936
	ds_load_u16_d16_hi v89, v114 offset:2240
	ds_load_u16_d16_hi v90, v114 offset:2496
	ds_load_u16_d16_hi v91, v114 offset:2752
	ds_load_u16_d16_hi v92, v114 offset:3008
	ds_load_u16_d16_hi v93, v114 offset:3264
	ds_load_u16_d16_hi v94, v114 offset:3520
	ds_load_u16_d16_hi v95, v114 offset:3776
	ds_load_u16_d16_hi v96, v114 offset:4032
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[89:96], v[81:88], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v89, v114 offset:4096
	ds_load_u16_d16 v91, v114 offset:4608
	ds_load_u16_d16 v92, v114 offset:4864
	ds_load_u16_d16 v93, v114 offset:5120
	ds_load_u16_d16 v94, v114 offset:5376
	ds_load_u16_d16 v95, v114 offset:5632
	ds_load_u16_d16 v96, v114 offset:5888
	ds_load_u16_d16 v90, v114 offset:4352
	ds_load_u16_d16_hi v97, v114 offset:2272
	ds_load_u16_d16_hi v98, v114 offset:2528
	ds_load_u16_d16_hi v99, v114 offset:2784
	ds_load_u16_d16_hi v100, v114 offset:3040
	ds_load_u16_d16_hi v101, v114 offset:3296
	ds_load_u16_d16_hi v102, v114 offset:3552
	ds_load_u16_d16_hi v103, v114 offset:3808
	ds_load_u16_d16_hi v104, v114 offset:4064
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[97:104], v[81:88], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v83, v114 offset:4160
	ds_load_u16_d16 v84, v114 offset:4416
	ds_load_u16_d16 v97, v114 offset:4192
	ds_load_u16_d16_hi v89, v114 offset:4224
	ds_load_u16_d16_hi v91, v114 offset:4736
	ds_load_u16_d16_hi v92, v114 offset:4992
	ds_load_u16_d16_hi v93, v114 offset:5248
	ds_load_u16_d16_hi v94, v114 offset:5504
	ds_load_u16_d16_hi v95, v114 offset:5760
	ds_load_u16_d16_hi v96, v114 offset:6016
	ds_load_u16_d16_hi v90, v114 offset:4480
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[89:96], v[73:80], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v132, v114 offset:4128
	ds_load_u16_d16 v133, v114 offset:4384
	ds_load_u16_d16 v134, v114 offset:4640
	ds_load_u16_d16 v135, v114 offset:4896
	ds_load_u16_d16 v136, v114 offset:5152
	ds_load_u16_d16 v137, v114 offset:5408
	ds_load_u16_d16 v138, v114 offset:5664
	ds_load_u16_d16 v139, v114 offset:5920
	ds_load_u16_d16 v85, v114 offset:4672
	ds_load_u16_d16 v86, v114 offset:4928
	ds_load_u16_d16 v87, v114 offset:5184
	ds_load_u16_d16 v88, v114 offset:5440
	ds_load_u16_d16 v89, v114 offset:5696
	ds_load_u16_d16 v90, v114 offset:5952
	ds_load_u16_d16 v98, v114 offset:4448
	ds_load_u16_d16 v99, v114 offset:4704
	ds_load_u16_d16 v100, v114 offset:4960
	ds_load_u16_d16 v101, v114 offset:5216
	ds_load_u16_d16 v102, v114 offset:5472
	ds_load_u16_d16 v103, v114 offset:5728
	ds_load_u16_d16 v81, v114 offset:6208
	ds_load_u16_d16 v104, v114 offset:5984
	ds_load_u16_d16 v82, v114 offset:6464
	ds_load_u16_d16_hi v83, v114 offset:4288
	ds_load_u16_d16_hi v84, v114 offset:4544
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v85, v114 offset:4800
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v86, v114 offset:5056
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v87, v114 offset:5312
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v88, v114 offset:5568
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v89, v114 offset:5824
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v90, v114 offset:6080
	ds_load_u16_d16_hi v132, v114 offset:4256
	ds_load_u16_d16_hi v133, v114 offset:4512
	ds_load_u16_d16_hi v134, v114 offset:4768
	ds_load_u16_d16_hi v135, v114 offset:5024
	ds_load_u16_d16_hi v136, v114 offset:5280
	ds_load_u16_d16_hi v137, v114 offset:5536
	ds_load_u16_d16_hi v138, v114 offset:5792
	ds_load_u16_d16_hi v139, v114 offset:6048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[83:90], v[73:80], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v89, v114 offset:6240
	ds_load_u16_d16_hi v97, v114 offset:4320
	ds_load_u16_d16_hi v98, v114 offset:4576
	ds_load_u16_d16_hi v99, v114 offset:4832
	ds_load_u16_d16_hi v100, v114 offset:5088
	ds_load_u16_d16_hi v101, v114 offset:5344
	ds_load_u16_d16_hi v102, v114 offset:5600
	ds_load_u16_d16_hi v103, v114 offset:5856
	ds_load_u16_d16_hi v104, v114 offset:6112
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(9)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[132:139], v[73:80], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[97:104], v[73:80], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v73, v114 offset:6144
	ds_load_u16_d16 v75, v114 offset:6656
	ds_load_u16_d16 v83, v114 offset:6720
	ds_load_u16_d16 v76, v114 offset:6912
	ds_load_u16_d16 v84, v114 offset:6976
	ds_load_u16_d16 v77, v114 offset:7168
	ds_load_u16_d16 v85, v114 offset:7232
	ds_load_u16_d16 v78, v114 offset:7424
	ds_load_u16_d16 v86, v114 offset:7488
	ds_load_u16_d16 v79, v114 offset:7680
	ds_load_u16_d16 v87, v114 offset:7744
	ds_load_u16_d16 v80, v114 offset:7936
	ds_load_u16_d16 v74, v114 offset:6400
	ds_load_u16_d16 v88, v114 offset:8000
	ds_load_u16_d16 v90, v114 offset:6496
	ds_load_u16_d16 v91, v114 offset:6752
	ds_load_u16_d16 v92, v114 offset:7008
	ds_load_u16_d16 v93, v114 offset:7264
	ds_load_u16_d16 v94, v114 offset:7520
	ds_load_u16_d16 v95, v114 offset:7776
	ds_load_u16_d16 v96, v114 offset:8032
	ds_load_u16_d16 v97, v114 offset:6176
	ds_load_u16_d16 v98, v114 offset:6432
	ds_load_u16_d16 v99, v114 offset:6688
	ds_load_u16_d16 v100, v114 offset:6944
	ds_load_u16_d16 v101, v114 offset:7200
	ds_load_u16_d16 v102, v114 offset:7456
	ds_load_u16_d16 v103, v114 offset:7712
	ds_load_u16_d16 v104, v114 offset:7968
	ds_load_u16_d16_hi v81, v114 offset:6336
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v73, v114 offset:6272
	ds_load_u16_d16_hi v82, v114 offset:6592
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v75, v114 offset:6784
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v83, v114 offset:6848
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v76, v114 offset:7040
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v84, v114 offset:7104
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v77, v114 offset:7296
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v85, v114 offset:7360
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v78, v114 offset:7552
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v86, v114 offset:7616
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v79, v114 offset:7808
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v87, v114 offset:7872
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v80, v114 offset:8064
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v74, v114 offset:6528
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v88, v114 offset:8128
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v97, v114 offset:6304
	ds_load_u16_d16_hi v89, v114 offset:6368
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v98, v114 offset:6560
	ds_load_u16_d16_hi v90, v114 offset:6624
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v99, v114 offset:6816
	ds_load_u16_d16_hi v91, v114 offset:6880
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v100, v114 offset:7072
	ds_load_u16_d16_hi v92, v114 offset:7136
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v101, v114 offset:7328
	ds_load_u16_d16_hi v93, v114 offset:7392
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v102, v114 offset:7584
	ds_load_u16_d16_hi v94, v114 offset:7648
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v103, v114 offset:7840
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v104, v114 offset:8096
	ds_load_u16_d16_hi v95, v114 offset:7904
	ds_load_u16_d16_hi v96, v114 offset:8160
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(17)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[73:80], v[65:72], v[25:32]
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[65:72], v[9:16]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[97:104], v[65:72], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[89:96], v[65:72], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v37, null, v109, v109, v25
	v_div_scale_f32 v38, null, v109, v109, v26
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v33, 4, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v39, v37
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v35, v0, 4, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v40, v38
	v_div_scale_f32 v42, null, v109, v109, v27
	v_div_scale_f32 v41, vcc_lo, v25, v109, v25
	v_div_scale_f32 v43, null, v109, v109, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v45, v42
	v_fma_f32 v0, -v37, v39, 1.0
	v_div_scale_f32 v44, s1, v26, v109, v26
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v38, v40, 1.0
	v_rcp_f32_e32 v46, v43
	v_fmac_f32_e32 v39, v0, v39
	v_div_scale_f32 v47, s2, v27, v109, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v40, v34, v40
	v_fma_f32 v36, -v42, v45, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v48, v41, v39
	v_div_scale_f32 v53, null, v109, v109, v18
	v_mul_f32_e32 v49, v44, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v43, v46, 1.0
	v_fma_f32 v50, -v37, v48, v41
	v_fmac_f32_e32 v45, v36, v45
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 62, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v52, -v38, v49, v44
	v_fmac_f32_e32 v46, v51, v46
	v_fmac_f32_e32 v48, v50, v39
	v_div_scale_f32 v51, s3, v28, v109, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v52, v40
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 48, v35
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v37, v48, v41
	v_div_scale_f32 v41, null, v109, v109, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v38, v49, v44
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v34, 32, v35
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v39, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v39, v41
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v109
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v40, v49
	v_div_fixup_f32 v25, v37, v109, v25
	v_div_scale_f32 v37, null, v109, v109, v30
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v26, v38, v109, v26
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
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
	v_div_scale_f32 v49, s2, v30, v109, v30
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v50, v52, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v42, v50, v47
	v_div_scale_f32 v42, s4, v29, v109, v29
	v_mul_f32_e32 v48, v51, v46
	v_div_scale_f32 v47, null, v109, v109, v31
	v_div_fmas_f32 v38, v38, v45, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v42, v39
	v_fma_f32 v44, -v43, v48, v51
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v50, null, v109, v109, v32
	v_div_fixup_f32 v27, v38, v109, v27
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
	v_div_fixup_f32 v28, v43, v109, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v45, v46, v39
	v_div_scale_f32 v46, null, v109, v109, v17
	v_fma_f32 v38, -v37, v48, v49
	v_fma_f32 v51, -v47, v44, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v41, v45, v42
	v_rcp_f32_e32 v42, v46
	v_div_scale_f32 v43, s3, v31, v109, v31
	v_fmac_f32_e32 v48, v38, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v41, v39, v45
	s_mov_b32 vcc_lo, s2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v37, v48, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v29, v39, v109, v29
	v_fma_f32 v49, -v46, v42, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v37, v37, v40, v48
	v_div_scale_f32 v48, s2, v17, v109, v17
	v_fmac_f32_e32 v42, v49, v42
	v_fmac_f32_e32 v44, v51, v44
	v_fma_f32 v51, -v50, v52, 1.0
	v_rcp_f32_e32 v40, v53
	v_div_fixup_f32 v30, v37, v109, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v39, v48, v42 :: v_dual_mul_f32 v38, v43, v44
	v_fmac_f32_e32 v52, v51, v52
	v_div_scale_f32 v51, s5, v32, v109, v32
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v41, -v47, v38, v43
	v_div_scale_f32 v49, null, v109, v109, v20
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
	v_div_scale_f32 v43, null, v109, v109, v19
	v_fmac_f32_e32 v45, v41, v52
	v_fma_f32 v41, -v53, v40, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v37, v37, v44, v38
	v_fma_f32 v44, -v46, v39, v48
	v_div_scale_f32 v47, s3, v18, v109, v18
	v_fmac_f32_e32 v40, v41, v40
	v_rcp_f32_e32 v41, v43
	v_fma_f32 v38, -v50, v45, v51
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v31, v37, v109, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v38, v38, v52, v45
	v_mul_f32_e32 v45, v47, v40
	v_fmac_f32_e32 v39, v44, v42
	v_rcp_f32_e32 v44, v49
	v_fma_f32 v50, -v43, v41, 1.0
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v32, v38, v109, v32
	v_fma_f32 v37, -v46, v39, v48
	v_fma_f32 v38, -v53, v45, v47
	v_fmac_f32_e32 v41, v50, v41
	v_div_scale_f32 v50, null, v109, v109, v21
	v_div_scale_f32 v46, s4, v19, v109, v19
	v_div_fmas_f32 v37, v37, v42, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v39, v50
	v_fma_f32 v48, -v49, v44, 1.0
	v_fmac_f32_e32 v45, v38, v40
	v_mul_f32_e32 v38, v46, v41
	v_div_scale_f32 v42, s2, v20, v109, v20
	v_fmac_f32_e32 v44, v48, v44
	v_div_fixup_f32 v17, v37, v109, v17
	v_fma_f32 v37, -v53, v45, v47
	v_fma_f32 v47, -v43, v38, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v53, -v50, v39, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v48, null, v109, v109, v22
	v_fmac_f32_e32 v38, v47, v41
	v_div_fmas_f32 v37, v37, v40, v45
	v_fmac_f32_e32 v39, v53, v39
	v_div_scale_f32 v45, s3, v21, v109, v21
	v_mul_f32_e32 v51, v42, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v18, v37, v109, v18
	v_fma_f32 v37, -v43, v38, v46
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v52, v48
	v_fma_f32 v40, -v49, v51, v42
	v_div_scale_f32 v46, null, v109, v109, v23
	v_div_fmas_f32 v37, v37, v41, v38
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v51, v40, v44 :: v_dual_mul_f32 v40, v45, v39
	v_div_scale_f32 v43, s5, v22, v109, v22
	v_fma_f32 v47, -v48, v52, 1.0
	v_div_fixup_f32 v19, v37, v109, v19
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
	v_div_scale_f32 v49, null, v109, v109, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v50, v40, v45
	v_div_fmas_f32 v38, v38, v44, v51
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v49
	v_div_scale_f32 v50, null, v109, v109, v10
	v_div_fixup_f32 v20, v38, v109, v20
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v46, v42, 1.0
	v_div_scale_f32 v38, s2, v23, v109, v23
	v_div_fmas_f32 v37, v37, v39, v40
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v42, v51, v42
	v_mul_f32_e32 v47, v43, v52
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v21, v37, v109, v21
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
	v_div_scale_f32 v44, s3, v24, v109, v24
	v_div_scale_f32 v43, null, v109, v109, v9
	v_mul_f32_e32 v48, v44, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v45, v43
	v_fma_f32 v37, -v49, v48, v44
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v48, v37, v41
	v_div_fmas_f32 v39, v39, v52, v47
	v_fma_f32 v47, -v46, v40, v38
	v_div_scale_f32 v52, null, v109, v109, v12
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v22, v39, v109, v22
	v_fmac_f32_e32 v40, v47, v42
	v_rcp_f32_e32 v39, v50
	v_fma_f32 v47, -v43, v45, 1.0
	v_rcp_f32_e32 v54, v52
	v_div_scale_f32 v37, s4, v9, v109, v9
	v_fma_f32 v38, -v46, v40, v38
	v_div_scale_f32 v46, null, v109, v109, v11
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
	v_div_scale_f32 v44, s2, v10, v109, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v40, v40, v41, v48
	v_div_fixup_f32 v23, v38, v109, v23
	v_fmac_f32_e32 v39, v51, v39
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v49, -v46, v47, 1.0
	v_div_fixup_f32 v24, v40, v109, v24
	v_fma_f32 v40, -v52, v54, 1.0
	v_mul_f32_e32 v53, v44, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v11, v109, v11
	v_fmac_f32_e32 v54, v40, v54
	v_div_scale_f32 v40, s3, v12, v109, v12
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
	v_div_scale_f32 v41, null, v109, v109, v13
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
	v_div_scale_f32 v44, null, v109, v109, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v41, v38, 1.0
	v_div_fmas_f32 v39, v42, v39, v53
	v_fma_f32 v42, -v46, v48, v49
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v46, v44
	v_fmac_f32_e32 v38, v45, v38
	v_div_scale_f32 v45, s2, v13, v109, v13
	v_div_fmas_f32 v42, v42, v47, v48
	v_fma_f32 v47, -v52, v43, v40
	v_div_fixup_f32 v9, v37, v109, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v37, v45, v38
	v_div_fixup_f32 v10, v39, v109, v10
	v_div_fixup_f32 v11, v42, v109, v11
	v_fmac_f32_e32 v43, v47, v54
	v_fma_f32 v39, -v44, v46, 1.0
	v_div_scale_f32 v42, null, v109, v109, v15
	v_fma_f32 v47, -v41, v37, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v40, -v52, v43, v40
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v46, v39, v46
	v_div_scale_f32 v39, s4, v14, v109, v14
	v_rcp_f32_e32 v48, v42
	v_div_fmas_f32 v40, v40, v54, v43
	v_fmac_f32_e32 v37, v47, v38
	v_div_scale_f32 v47, null, v109, v109, v16
	v_mul_f32_e32 v43, v39, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v12, v40, v109, v12
	v_fma_f32 v40, -v41, v37, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v49, v47
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v41, -v44, v43, v39
	v_fma_f32 v45, -v42, v48, 1.0
	v_div_fmas_f32 v37, v40, v38, v37
	v_div_scale_f32 v38, null, v109, v109, v1
	v_div_scale_f32 v40, s2, v15, v109, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v48, v45, v48
	v_fmac_f32_e32 v43, v41, v46
	v_div_fixup_f32 v13, v37, v109, v13
	v_fma_f32 v37, -v47, v49, 1.0
	v_rcp_f32_e32 v41, v38
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v39, -v44, v43, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v44, v40, v48 :: v_dual_fmac_f32 v49, v37, v49
	v_div_scale_f32 v37, s3, v16, v109, v16
	v_div_scale_f32 v45, null, v109, v109, v2
	v_div_fmas_f32 v39, v39, v46, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v42, v44, v40
	v_mul_f32_e32 v46, v37, v49
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v50, -v38, v41, 1.0
	v_rcp_f32_e32 v51, v45
	v_div_fixup_f32 v14, v39, v109, v14
	v_fmac_f32_e32 v44, v43, v48
	v_fma_f32 v43, -v47, v46, v37
	v_fmac_f32_e32 v41, v50, v41
	v_div_scale_f32 v50, null, v109, v109, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v42, v44, v40
	v_fmac_f32_e32 v46, v43, v49
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v52, s4, v1, v109, v1
	v_fma_f32 v53, -v45, v51, 1.0
	v_rcp_f32_e32 v54, v50
	v_div_fmas_f32 v39, v39, v48, v44
	v_fma_f32 v37, -v47, v46, v37
	v_div_scale_f32 v44, null, v109, v109, v4
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v55, v52, v41
	v_fmac_f32_e32 v51, v53, v51
	v_div_scale_f32 v53, s5, v2, v109, v2
	v_div_fmas_f32 v37, v37, v49, v46
	v_rcp_f32_e32 v46, v44
	v_fma_f32 v40, -v38, v55, v52
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v42, v53, v51
	v_fma_f32 v43, -v50, v54, 1.0
	v_div_fixup_f32 v15, v39, v109, v15
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v55, v40, v41
	v_fma_f32 v40, -v45, v42, v53
	v_fmac_f32_e32 v54, v43, v54
	v_div_scale_f32 v43, s2, v3, v109, v3
	v_fma_f32 v39, -v44, v46, 1.0
	v_fma_f32 v38, -v38, v55, v52
	v_div_fixup_f32 v16, v37, v109, v16
	v_div_scale_f32 v48, null, v109, v109, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v46, v39, v46
	v_fmac_f32_e32 v42, v40, v51
	v_mul_f32_e32 v40, v43, v54
	v_div_fmas_f32 v38, v38, v41, v55
	v_div_scale_f32 v39, null, v109, v109, v6
	v_fma_f32 v41, -v45, v42, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v50, v40, v43
	v_div_fixup_f32 v1, v38, v109, v1
	v_div_scale_f32 v38, null, v109, v109, v5
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v40, v45, v54
	v_div_fmas_f32 v41, v41, v51, v42
	s_mov_b32 vcc_lo, s2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v50, v40, v43
	v_rcp_f32_e32 v43, v39
	v_rcp_f32_e32 v50, v48
	v_div_fixup_f32 v2, v41, v109, v2
	v_div_scale_f32 v41, null, v109, v109, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	v_cndmask_b32_e64 v12, 0, v12, s1
	v_cndmask_b32_e64 v13, 0, v13, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v45, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v39, v43, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	v_cndmask_b32_e64 v16, 0, v16, s1
	v_cndmask_b32_e64 v1, 0, v1, s1
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v49, v43
	v_div_scale_f32 v49, s3, v6, v109, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v52, -v41, v45, 1.0
	v_mul_f32_e32 v55, v49, v43
	v_div_fmas_f32 v37, v37, v54, v40
	v_rcp_f32_e32 v40, v38
	v_div_scale_f32 v42, vcc_lo, v4, v109, v4
	v_fma_f32 v54, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v3, v37, v109, v3
	v_fmac_f32_e32 v45, v52, v45
	v_mul_f32_e32 v47, v42, v46
	v_div_scale_f32 v52, s4, v7, v109, v7
	v_fmac_f32_e32 v50, v54, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v38, v40, 1.0
	v_div_scale_f32 v54, s5, v8, v109, v8
	v_fma_f32 v51, -v44, v47, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v40, v37, v40 :: v_dual_mul_f32 v57, v54, v50
	v_div_scale_f32 v37, s2, v5, v109, v5
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
	v_cmp_gt_i32_e64 s2, s29, v34
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v42, v109, v4
	v_fma_f32 v39, -v39, v55, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v38, v53, v37
	v_fma_f32 v38, -v48, v57, v54
	v_mul_f32_e32 v56, v52, v45
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v40, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v57, v38, v50
	v_fma_f32 v51, -v41, v56, v52
	s_mov_b32 vcc_lo, s3
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s29, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v5, v37, v109, v5
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v37, s18, v110
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v56, v51, v45
	v_div_fmas_f32 v39, v39, v43, v55
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v40, -v48, v57, v54
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v37, s29, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v41, v56, v52
	v_div_fixup_f32 v6, v39, v109, v6
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v45, v56
	s_mov_b32 vcc_lo, s5
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_add_lshl_u32 v0, v37, v0, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v40, v50, v57
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s29, v35
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v38, v109, v7
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v38, v37, v35, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v8, v40, v109, v8
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v35, 8, v38
	v_add_nc_u32_e32 v39, 16, v38
	v_cndmask_b32_e32 v40, 0x80000000, v38, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s29, v36
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	s_clause 0x2
	buffer_store_b32 v25, v40, s[16:19], 0 offen
	buffer_store_b32 v26, v35, s[16:19], 0 offen
	buffer_store_b32 v27, v39, s[16:19], 0 offen
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
	buffer_store_b32 v28, v25, s[16:19], 0 offen
	buffer_store_b32 v29, v26, s[16:19], 0 offen
	buffer_store_b32 v30, v27, s[16:19], 0 offen
	buffer_store_b32 v31, v35, s[16:19], 0 offen
	buffer_store_b32 v32, v39, s[16:19], 0 offen
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
	buffer_store_b32 v17, v25, s[16:19], 0 offen
	buffer_store_b32 v18, v26, s[16:19], 0 offen
	buffer_store_b32 v19, v27, s[16:19], 0 offen
	v_add_nc_u32_e32 v18, 0x68, v38
	v_add_nc_u32_e32 v19, 0x70, v38
	v_cndmask_b32_e32 v17, 0x80000000, v29, vcc_lo
	buffer_store_b32 v20, v28, s[16:19], 0 offen
	v_add_nc_u32_e32 v20, 0x78, v38
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	buffer_store_b32 v21, v17, s[16:19], 0 offen
	v_add_lshl_u32 v17, v37, v34, 2
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s2
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v22, v18, s[16:19], 0 offen
	v_add_nc_u32_e32 v18, 0x88, v38
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v19, s[16:19], 0 offen
	buffer_store_b32 v24, v20, s[16:19], 0 offen
	buffer_store_b32 v9, v17, s[16:19], 0 offen
	v_add_nc_u32_e32 v9, 0x90, v38
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	v_add_nc_u32_e32 v18, 0x98, v38
	v_add_nc_u32_e32 v19, 0xa0, v38
	v_add_nc_u32_e32 v20, 0xa8, v38
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_store_b32 v10, v17, s[16:19], 0 offen
	v_dual_cndmask_b32 v10, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v19
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	buffer_store_b32 v11, v9, s[16:19], 0 offen
	v_add_nc_u32_e32 v9, 0xb0, v38
	s_clause 0x2
	buffer_store_b32 v12, v10, s[16:19], 0 offen
	buffer_store_b32 v13, v17, s[16:19], 0 offen
	buffer_store_b32 v14, v18, s[16:19], 0 offen
	v_add_nc_u32_e32 v10, 0xb8, v38
	v_add_lshl_u32 v11, v37, v33, 2
	v_add_nc_u32_e32 v12, 0xc8, v38
	v_add_nc_u32_e32 v13, 0xd0, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_cndmask_b32 v12, 0x80000000, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v9, s[16:19], 0 offen
	buffer_store_b32 v16, v10, s[16:19], 0 offen
	buffer_store_b32 v1, v11, s[16:19], 0 offen
	buffer_store_b32 v2, v12, s[16:19], 0 offen
	buffer_store_b32 v3, v13, s[16:19], 0 offen
	v_add_nc_u32_e32 v1, 0xd8, v38
	v_add_nc_u32_e32 v2, 0xe0, v38
	v_add_nc_u32_e32 v3, 0xe8, v38
	v_add_nc_u32_e32 v9, 0xf0, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[16:19], 0 offen
	buffer_store_b32 v5, v2, s[16:19], 0 offen
	buffer_store_b32 v6, v3, s[16:19], 0 offen
	buffer_store_b32 v7, v9, s[16:19], 0 offen
	buffer_store_b32 v8, v0, s[16:19], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp56:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 163
		.amdhsa_next_free_sgpr 31
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 163
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12144
; TotalNumSgprs: 33
; NumVgprs: 163
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 33
; NumVGPRsForWavesPerEU: 163
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
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
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
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     163
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
