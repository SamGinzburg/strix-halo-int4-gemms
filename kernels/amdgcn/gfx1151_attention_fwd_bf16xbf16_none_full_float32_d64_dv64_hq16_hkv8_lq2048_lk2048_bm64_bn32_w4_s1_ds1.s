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
	s_clause 0x2
	s_load_b64 s[28:29], s[0:1], 0x5c
	s_load_b32 s26, s[0:1], 0x64
	s_load_b64 s[16:17], s[0:1], 0x38
	v_dual_mov_b32 v38, 0x7632 :: v_dual_and_b32 v15, 7, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v16, 3, v0
	v_mov_b32_e32 v37, 0x5410
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[24:25], s[0:1], 0x10
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v14, 3, v15
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s27, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s27, v16
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s18, s27, s2
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	s_mov_b32 s19, 0x76543210
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[85:86], null, s28, v16, v[14:15]
	s_mul_i32 s9, s28, s18
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s28, v14
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s8, s28, 5
	s_mul_i32 s10, s28, 48
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s21, s5, 0xffff
	v_dual_mov_b32 v104, 0xff800000 :: v_dual_add_nc_u32 v1, s9, v85
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v89, s28, 4, v85
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 788 26                        ; attention.py:788:26
	s_mov_b32 s20, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v2, 1, v1
	v_add_lshl_u32 v3, v89, s9, 1
	v_add_lshl_u32 v4, v1, s8, 1
	v_add_lshl_u32 v1, v1, s10, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_dual_mov_b32 v31, v25 :: v_dual_and_b32 v42, 16, v0
	v_cndmask_b32_e64 v5, 0x80000000, v3, s2
	v_cndmask_b32_e64 v9, 0x80000000, v4, s2
	v_cndmask_b32_e64 v17, 0x80000000, v1, s2
	s_clause 0x3
	buffer_load_b128 v[1:4], v2, s[20:23], 0 offen
	buffer_load_b128 v[5:8], v5, s[20:23], 0 offen
	buffer_load_b128 v[10:13], v9, s[20:23], 0 offen
	buffer_load_b128 v[33:36], v17, s[20:23], 0 offen
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, 0xfff0
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s0, s0, 10
	v_dual_mov_b32 v26, v25 :: v_dual_and_b32 v39, 15, v0
	v_dual_mov_b32 v27, v25 :: v_dual_and_b32 v40, 0x60, v0
	v_dual_mov_b32 v28, v25 :: v_dual_lshlrev_b32 v41, 1, v0
	s_and_b32 s2, s0, 0xffffc000
	v_cmp_eq_u32_e64 s0, 0, v42
	v_dual_mov_b32 v29, v25 :: v_dual_lshlrev_b32 v90, 4, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v30, v25 :: v_dual_and_b32 v41, 0x70, v41
	v_dual_mov_b32 v32, v25 :: v_dual_lshlrev_b32 v15, 4, v15
	v_dual_mov_b32 v17, v25 :: v_dual_lshlrev_b32 v44, 7, v39
	v_mov_b32_e32 v19, v25
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v43, 1, v40
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v40, 6, v40
	v_cndmask_b32_e64 v37, 0x1054, v37, s0
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	v_lshl_add_u32 v91, v39, 1, 0
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s3, s1, 0x10007
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v88, v43, v39
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v39, v90, v41
	v_or3_b32 v40, v44, v40, v15
	v_or_b32_e32 v92, v15, v44
	v_cndmask_b32_e64 v15, 0x3276, v38, s0
	v_lshl_or_b32 v37, v37, 8, v37
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s1, s1, s3
	v_dual_mov_b32 v18, v25 :: v_dual_add_nc_u32 v93, 0, v39
	s_bfe_i32 s0, s1, 0x80000
	v_dual_mov_b32 v20, v25 :: v_dual_add_nc_u32 v39, 0, v40
	v_dual_mov_b32 v22, v25 :: v_dual_and_b32 v37, 0x540054, v37
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v38, s27, v88
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v41, v40, 16, 0
	v_xad_u32 v42, v40, 32, 0
	v_xad_u32 v45, v40, 48, 0
	v_xad_u32 v49, v40, 64, 0
	v_xad_u32 v53, 0x50, v40, 0
	v_xad_u32 v57, 0x60, v40, 0
	v_xad_u32 v61, 0x70, v40, 0
	v_xor_b32_e32 v40, 16, v92
	v_xor_b32_e32 v43, 32, v92
	v_xor_b32_e32 v44, 48, v92
	v_xor_b32_e32 v46, 64, v92
	v_xor_b32_e32 v47, 0x50, v92
	v_xor_b32_e32 v48, 0x60, v92
	v_xor_b32_e32 v50, 0x70, v92
	v_lshl_or_b32 v15, v15, 8, v15
	.loc	1 758 19                        ; attention.py:758:19
	s_sext_i32_i16 s0, s0
	v_dual_mov_b32 v21, v25 :: v_dual_add_nc_u32 v94, 0, v40
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s0, s0, 10
	v_dual_mov_b32 v23, v25 :: v_dual_add_nc_u32 v96, 0, v44
	v_dual_mov_b32 v9, v25 :: v_dual_add_nc_u32 v98, 0, v47
	s_and_b32 s31, s0, 0xfffff800
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s29, v14
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[86:87], null, s29, v16, v[14:15]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x800, v38
	v_lshl_or_b32 v14, v37, 4, v37
	v_add_nc_u32_e32 v95, 0, v43
	v_add_nc_u32_e32 v97, 0, v46
	v_add_nc_u32_e32 v99, 0, v48
	v_add_nc_u32_e32 v100, 0, v50
	v_dual_mov_b32 v24, v25 :: v_dual_and_b32 v15, 0x760076, v15
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v101, s29, 4, v86
	v_and_b32_e32 v102, 0x5040504, v14
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v16, v25
	v_lshl_or_b32 v15, v15, 4, v15
	v_mov_b32_e32 v87, v25
	s_mov_b32 s8, 0
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s30, s26, 0x3fb8aa3b
	s_mov_b32 s9, s8
	v_and_b32_e32 v103, 0x7060706, v15
	v_mov_b32_e32 v15, v25
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	s_and_b32 s21, s7, 0xffff
	s_and_b32 s25, s25, 0xffff
	.loc	1 852 32                        ; attention.py:852:32
	s_add_i32 s31, s31, s2
	s_mov_b32 s20, s6
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s6, s8
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v93, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v93, v[5:8] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v93, v[10:13] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v93, v[33:36] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v39
	ds_load_b128 v[37:40], v41
	ds_load_b128 v[41:44], v42
	ds_load_b128 v[45:48], v45
	ds_load_b128 v[49:52], v49
	ds_load_b128 v[53:56], v53
	ds_load_b128 v[57:60], v57
	ds_load_b128 v[61:64], v61
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v13, v25
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
	s_add_i32 s2, s6, s31
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v72, s15 :: v_dual_add_nc_u32 v81, 0, v92
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s3, s2, s28
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v71, s14 :: v_dual_mov_b32 v70, s13
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v73, s3, v85, 1
	v_add_lshl_u32 v74, s3, v89, 1
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v69, s12 :: v_dual_mov_b32 v68, s11
	v_dual_mov_b32 v67, s10 :: v_dual_mov_b32 v66, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	v_cndmask_b32_e32 v77, 0x80000000, v74, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[73:76], v73, s[20:23], 0 offen
	buffer_load_b128 v[77:80], v77, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b32_e32 v65, s8
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s2, s2, s29
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(1)
	ds_store_b128 v93, v[73:76]
	s_waitcnt vmcnt(0)
	ds_store_b128 v93, v[77:80] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[77:80], v94
	ds_load_b128 v[73:76], v81
	ds_load_b128 v[105:108], v81 offset:2048
	ds_load_b128 v[109:112], v94 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[73:80], v[33:40], v[65:72]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[105:112], v[33:40], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[69:72], v96
	ds_load_b128 v[65:68], v95
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v106, 0, v90
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[65:72], v[41:48], v[113:120]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v95 offset:2048
	ds_load_b128 v[69:72], v96 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[65:72], v[41:48], v[73:80]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[69:72], v98
	ds_load_b128 v[65:68], v97
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[65:72], v[49:56], v[113:120]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v97 offset:2048
	ds_load_b128 v[69:72], v98 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[65:72], v[49:56], v[73:80]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[69:72], v100
	ds_load_b128 v[65:68], v99
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[65:72], v[57:64], v[113:120]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v99 offset:2048
	ds_load_b128 v[69:72], v100 offset:2048
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v105, s30, v117 :: v_dual_mul_f32 v108, s30, v119
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[65:72], v[57:64], v[73:80]
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v65, s2, v86, 1
	v_add_lshl_u32 v66, s2, v101, 1
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v69, s30, v113 :: v_dual_mul_f32 v72, s30, v116
	v_mul_f32_e32 v70, s30, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	v_cndmask_b32_e64 v81, 0x80000000, v66, s1
	s_clause 0x1
	buffer_load_b128 v[65:68], v65, s[24:27], 0 offen
	buffer_load_b128 v[81:84], v81, s[24:27], 0 offen
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v107, s30, v118 :: v_dual_mul_f32 v76, s30, v76
	v_dual_mul_f32 v71, s30, v115 :: v_dual_mul_f32 v74, s30, v74
	v_dual_mul_f32 v109, s30, v120 :: v_dual_mul_f32 v78, s30, v78
	v_dual_mul_f32 v73, s30, v73 :: v_dual_mul_f32 v80, s30, v80
	v_mul_f32_e32 v75, s30, v75
	v_mul_f32_e32 v77, s30, v77
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v71, 0xff800000, v71, s0
	v_cndmask_b32_e64 v110, 0xff800000, v76, s0
	v_cndmask_b32_e64 v111, 0xff800000, v77, s0
	v_cndmask_b32_e64 v112, 0xff800000, v78, s0
	v_cndmask_b32_e64 v114, 0xff800000, v80, s0
	v_cndmask_b32_e64 v80, 0xff800000, v109, s0
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	ds_store_b128 v106, v[65:68]
	s_waitcnt vmcnt(0)
	ds_store_b128 v106, v[81:84] offset:2048
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v65, 0xff800000, v69, s0
	v_cndmask_b32_e64 v66, 0xff800000, v70, s0
	v_cndmask_b32_e64 v67, 0xff800000, v72, s0
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v79, s30, v79
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v68, 0xff800000, v105, s0
	v_cndmask_b32_e64 v70, 0xff800000, v107, s0
	v_cndmask_b32_e64 v72, 0xff800000, v74, s0
	v_cndmask_b32_e64 v107, 0xff800000, v75, s0
	v_cndmask_b32_e64 v113, 0xff800000, v79, s0
	v_cndmask_b32_e64 v79, 0xff800000, v108, s0
	v_cndmask_b32_e64 v108, 0xff800000, v73, s0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v65, v66
	v_max3_f32 v73, v67, v68, v70
	v_max3_f32 v74, v72, v107, v110
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v69, v69, v71, v73
	v_max3_f32 v73, v111, v112, v113
	v_max3_f32 v73, v74, v73, v114
	v_max3_f32 v74, v79, v80, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v73, v69, v74, v73
.Ltmp4:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v69.h, 0
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v74, v73, s19, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp6:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v105, v104, v73, v74
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v73.h, v69.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v65, v105
	v_sub_f32_e32 v66, v66, v105
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v66, v66
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v109, 0, v65, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v115, 0, v66, s0
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v73.l, v109.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v69.l, v115.h
	v_cmp_o_f32_e64 s2, v115, v115
	v_cmp_o_f32_e64 s3, v109, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v65, 1, v73
	v_and_b32_e32 v66, 1, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v65, v109, v65, 0x7fff
	v_add3_u32 v66, v115, v66, 0x7fff
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v109, v109, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp8:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s3
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v65, v66, s19, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v73, v65, v66, v102
	v_perm_b32 v74, v65, v66, v103
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v71, v105
	v_sub_f32_e32 v66, v67, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v65, s0
	v_cndmask_b32_e64 v116, 0, v66, s0
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v65.h, v69.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v65.l, v71.h
	v_mov_b16_e32 v69.l, v116.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s2, v116, v116
	v_cmp_o_f32_e64 s3, v71, v71
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v66, 1, v69
	v_add3_u32 v65, v71, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v66, v116, v66, 0x7fff
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v71, v71, v116
.Ltmp10:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v65.l, 0x7fff, v65.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s2
	v_permlanex16_b32 v66, v65, s19, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_perm_b32 v75, v66, v65, v102
	v_perm_b32 v76, v66, v65, v103
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v68, v105
	v_sub_f32_e32 v66, v70, v105
	v_sub_f32_e32 v68, v110, v105
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v65, s0
	v_cndmask_b32_e64 v117, 0, v66, s0
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v65.h, v69.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v110, 0, v68, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v65.l, v70.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v69.l, v117.h
	v_cmp_o_f32_e64 s2, v117, v117
	v_cmp_o_f32_e64 s3, v70, v70
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v66, 1, v69
	v_add3_u32 v65, v70, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v66, v117, v66, 0x7fff
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v70, v117
.Ltmp12:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v65.l, 0x7fff, v65.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s2
	v_permlanex16_b32 v66, v65, s19, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v77, v66, v65, v102
	v_perm_b32 v78, v66, v65, v103
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v79, v105
	v_sub_f32_e32 v66, v80, v105
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v66, v66
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v118, 0, v65, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v119, 0, v66, s0
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v65.h, v69.h
	v_mov_b16_e32 v65.l, v118.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v69.l, v119.h
	v_cmp_o_f32_e64 s2, v119, v119
	v_cmp_o_f32_e64 s3, v118, v118
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v115, v118, v119
.Ltmp14:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v65, 1, v65
	v_and_b32_e32 v66, 1, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v65, v118, v65, 0x7fff
	v_add3_u32 v66, v119, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v65.l, 0x7fff, v65.h, s3
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v66, v65, s19, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v79, v66, v65, v102
	v_perm_b32 v80, v66, v65, v103
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v108, v105
	v_sub_f32_e32 v66, v72, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v65, s0
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v65.h, v69.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v108, 0, v66, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v65.l, v72.h
	v_cmp_o_f32_e64 s3, v72, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v69.l, v108.h
	v_cmp_o_f32_e64 s2, v108, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v65, 1, v65
	v_add3_u32 v65, v72, v65, 0x7fff
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v72, v72, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp16:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s3
	v_and_b32_e32 v65, 1, v69
	v_mov_b16_e32 v69.l, v110.h
	v_add3_u32 v65, v108, v65, 0x7fff
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v108, v109, v71
	v_dual_add_f32 v109, v70, v115 :: v_dual_sub_f32 v70, v111, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp18:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v66.h, 0x7fff, v65.h, s2
	v_cmp_o_f32_e64 s2, v110, v110
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v108, v108, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp20:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v67, v66, s19, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v65, v67, v66, v102
	v_perm_b32 v66, v67, v66, v103
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v107, v105
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v107, 0, v67, s0
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v67.h, v69.h
	v_mov_b16_e32 v67.l, v107.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v107, v107
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v67, v107, v67, 0x7fff
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v107, v107, v110
.Ltmp22:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s3
	v_and_b32_e32 v67, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v67, v110, v67, 0x7fff
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v110, v72, v107
.Ltmp24:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v113, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v68.h, 0x7fff, v67.h, s2
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v104
	.loc	1 885 74 is_stmt 0              ; attention.py:885:74
	v_sub_f32_e32 v104, v104, v105
	.loc	1 886 49 is_stmt 1              ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v120, v68, s19, 0xfedcba98 op_sel:[1,0]
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v104, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v67, v120, v68, v102
	v_perm_b32 v68, v120, v68, v103
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v104, 0, v104, s2
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v112, v105
	v_sub_f32_e32 v107, v114, v105
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v72, v72
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v12, v12, v104
	v_mul_f32_e32 v14, v14, v104
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	v_exp_f32_e32 v111, v107
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v107, 0, v70, s0
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v2, v2, v104
	v_mul_f32_e32 v25, v25, v104
	v_mul_f32_e32 v26, v26, v104
	v_mul_f32_e32 v27, v27, v104
	v_mul_f32_e32 v28, v28, v104
	v_mul_f32_e32 v29, v29, v104
	v_mul_f32_e32 v30, v30, v104
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s0
	v_cndmask_b32_e64 v70, 0, v111, s0
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v31, v31, v104
	v_mul_f32_e32 v32, v32, v104
	v_mul_f32_e32 v17, v17, v104
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v111, v107, v71 :: v_dual_add_f32 v112, v72, v70
.Ltmp26:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v18, v18, v104
	v_mul_f32_e32 v19, v19, v104
	v_mul_f32_e32 v20, v20, v104
	v_mul_f32_e32 v21, v21, v104
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v111, v111, v112
.Ltmp28:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v22, v22, v104
	v_mul_f32_e32 v23, v23, v104
	v_mul_f32_e32 v24, v24, v104
	v_mul_f32_e32 v9, v9, v104
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v109, v110, v111
.Ltmp30:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v104
	v_mul_f32_e32 v11, v11, v104
	v_mul_f32_e32 v13, v13, v104
	v_mul_f32_e32 v15, v15, v104
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v109, v108, v109 :: v_dual_mov_b32 v108, v87
.Ltmp32:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v104
	v_mul_f32_e32 v3, v3, v104
	v_mul_f32_e32 v4, v4, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v87, v109, s19, 0xfedcba98 op_sel:[1,0]
.Ltmp34:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v104
	v_mul_f32_e32 v6, v6, v104
	v_mul_f32_e32 v7, v7, v104
	v_dual_mul_f32 v8, v8, v104 :: v_dual_add_f32 v87, v109, v87
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v69.l, v71.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v104
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s2, v107, v107
	v_cmp_o_f32_e64 s4, v71, v71
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v87, v108, v104
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v104.h, v69.h
	v_mov_b16_e32 v104.l, v107.h
	v_cmp_o_f32_e64 s5, v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v104, 1, v104
	v_add3_u32 v104, v107, v104, 0x7fff
	v_mov_b16_e32 v107.h, v69.h
	v_mov_b16_e32 v107.l, v72.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v107, 1, v107
	v_add3_u32 v72, v72, v107, 0x7fff
	v_and_b32_e32 v107, 1, v69
	v_mov_b16_e32 v69.l, v70.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v72.l, 0x7fff, v72.h, s3
	v_add3_u32 v71, v71, v107, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v106, v91
	ds_load_u16_d16 v109, v91 offset:768
	ds_load_u16_d16 v110, v91 offset:1024
	ds_load_u16_d16 v111, v91 offset:1280
	ds_load_u16_d16 v112, v91 offset:1536
	ds_load_u16_d16 v113, v91 offset:1792
	ds_load_u16_d16 v108, v91 offset:512
	ds_load_u16_d16 v107, v91 offset:256
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v106, v91 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v109, v91 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v110, v91 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v111, v91 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v112, v91 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v113, v91 offset:1920
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v108, v91 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v107, v91 offset:384
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v69, 1, v69
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v69, v70, v69, 0x7fff
	v_cndmask_b16 v70.l, 0x7fff, v104.h, s2
	v_cndmask_b16 v70.h, 0x7fff, v71.h, s4
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s2, s6, 32
	s_cmpk_lt_u32 s6, 0x7e0
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v72.h, 0x7fff, v69.h, s5
	s_mov_b32 s6, s2
	v_permlanex16_b32 v71, v70, s19, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v104, v72, s19, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v71, v70, v102
	v_perm_b32 v70, v71, v70, v103
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[106:113], v[73:80], v[25:32]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v106, v91 offset:32
	ds_load_u16_d16 v107, v91 offset:288
	ds_load_u16_d16 v108, v91 offset:544
	ds_load_u16_d16 v109, v91 offset:800
	ds_load_u16_d16 v110, v91 offset:1056
	ds_load_u16_d16 v111, v91 offset:1312
	ds_load_u16_d16 v112, v91 offset:1568
	ds_load_u16_d16 v113, v91 offset:1824
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v106, v91 offset:160
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v107, v91 offset:416
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v108, v91 offset:672
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v109, v91 offset:928
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v110, v91 offset:1184
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v111, v91 offset:1440
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v112, v91 offset:1696
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v113, v91 offset:1952
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v71, v104, v72, v102
	v_perm_b32 v72, v104, v72, v103
	v_mov_b32_e32 v104, v105
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[106:113], v[73:80], v[17:24]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v108, v91 offset:576
	ds_load_u16_d16 v109, v91 offset:832
	ds_load_u16_d16 v110, v91 offset:1088
	ds_load_u16_d16 v111, v91 offset:1344
	ds_load_u16_d16 v112, v91 offset:1600
	ds_load_u16_d16 v113, v91 offset:1856
	ds_load_u16_d16 v106, v91 offset:64
	ds_load_u16_d16 v107, v91 offset:320
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v108, v91 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v109, v91 offset:960
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v110, v91 offset:1216
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v111, v91 offset:1472
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v112, v91 offset:1728
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v113, v91 offset:1984
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v106, v91 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v107, v91 offset:448
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[106:113], v[73:80], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v107, v91 offset:352
	ds_load_u16_d16 v106, v91 offset:96
	ds_load_u16_d16 v108, v91 offset:608
	ds_load_u16_d16 v109, v91 offset:864
	ds_load_u16_d16 v110, v91 offset:1120
	ds_load_u16_d16 v111, v91 offset:1376
	ds_load_u16_d16 v112, v91 offset:1632
	ds_load_u16_d16 v113, v91 offset:1888
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v107, v91 offset:480
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v106, v91 offset:224
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v108, v91 offset:736
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v109, v91 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v110, v91 offset:1248
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v111, v91 offset:1504
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v112, v91 offset:1760
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v113, v91 offset:2016
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[106:113], v[73:80], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v73, v91 offset:2048
	ds_load_u16_d16 v75, v91 offset:2560
	ds_load_u16_d16 v76, v91 offset:2816
	ds_load_u16_d16 v77, v91 offset:3072
	ds_load_u16_d16 v78, v91 offset:3328
	ds_load_u16_d16 v79, v91 offset:3584
	ds_load_u16_d16 v80, v91 offset:3840
	ds_load_u16_d16 v74, v91 offset:2304
	ds_load_u16_d16 v106, v91 offset:2080
	ds_load_u16_d16 v107, v91 offset:2336
	ds_load_u16_d16 v108, v91 offset:2592
	ds_load_u16_d16 v109, v91 offset:2848
	ds_load_u16_d16 v110, v91 offset:3104
	ds_load_u16_d16 v111, v91 offset:3360
	ds_load_u16_d16 v112, v91 offset:3616
	ds_load_u16_d16 v113, v91 offset:3872
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v73, v91 offset:2176
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v75, v91 offset:2688
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v76, v91 offset:2944
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v77, v91 offset:3200
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v78, v91 offset:3456
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v79, v91 offset:3712
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v80, v91 offset:3968
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v74, v91 offset:2432
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[73:80], v[65:72], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v73, v91 offset:2112
	ds_load_u16_d16 v74, v91 offset:2368
	ds_load_u16_d16 v75, v91 offset:2624
	ds_load_u16_d16 v76, v91 offset:2880
	ds_load_u16_d16 v77, v91 offset:3136
	ds_load_u16_d16 v78, v91 offset:3392
	ds_load_u16_d16 v79, v91 offset:3648
	ds_load_u16_d16 v80, v91 offset:3904
	ds_load_u16_d16_hi v106, v91 offset:2208
	ds_load_u16_d16_hi v107, v91 offset:2464
	ds_load_u16_d16_hi v108, v91 offset:2720
	ds_load_u16_d16_hi v109, v91 offset:2976
	ds_load_u16_d16_hi v110, v91 offset:3232
	ds_load_u16_d16_hi v111, v91 offset:3488
	ds_load_u16_d16_hi v112, v91 offset:3744
	ds_load_u16_d16_hi v113, v91 offset:4000
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[106:113], v[65:72], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v106, v91 offset:2144
	ds_load_u16_d16 v107, v91 offset:2400
	ds_load_u16_d16 v108, v91 offset:2656
	ds_load_u16_d16 v109, v91 offset:2912
	ds_load_u16_d16 v110, v91 offset:3168
	ds_load_u16_d16 v111, v91 offset:3424
	ds_load_u16_d16 v112, v91 offset:3680
	ds_load_u16_d16 v113, v91 offset:3936
	ds_load_u16_d16_hi v73, v91 offset:2240
	ds_load_u16_d16_hi v74, v91 offset:2496
	ds_load_u16_d16_hi v75, v91 offset:2752
	ds_load_u16_d16_hi v76, v91 offset:3008
	ds_load_u16_d16_hi v77, v91 offset:3264
	ds_load_u16_d16_hi v78, v91 offset:3520
	ds_load_u16_d16_hi v79, v91 offset:3776
	ds_load_u16_d16_hi v80, v91 offset:4032
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v106, v91 offset:2272
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v107, v91 offset:2528
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v108, v91 offset:2784
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v109, v91 offset:3040
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v110, v91 offset:3296
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v111, v91 offset:3552
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v112, v91 offset:3808
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v113, v91 offset:4064
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[73:80], v[65:72], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[106:113], v[65:72], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v37, null, v87, v87, v25
	v_div_scale_f32 v38, null, v87, v87, v26
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v33, 4, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v39, v37
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v35, v0, 4, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v40, v38
	v_div_scale_f32 v42, null, v87, v87, v27
	v_div_scale_f32 v41, vcc_lo, v25, v87, v25
	v_div_scale_f32 v43, null, v87, v87, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v45, v42
	v_fma_f32 v0, -v37, v39, 1.0
	v_div_scale_f32 v44, s1, v26, v87, v26
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v38, v40, 1.0
	v_rcp_f32_e32 v46, v43
	v_fmac_f32_e32 v39, v0, v39
	v_div_scale_f32 v47, s2, v27, v87, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v40, v34, v40
	v_fma_f32 v36, -v42, v45, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v48, v41, v39
	v_div_scale_f32 v53, null, v87, v87, v18
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
	v_div_scale_f32 v51, s3, v28, v87, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v52, v40
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v33, 48, v35
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v37, v48, v41
	v_div_scale_f32 v41, null, v87, v87, v29
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
	v_cmp_lt_f32_e64 s1, 0, v87
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v40, v49
	v_div_fixup_f32 v25, v37, v87, v25
	v_div_scale_f32 v37, null, v87, v87, v30
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v26, v38, v87, v26
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
	v_div_scale_f32 v49, s2, v30, v87, v30
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v50, v52, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v42, v50, v47
	v_div_scale_f32 v42, s4, v29, v87, v29
	v_mul_f32_e32 v48, v51, v46
	v_div_scale_f32 v47, null, v87, v87, v31
	v_div_fmas_f32 v38, v38, v45, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v42, v39
	v_fma_f32 v44, -v43, v48, v51
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v50, null, v87, v87, v32
	v_div_fixup_f32 v27, v38, v87, v27
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
	v_div_fixup_f32 v28, v43, v87, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v45, v46, v39
	v_div_scale_f32 v46, null, v87, v87, v17
	v_fma_f32 v38, -v37, v48, v49
	v_fma_f32 v51, -v47, v44, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v41, v45, v42
	v_rcp_f32_e32 v42, v46
	v_div_scale_f32 v43, s3, v31, v87, v31
	v_fmac_f32_e32 v48, v38, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v41, v39, v45
	s_mov_b32 vcc_lo, s2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v37, v48, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v29, v39, v87, v29
	v_fma_f32 v49, -v46, v42, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v37, v37, v40, v48
	v_div_scale_f32 v48, s2, v17, v87, v17
	v_fmac_f32_e32 v42, v49, v42
	v_fmac_f32_e32 v44, v51, v44
	v_fma_f32 v51, -v50, v52, 1.0
	v_rcp_f32_e32 v40, v53
	v_div_fixup_f32 v30, v37, v87, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v39, v48, v42 :: v_dual_mul_f32 v38, v43, v44
	v_fmac_f32_e32 v52, v51, v52
	v_div_scale_f32 v51, s5, v32, v87, v32
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v41, -v47, v38, v43
	v_div_scale_f32 v49, null, v87, v87, v20
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
	v_div_scale_f32 v43, null, v87, v87, v19
	v_fmac_f32_e32 v45, v41, v52
	v_fma_f32 v41, -v53, v40, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v37, v37, v44, v38
	v_fma_f32 v44, -v46, v39, v48
	v_div_scale_f32 v47, s3, v18, v87, v18
	v_fmac_f32_e32 v40, v41, v40
	v_rcp_f32_e32 v41, v43
	v_fma_f32 v38, -v50, v45, v51
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v31, v37, v87, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v38, v38, v52, v45
	v_mul_f32_e32 v45, v47, v40
	v_fmac_f32_e32 v39, v44, v42
	v_rcp_f32_e32 v44, v49
	v_fma_f32 v50, -v43, v41, 1.0
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v32, v38, v87, v32
	v_fma_f32 v37, -v46, v39, v48
	v_fma_f32 v38, -v53, v45, v47
	v_fmac_f32_e32 v41, v50, v41
	v_div_scale_f32 v50, null, v87, v87, v21
	v_div_scale_f32 v46, s4, v19, v87, v19
	v_div_fmas_f32 v37, v37, v42, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v39, v50
	v_fma_f32 v48, -v49, v44, 1.0
	v_fmac_f32_e32 v45, v38, v40
	v_mul_f32_e32 v38, v46, v41
	v_div_scale_f32 v42, s2, v20, v87, v20
	v_fmac_f32_e32 v44, v48, v44
	v_div_fixup_f32 v17, v37, v87, v17
	v_fma_f32 v37, -v53, v45, v47
	v_fma_f32 v47, -v43, v38, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v53, -v50, v39, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v48, null, v87, v87, v22
	v_fmac_f32_e32 v38, v47, v41
	v_div_fmas_f32 v37, v37, v40, v45
	v_fmac_f32_e32 v39, v53, v39
	v_div_scale_f32 v45, s3, v21, v87, v21
	v_mul_f32_e32 v51, v42, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v18, v37, v87, v18
	v_fma_f32 v37, -v43, v38, v46
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v52, v48
	v_fma_f32 v40, -v49, v51, v42
	v_div_scale_f32 v46, null, v87, v87, v23
	v_div_fmas_f32 v37, v37, v41, v38
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v51, v40, v44 :: v_dual_mul_f32 v40, v45, v39
	v_div_scale_f32 v43, s5, v22, v87, v22
	v_fma_f32 v47, -v48, v52, 1.0
	v_div_fixup_f32 v19, v37, v87, v19
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
	v_div_scale_f32 v49, null, v87, v87, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v50, v40, v45
	v_div_fmas_f32 v38, v38, v44, v51
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v49
	v_div_scale_f32 v50, null, v87, v87, v10
	v_div_fixup_f32 v20, v38, v87, v20
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v46, v42, 1.0
	v_div_scale_f32 v38, s2, v23, v87, v23
	v_div_fmas_f32 v37, v37, v39, v40
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v42, v51, v42
	v_mul_f32_e32 v47, v43, v52
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v21, v37, v87, v21
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
	v_div_scale_f32 v44, s3, v24, v87, v24
	v_div_scale_f32 v43, null, v87, v87, v9
	v_mul_f32_e32 v48, v44, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v45, v43
	v_fma_f32 v37, -v49, v48, v44
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v48, v37, v41
	v_div_fmas_f32 v39, v39, v52, v47
	v_fma_f32 v47, -v46, v40, v38
	v_div_scale_f32 v52, null, v87, v87, v12
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v22, v39, v87, v22
	v_fmac_f32_e32 v40, v47, v42
	v_rcp_f32_e32 v39, v50
	v_fma_f32 v47, -v43, v45, 1.0
	v_rcp_f32_e32 v54, v52
	v_div_scale_f32 v37, s4, v9, v87, v9
	v_fma_f32 v38, -v46, v40, v38
	v_div_scale_f32 v46, null, v87, v87, v11
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
	v_div_scale_f32 v44, s2, v10, v87, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v40, v40, v41, v48
	v_div_fixup_f32 v23, v38, v87, v23
	v_fmac_f32_e32 v39, v51, v39
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v49, -v46, v47, 1.0
	v_div_fixup_f32 v24, v40, v87, v24
	v_fma_f32 v40, -v52, v54, 1.0
	v_mul_f32_e32 v53, v44, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v11, v87, v11
	v_fmac_f32_e32 v54, v40, v54
	v_div_scale_f32 v40, s3, v12, v87, v12
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
	v_div_scale_f32 v41, null, v87, v87, v13
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
	v_div_scale_f32 v44, null, v87, v87, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v41, v38, 1.0
	v_div_fmas_f32 v39, v42, v39, v53
	v_fma_f32 v42, -v46, v48, v49
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v46, v44
	v_fmac_f32_e32 v38, v45, v38
	v_div_scale_f32 v45, s2, v13, v87, v13
	v_div_fmas_f32 v42, v42, v47, v48
	v_fma_f32 v47, -v52, v43, v40
	v_div_fixup_f32 v9, v37, v87, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v37, v45, v38
	v_div_fixup_f32 v10, v39, v87, v10
	v_div_fixup_f32 v11, v42, v87, v11
	v_fmac_f32_e32 v43, v47, v54
	v_fma_f32 v39, -v44, v46, 1.0
	v_div_scale_f32 v42, null, v87, v87, v15
	v_fma_f32 v47, -v41, v37, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v40, -v52, v43, v40
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v46, v39, v46
	v_div_scale_f32 v39, s4, v14, v87, v14
	v_rcp_f32_e32 v48, v42
	v_div_fmas_f32 v40, v40, v54, v43
	v_fmac_f32_e32 v37, v47, v38
	v_div_scale_f32 v47, null, v87, v87, v16
	v_mul_f32_e32 v43, v39, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v12, v40, v87, v12
	v_fma_f32 v40, -v41, v37, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v49, v47
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v41, -v44, v43, v39
	v_fma_f32 v45, -v42, v48, 1.0
	v_div_fmas_f32 v37, v40, v38, v37
	v_div_scale_f32 v38, null, v87, v87, v1
	v_div_scale_f32 v40, s2, v15, v87, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v48, v45, v48
	v_fmac_f32_e32 v43, v41, v46
	v_div_fixup_f32 v13, v37, v87, v13
	v_fma_f32 v37, -v47, v49, 1.0
	v_rcp_f32_e32 v41, v38
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v39, -v44, v43, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v44, v40, v48 :: v_dual_fmac_f32 v49, v37, v49
	v_div_scale_f32 v37, s3, v16, v87, v16
	v_div_scale_f32 v45, null, v87, v87, v2
	v_div_fmas_f32 v39, v39, v46, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v42, v44, v40
	v_mul_f32_e32 v46, v37, v49
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v50, -v38, v41, 1.0
	v_rcp_f32_e32 v51, v45
	v_div_fixup_f32 v14, v39, v87, v14
	v_fmac_f32_e32 v44, v43, v48
	v_fma_f32 v43, -v47, v46, v37
	v_fmac_f32_e32 v41, v50, v41
	v_div_scale_f32 v50, null, v87, v87, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v42, v44, v40
	v_fmac_f32_e32 v46, v43, v49
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v52, s4, v1, v87, v1
	v_fma_f32 v53, -v45, v51, 1.0
	v_rcp_f32_e32 v54, v50
	v_div_fmas_f32 v39, v39, v48, v44
	v_fma_f32 v37, -v47, v46, v37
	v_div_scale_f32 v44, null, v87, v87, v4
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v55, v52, v41
	v_fmac_f32_e32 v51, v53, v51
	v_div_scale_f32 v53, s5, v2, v87, v2
	v_div_fmas_f32 v37, v37, v49, v46
	v_rcp_f32_e32 v46, v44
	v_fma_f32 v40, -v38, v55, v52
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v42, v53, v51
	v_fma_f32 v43, -v50, v54, 1.0
	v_div_fixup_f32 v15, v39, v87, v15
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v55, v40, v41
	v_fma_f32 v40, -v45, v42, v53
	v_fmac_f32_e32 v54, v43, v54
	v_div_scale_f32 v43, s2, v3, v87, v3
	v_fma_f32 v39, -v44, v46, 1.0
	v_fma_f32 v38, -v38, v55, v52
	v_div_fixup_f32 v16, v37, v87, v16
	v_div_scale_f32 v48, null, v87, v87, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v46, v39, v46
	v_fmac_f32_e32 v42, v40, v51
	v_mul_f32_e32 v40, v43, v54
	v_div_fmas_f32 v38, v38, v41, v55
	v_div_scale_f32 v39, null, v87, v87, v6
	v_fma_f32 v41, -v45, v42, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v50, v40, v43
	v_div_fixup_f32 v1, v38, v87, v1
	v_div_scale_f32 v38, null, v87, v87, v5
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
	v_div_fixup_f32 v2, v41, v87, v2
	v_div_scale_f32 v41, null, v87, v87, v7
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
	v_div_scale_f32 v49, s3, v6, v87, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v52, -v41, v45, 1.0
	v_mul_f32_e32 v55, v49, v43
	v_div_fmas_f32 v37, v37, v54, v40
	v_rcp_f32_e32 v40, v38
	v_div_scale_f32 v42, vcc_lo, v4, v87, v4
	v_fma_f32 v54, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v3, v37, v87, v3
	v_fmac_f32_e32 v45, v52, v45
	v_mul_f32_e32 v47, v42, v46
	v_div_scale_f32 v52, s4, v7, v87, v7
	v_fmac_f32_e32 v50, v54, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v38, v40, 1.0
	v_div_scale_f32 v54, s5, v8, v87, v8
	v_fma_f32 v51, -v44, v47, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v40, v37, v40 :: v_dual_mul_f32 v57, v54, v50
	v_div_scale_f32 v37, s2, v5, v87, v5
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
	v_div_fixup_f32 v4, v42, v87, v4
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
	v_div_fixup_f32 v5, v37, v87, v5
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v37, s18, v88
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v56, v51, v45
	v_div_fmas_f32 v39, v39, v43, v55
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v40, -v48, v57, v54
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v37, s29, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v41, v56, v52
	v_div_fixup_f32 v6, v39, v87, v6
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
	v_div_fixup_f32 v7, v38, v87, v7
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v38, v37, v35, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v8, v40, v87, v8
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
.Ltmp35:
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
		.amdhsa_next_free_vgpr 121
		.amdhsa_next_free_sgpr 32
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_vgpr, 121
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8696
; TotalNumSgprs: 34
; NumVgprs: 121
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 34
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
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.kd
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
