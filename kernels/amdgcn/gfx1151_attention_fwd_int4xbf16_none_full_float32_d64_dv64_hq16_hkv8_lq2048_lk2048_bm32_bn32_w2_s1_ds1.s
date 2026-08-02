	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x60
	s_load_b64 s[36:37], s[0:1], 0x20
	v_dual_mov_b32 v40, 0x5410 :: v_dual_lshlrev_b32 v37, 4, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v4, 1, v0
	v_mov_b32_e32 v24, 0
	s_clause 0x2
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b32 s4, s[0:1], 0x68
	s_load_b64 s[24:25], s[0:1], 0x38
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 16, v37
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s5, s2, 5
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s5, v4
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s26, s5, s2
	v_dual_mov_b32 v41, 0x7632 :: v_dual_and_b32 v38, 15, v0
	s_mov_b32 s31, 0x31027000
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v5
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v75, v4, 16, v38
	v_bfe_u32 v80, v0, 4, 1
	v_dual_mov_b32 v28, v24 :: v_dual_lshlrev_b32 v43, 1, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[64:65], null, s34, v4, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s34, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	v_dual_mov_b32 v27, v24 :: v_dual_and_b32 v46, 24, v0
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, s34, s26, v[64:65]
	v_dual_mov_b32 v16, v24 :: v_dual_lshlrev_b32 v47, 3, v0
	v_bfe_i32 v48, v0, 3, 1
	v_mov_b32_e32 v18, v24
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v50, v43, 30, v80
	v_and_b32_e32 v43, 24, v43
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s5, v75
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v125, 0xff800000 :: v_dual_and_b32 v42, 56, v0
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[32:35], v1, s[28:31], 0 offen
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v1, s26, v75
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v2
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s29, s15, 0xffff
	v_mov_b32_e32 v26, v24
	s_mov_b32 s28, s14
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	v_mov_b32_e32 v31, v24
	v_mov_b32_e32 v17, v24
	v_mov_b32_e32 v20, v24
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_mov_b32_e32 v22, v24
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_xor_b32_e32 v94, v37, v46
	v_and_b32_e32 v37, 48, v37
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v39, v1, s[28:31], 0 offen
	v_and_b32_e32 v46, 48, v47
	v_and_b32_e32 v47, 0x210, v48
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v48, 2, v50
	v_lshl_or_b32 v95, v38, 5, v43
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, 0xfff0
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s0, s0, 10
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v49, 1, v42
	v_xor_b32_e32 v37, v37, v42
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v42, 4, v48
	v_xor_b32_e32 v43, 8, v95
	v_dual_mov_b32 v30, v24 :: v_dual_and_b32 v45, 7, v0
	.loc	1 821 32                        ; attention.py:821:32
	s_and_b32 s3, s0, 0xffffc000
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s0, s1, 0x10007
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v8, v24 :: v_dual_add_nc_u32 v99, 0, v43
	s_add_i32 s1, s1, s0
	v_dual_mov_b32 v29, v24 :: v_dual_lshlrev_b32 v36, 3, v45
	s_bfe_i32 s0, s1, 0x80000
	v_lshl_or_b32 v96, v45, 9, v37
	s_sext_i32_i16 s0, s0
	v_dual_mov_b32 v25, v24 :: v_dual_and_b32 v44, 16, v0
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s0, s0, 10
	v_lshl_or_b32 v38, v45, 6, v46
	s_and_b32 s40, s0, 0xfffff800
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s35, v36
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[65:66], null, s35, v49, v[36:37]
	v_xor_b32_e32 v36, 0x90, v96
	v_mov_b32_e32 v23, v24
	v_xor_b32_e32 v97, v38, v47
	v_xor_b32_e32 v37, 0x120, v96
	v_xor_b32_e32 v38, 0x1b0, v96
	v_add_nc_u32_e32 v110, 0, v36
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s1, 0, v44
	v_mov_b32_e32 v9, v24
	v_dual_mov_b32 v12, v24 :: v_dual_add_nc_u32 v111, 0, v37
	v_add_nc_u32_e32 v112, 0, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v40, 0x1054, v40, s1
	v_cndmask_b32_e64 v41, 0x3276, v41, s1
	v_mov_b32_e32 v6, v24
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s4, s4, 0x3fb8aa3b
	v_xor_b32_e32 v50, 8, v94
	v_lshl_or_b32 v40, v40, 8, v40
	v_lshl_or_b32 v41, v41, 8, v41
	v_mov_b32_e32 v3, v24
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v19, v24 :: v_dual_add_nc_u32 v98, 0, v50
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v84, 16, v80
	v_or_b32_e32 v83, 18, v80
	v_or_b32_e32 v82, 20, v80
	v_or_b32_e32 v81, 22, v80
	v_or_b32_e32 v79, 24, v80
	v_or_b32_e32 v78, 26, v80
	v_or_b32_e32 v77, 28, v80
	v_or_b32_e32 v76, 30, v80
	v_xor_b32_e32 v46, 16, v95
	v_xor_b32_e32 v51, 24, v95
	v_xor_b32_e32 v45, 16, v97
	v_xor_b32_e32 v47, 32, v97
	v_xor_b32_e32 v49, 48, v97
	v_xor_b32_e32 v50, 0x420, v97
	v_xor_b32_e32 v52, 0x430, v97
	v_xor_b32_e32 v53, 0x410, v97
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s40, s40, s3
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v85, 4, v0
	v_dual_mov_b32 v21, v24 :: v_dual_add_nc_u32 v100, 0, v46
	v_dual_mov_b32 v10, v24 :: v_dual_add_nc_u32 v101, 0, v51
	v_dual_mov_b32 v11, v24 :: v_dual_add_nc_u32 v114, 0, v47
	v_dual_mov_b32 v13, v24 :: v_dual_add_nc_u32 v116, 0, v50
	v_dual_mov_b32 v14, v24 :: v_dual_add_nc_u32 v113, 0, v45
	v_dual_mov_b32 v15, v24 :: v_dual_add_nc_u32 v118, 0, v53
	v_dual_mov_b32 v0, v24 :: v_dual_add_nc_u32 v115, 0, v49
	v_dual_mov_b32 v2, v24 :: v_dual_add_nc_u32 v117, 0, v52
	v_dual_mov_b32 v4, v24 :: v_dual_add_nc_u32 v119, s35, v65
	v_mov_b32_e32 v7, v24
	v_mov_b32_e32 v93, v24
	v_or_b32_e32 v92, 2, v80
	v_or_b32_e32 v91, 4, v80
	v_or_b32_e32 v90, 6, v80
	v_or_b32_e32 v89, 8, v80
	v_or_b32_e32 v88, 10, v80
	v_or_b32_e32 v87, 12, v80
	v_or_b32_e32 v86, 14, v80
	v_or_b32_e32 v102, s40, v84
	v_or_b32_e32 v103, s40, v83
	v_or_b32_e32 v104, s40, v82
	v_or_b32_e32 v105, s40, v81
	v_or_b32_e32 v106, s40, v79
	v_or_b32_e32 v107, s40, v78
	v_or_b32_e32 v108, s40, v77
	v_or_b32_e32 v109, s40, v76
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v123, s35, 1, v65
	s_mov_b32 s16, 0
	s_and_b32 s11, s11, 0xffff
	s_mov_b32 s27, 0x76543210
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_mov_b32 s33, s16
	s_and_b32 s37, s37, 0xffff
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s30
	s_mov_b32 s15, s31
	s_mov_b32 s28, s10
	s_mov_b32 s29, s11
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v43, v48, v32
	ds_bpermute_b32 v32, v42, v32
	ds_bpermute_b32 v36, v48, v33
	ds_bpermute_b32 v33, v42, v33
	ds_bpermute_b32 v37, v48, v34
	ds_bpermute_b32 v34, v42, v34
	ds_bpermute_b32 v38, v48, v35
	ds_bpermute_b32 v35, v42, v35
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v39, 16, v39
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v1, v24 :: v_dual_mul_f32 v120, s4, v39
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v66, v32, v43, s1
	v_and_b32_e32 v39, 0x760076, v41
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v67, v33, v36, s1
	v_cndmask_b32_e64 v70, v36, v33, s1
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v71, v34, v37, s1
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[68:69], null, s35, 3, v[65:66]
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v69, v43, v32, s1
	v_and_b32_e32 v32, 0x540054, v40
	v_lshl_or_b32 v33, v39, 4, v39
	v_mov_b32_e32 v5, v24
	v_cndmask_b32_e64 v73, v37, v34, s1
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v72, v35, v38, s1
	v_lshl_or_b32 v32, v32, 4, v32
	v_cndmask_b32_e64 v74, v38, v35, s1
	v_and_b32_e32 v122, 0x7060706, v33
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v121, 0x5040504, v32
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_or_b32 s1, s33, s40
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v37, 0, v94
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[33:34], null, s1, s34, v[64:65]
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s3, s1, s35
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v55, s23 :: v_dual_add_nc_u32 v38, 0, v95
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v34, s3, v65, 1
	v_add_lshl_u32 v35, s3, v119, 1
	v_add_lshl_u32 v36, s3, v123, 1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v56, s3, v68, 1
	v_cndmask_b32_e64 v124, 0x80000000, v34, s0
	v_cndmask_b32_e64 v155, 0x80000000, v35, s0
	v_cndmask_b32_e64 v57, 0x80000000, v36, s0
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[33:36], v33, s[28:31], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v56, 0x80000000, v56, s0
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v54, s22
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v53, s21 :: v_dual_mov_b32 v52, s20
	v_dual_mov_b32 v51, s19 :: v_dual_mov_b32 v50, s18
	v_dual_mov_b32 v49, s17 :: v_dual_mov_b32 v48, s16
	v_or_b32_e32 v32, s40, v80
	v_or_b32_e32 v39, s40, v92
	v_or_b32_e32 v40, s40, v91
	v_or_b32_e32 v41, s40, v90
	v_or_b32_e32 v42, s40, v89
	v_or_b32_e32 v43, s40, v88
	v_or_b32_e32 v44, s40, v87
	v_or_b32_e32 v45, s40, v86
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v32, s33, v32, 1
	v_add_lshl_u32 v39, s33, v39, 1
	v_add_lshl_u32 v40, s33, v40, 1
	v_add_lshl_u32 v41, s33, v41, 1
	v_add_lshl_u32 v46, s33, v102, 1
	v_add_lshl_u32 v47, s33, v103, 1
	v_add_lshl_u32 v62, s33, v104, 1
	v_add_lshl_u32 v63, s33, v105, 1
	v_add_lshl_u32 v126, s33, v106, 1
	v_add_lshl_u32 v127, s33, v107, 1
	v_add_lshl_u32 v128, s33, v108, 1
	v_add_lshl_u32 v129, s33, v109, 1
	v_add_lshl_u32 v42, s33, v42, 1
	v_add_lshl_u32 v43, s33, v43, 1
	v_add_lshl_u32 v44, s33, v44, 1
	v_add_lshl_u32 v45, s33, v45, 1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v37, v[33:34]
	ds_store_b64 v98, v[35:36]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[147:150], v57, s[12:15], 0 offen
	buffer_load_b128 v[33:36], v56, s[12:15], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[56:59], v38 offset1:1
	ds_load_2addr_stride64_b64 v[151:154], v99 offset1:1
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xf
	buffer_load_u16 v32, v32, s[36:39], 0 offen
	buffer_load_u16 v39, v39, s[36:39], 0 offen
	buffer_load_u16 v40, v40, s[36:39], 0 offen
	buffer_load_u16 v41, v41, s[36:39], 0 offen
	buffer_load_u16 v42, v42, s[36:39], 0 offen
	buffer_load_u16 v43, v43, s[36:39], 0 offen
	buffer_load_u16 v44, v44, s[36:39], 0 offen
	buffer_load_u16 v45, v45, s[36:39], 0 offen
	buffer_load_u16 v46, v46, s[36:39], 0 offen
	buffer_load_u16 v47, v47, s[36:39], 0 offen
	buffer_load_u16 v62, v62, s[36:39], 0 offen
	buffer_load_u16 v63, v63, s[36:39], 0 offen
	buffer_load_u16 v126, v126, s[36:39], 0 offen
	buffer_load_u16 v127, v127, s[36:39], 0 offen
	buffer_load_u16 v128, v128, s[36:39], 0 offen
	buffer_load_u16 v129, v129, s[36:39], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[131:138], v[56:57], v[66:67], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[139:146], v[58:59], v[66:67], v[48:55] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[48:51], v100 offset1:1
	ds_load_2addr_stride64_b64 v[52:55], v101 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[131:138], v[151:152], v[71:72], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[139:146], v[153:154], v[71:72], v[139:146] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[131:138], v[48:49], v[69:70], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[139:146], v[50:51], v[69:70], v[139:146] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[131:138], v[52:53], v[73:74], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[139:146], v[54:55], v[73:74], v[139:146] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v130, v132
	v_cvt_f32_i32_e32 v61, v133
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v48, v134
	v_cvt_f32_i32_e32 v49, v135
	v_cvt_f32_i32_e32 v56, v142
	v_cvt_f32_i32_e32 v57, v143
	v_cvt_f32_i32_e32 v58, v144
	v_cvt_f32_i32_e32 v59, v145
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[142:145], v155, s[12:15], 0 offen
	buffer_load_b128 v[132:135], v124, s[12:15], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v131, v131
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v154, 0, v97
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v50, v136
	v_cvt_f32_i32_e32 v51, v137
	v_cvt_f32_i32_e32 v52, v138
	v_mul_f32_e32 v131, v120, v131
	v_cvt_f32_i32_e32 v53, v139
	v_cvt_f32_i32_e32 v54, v140
	v_cvt_f32_i32_e32 v55, v141
	v_cvt_f32_i32_e32 v60, v146
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v124.h, 0
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v48, v120, v48
	v_mul_f32_e32 v50, v120, v50
	v_mul_f32_e32 v51, v120, v51
	v_mul_f32_e32 v52, v120, v52
	v_mul_f32_e32 v53, v120, v53
	v_mul_f32_e32 v54, v120, v54
	v_mul_f32_e32 v55, v120, v55
	v_mul_f32_e32 v56, v120, v56
	v_mul_f32_e32 v57, v120, v57
	v_mul_f32_e32 v58, v120, v58
	v_mul_f32_e32 v59, v120, v59
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v155.h, v124.h
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(17)
	v_dual_mul_f32 v49, v120, v49 :: v_dual_lshlrev_b32 v32, 16, v32
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v39, 16, v39
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v40, 16, v40
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v131, v131, v32 :: v_dual_lshlrev_b32 v42, 16, v42
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v32, v120, v130 :: v_dual_lshlrev_b32 v43, 16, v43
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v44, 16, v44
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v39, v32, v39 :: v_dual_lshlrev_b32 v46, 16, v46
	v_mul_f32_e32 v32, v120, v61
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v38.l, v147.l
	v_mov_b16_e32 v38.h, v33.l
	v_mov_b16_e64 v33.l, v147.h
	v_mov_b16_e64 v153.h, v36.l
	v_mov_b16_e64 v36.l, v150.h
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v40, v32, v40 :: v_dual_lshlrev_b32 v47, 16, v47
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v62, 16, v62
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v63, 16, v63
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v126, 16, v126
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v127, 16, v127
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v128, 16, v128
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v151.l, v148.l
	v_mov_b16_e64 v151.h, v34.l
	v_mov_b16_e64 v34.l, v148.h
	v_mov_b16_e64 v153.l, v150.l
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v60, v120, v60 :: v_dual_lshlrev_b32 v129, 16, v129
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v146, v36
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v36, v48, v41 :: v_dual_mul_f32 v41, v49, v42
	v_dual_mul_f32 v42, v50, v43 :: v_dual_mul_f32 v49, v57, v126
	v_mul_f32_e32 v50, v58, v127
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v148.l, v149.l
	v_mov_b16_e64 v148.h, v35.l
	v_mov_b16_e64 v35.l, v149.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v140, 0xff800000, v49, s2
	v_cndmask_b32_e64 v141, 0xff800000, v50, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v61.h, v124.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v43, v51, v44
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v58, 0xff800000, v43, s2
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v37.h, v142.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v142.l, v132.h
	v_mov_b16_e64 v37.l, v132.l
	v_mov_b16_e64 v150.h, v143.l
	v_mov_b16_e64 v143.l, v133.h
	v_add_nc_u32_e32 v132, 0, v96
	v_mov_b32_e32 v32, v142
	v_mov_b16_e64 v150.l, v133.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v133.h, v124.h
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v44, v52, v45 :: v_dual_mul_f32 v45, v53, v46
	v_dual_mul_f32 v48, v56, v63 :: v_dual_mul_f32 v51, v59, v128
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v132, v[37:38], v[32:33] offset1:8
	v_mov_b32_e32 v33, v143
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v32, 0xff800000, v131, s2
	v_cndmask_b32_e64 v53, 0xff800000, v39, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v46, v54, v47 :: v_dual_mul_f32 v47, v55, v62
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v147.h, v144.l
	v_mov_b16_e64 v144.l, v134.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v52, v60, v129
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v55, 0xff800000, v36, s2
	v_cndmask_b32_e64 v56, 0xff800000, v41, s2
	v_cndmask_b32_e64 v57, 0xff800000, v42, s2
	v_cndmask_b32_e64 v138, 0xff800000, v47, s2
	v_cndmask_b32_e64 v139, 0xff800000, v48, s2
	v_cndmask_b32_e64 v142, 0xff800000, v51, s2
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v110, v[150:151], v[33:34] offset1:8
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v32, v53
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v137, 0xff800000, v46, s2
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v147.l, v134.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v54, 0xff800000, v40, s2
	v_cndmask_b32_e64 v59, 0xff800000, v44, s2
	v_cndmask_b32_e64 v136, 0xff800000, v45, s2
	v_cndmask_b32_e64 v143, 0xff800000, v52, s2
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v34, v144
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v36, v55, v56, v57
	v_max3_f32 v37, v137, v138, v139
	v_max3_f32 v38, v140, v141, v142
	v_max3_f32 v44, v58, v59, v136
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v111, v[147:148], v[34:35] offset1:8
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v33, v54, v36
.Ltmp6:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v134.h, v124.h
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v34, v37, v38, v143
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v152.l, v135.l
	v_mov_b16_e64 v152.h, v145.l
	v_mov_b16_e64 v145.l, v135.h
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v33, v44, v34
.Ltmp10:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v112, v[152:153], v[145:146] offset1:8
	s_waitcnt lgkmcnt(0)
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v34, v33, s27, 0xfedcba98 op_sel:[1,0]
.Ltmp12:
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	ds_load_b128 v[36:39], v154
	ds_load_b128 v[40:43], v113
	ds_load_b128 v[148:151], v113 offset:2048
	ds_load_b128 v[144:147], v154 offset:2048
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v131, v125, v33, v34
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v53, v131
	v_sub_f32_e32 v32, v32, v131
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v52, v125, v131
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v57, v131
	v_sub_f32_e32 v35, v55, v131
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v32, v32
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v52, v52
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	v_exp_f32_e32 v35, v35
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v51, v59, v131
	v_sub_f32_e32 v137, v137, v131
	v_sub_f32_e32 v138, v138, v131
	v_sub_f32_e32 v139, v139, v131
	v_sub_f32_e32 v140, v140, v131
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v127, 0, v33, s2
	v_cndmask_b32_e64 v128, 0, v32, s2
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v51, v51
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v141, v141, v131
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v130, 0, v35, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v124.l, v127.h
	v_cmp_o_f32_e64 s1, v127, v127
	v_mov_b16_e64 v133.l, v128.h
	v_cmp_o_f32_e64 s3, v128, v128
	v_cmp_o_f32_e64 s4, v130, v130
	v_and_b32_e32 v32, 1, v124
	v_mov_b16_e64 v124.l, v130.h
	v_and_b32_e32 v33, 1, v133
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v133, 0, v49, s2
	v_cndmask_b32_e64 v135, 0, v51, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v32, v127, v32, 0x7fff
	v_and_b32_e32 v35, 1, v124
	v_add3_u32 v33, v128, v33, 0x7fff
	v_mov_b16_e64 v124.l, v133.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v142, v142, v131
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s1
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v125
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v35, v130, v35, 0x7fff
	v_cndmask_b16 v32.l, 0x7fff, v33.h, s3
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v125, v136, v131
	v_sub_f32_e32 v143, v143, v131
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v126, 0, v52, s1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v54, v131
	v_sub_f32_e32 v48, v56, v131
	v_sub_f32_e32 v50, v58, v131
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s4
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v126
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v29, v29, v126
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v48, v48
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v31, v31, v126
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v50, v50
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v126
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v133, v133
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v19, v19, v126
	v_mul_f32_e32 v24, v24, v126
	v_mul_f32_e32 v26, v26, v126
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v129, 0, v34, s2
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v126
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v132, 0, v48, s2
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v126
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v135, v135
	v_mov_b16_e64 v134.l, v129.h
	v_cmp_o_f32_e64 s5, v129, v129
	v_mov_b16_e64 v155.l, v132.h
	v_cmp_o_f32_e64 s3, v132, v132
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v30, v30, v126
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v34, 1, v134
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v134, 0, v50, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v48, 1, v155
	v_and_b32_e32 v50, 1, v124
	v_mov_b16_e64 v124.l, v135.h
	v_add3_u32 v34, v129, v34, 0x7fff
	v_mov_b16_e64 v61.l, v134.h
	v_add3_u32 v48, v132, v48, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v126
	v_mul_f32_e32 v21, v21, v126
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s5
	v_and_b32_e32 v49, 1, v61
	v_cmp_o_f32_e64 s5, v134, v134
	v_permlanex16_b32 v34, v32, s27, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v11, v11, v126
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v35, v33, s27, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v49, v134, v49, 0x7fff
	v_cndmask_b16 v49.l, 0x7fff, v48.h, s3
	v_add3_u32 v48, v133, v50, 0x7fff
	v_perm_b32 v44, v34, v32, v121
	v_perm_b32 v45, v34, v32, v122
	v_cndmask_b16 v51.l, 0x7fff, v49.h, s5
	v_perm_b32 v46, v35, v33, v121
	v_cndmask_b16 v49.h, 0x7fff, v48.h, s1
	v_and_b32_e32 v48, 1, v124
	v_perm_b32 v47, v35, v33, v122
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[32:35], v154 offset:1024
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v13, v13, v126
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v136, v125
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v48, v135, v48, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v137, v137
	v_exp_f32_e32 v138, v138
	v_exp_f32_e32 v139, v139
	v_exp_f32_e32 v140, v140
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v51.h, 0x7fff, v48.h, s4
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v141, v141
	v_exp_f32_e32 v142, v142
	v_exp_f32_e32 v143, v143
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v50, v49, s27, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v52, v51, s27, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v18, v18, v126 :: v_dual_mov_b32 v125, v131
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v131, 0, v136, s2
	v_cndmask_b32_e64 v136, 0, v137, s2
	v_cndmask_b32_e64 v137, 0, v138, s2
	v_cndmask_b32_e64 v138, 0, v139, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v48, v50, v49, v121
	v_perm_b32 v49, v50, v49, v122
	v_perm_b32 v50, v52, v51, v121
	v_perm_b32 v51, v52, v51, v122
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v22, v22, v126 :: v_dual_add_f32 v127, v128, v127
	v_mul_f32_e32 v8, v8, v126
	v_mul_f32_e32 v10, v10, v126
	v_mul_f32_e32 v15, v15, v126
	v_mul_f32_e32 v1, v1, v126
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v139, 0, v140, s2
	v_cndmask_b32_e64 v140, 0, v141, s2
	v_cndmask_b32_e64 v141, 0, v142, s2
	v_cndmask_b32_e64 v142, 0, v143, s2
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v128, v129, v130
.Ltmp14:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v12, v12, v126
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v129, v132, v133 :: v_dual_add_f32 v130, v134, v135
	v_add_f32_e32 v132, v131, v136
.Ltmp16:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v124.l, v136.h
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v133, v137, v138
.Ltmp18:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v14, v14, v126
	v_mul_f32_e32 v23, v23, v126
	v_dual_mul_f32 v5, v5, v126 :: v_dual_add_f32 v134, v139, v140
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v135, v141, v142
	v_dual_add_f32 v127, v127, v128 :: v_dual_add_f32 v128, v129, v130
	v_add_f32_e32 v129, v132, v133
.Ltmp20:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[144:151], v[44:51], v[8:15]
	v_mov_b32_e32 v144, v93
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_mov_b16_e32 v93.h, v124.h
	v_mov_b16_e64 v93.l, v131.h
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v20, v20, v126
	v_dual_mul_f32 v7, v7, v126 :: v_dual_add_f32 v130, v134, v135
	v_dual_mul_f32 v0, v0, v126 :: v_dual_add_f32 v127, v127, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v93, 1, v93
	v_cmp_o_f32_e64 s3, v131, v131
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v128, v129, v130
.Ltmp22:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v126
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v145.h, v124.h
	v_add3_u32 v93, v131, v93, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v2, v2, v126
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v145.l, v137.h
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[36:43], v[44:51], v[24:31]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[40:43], v117
	ds_load_b128 v[36:39], v116
	ds_load_b128 v[52:55], v116 offset:2048
	ds_load_b128 v[56:59], v117 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v129.l, 0x7fff, v93.h, s3
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v93, v127, v128
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v143, 1, v145
	v_and_b32_e32 v128, 1, v124
	v_mov_b16_e64 v124.l, v138.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v126
.Ltmp25:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v127, v93, s27, 0xfedcba98 op_sel:[1,0]
.Ltmp26:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v4, v4, v126
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v137, v137
	v_add3_u32 v131, v137, v143, 0x7fff
	v_mov_b16_e64 v146.h, v124.h
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v93, v93, v127
.Ltmp28:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v127, 1, v124
	v_mov_b16_e64 v124.l, v140.h
	v_mov_b16_e64 v147.h, v124.h
	v_mov_b16_e64 v146.l, v139.h
	v_mov_b16_e64 v147.l, v141.h
	v_cndmask_b16 v130.l, 0x7fff, v131.h, s5
	v_and_b32_e32 v131, 1, v124
	v_mov_b16_e64 v124.l, v142.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v126
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v145, 1, v146
	v_and_b32_e32 v146, 1, v147
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[36:43], v[44:51], v[16:23]
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v124, 1, v124
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[40:43], v154 offset:3072
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[52:59], v[44:51], v[0:7]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[56:59], v114
	ds_load_b128 v[48:51], v114 offset:2048
	ds_load_b128 v[60:63], v115
	ds_load_b128 v[52:55], v115 offset:2048
	ds_load_b128 v[36:39], v118
	ds_load_b128 v[44:47], v118 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v136, v136
	v_cmp_o_f32_e64 s4, v138, v138
	v_cmp_o_f32_e64 s6, v140, v140
	v_cmp_o_f32_e64 s7, v139, v139
	v_cmp_o_f32_e64 s8, v142, v142
	v_cmp_o_f32_e64 s9, v141, v141
	v_add3_u32 v132, v139, v145, 0x7fff
	v_add3_u32 v133, v141, v146, 0x7fff
	v_add3_u32 v128, v136, v128, 0x7fff
	v_add3_u32 v127, v138, v127, 0x7fff
	v_add3_u32 v131, v140, v131, 0x7fff
	v_add3_u32 v124, v142, v124, 0x7fff
	v_cndmask_b16 v132.l, 0x7fff, v132.h, s7
	v_cndmask_b16 v134.l, 0x7fff, v133.h, s9
	v_cndmask_b16 v129.h, 0x7fff, v128.h, s1
	v_cndmask_b16 v130.h, 0x7fff, v127.h, s4
	v_cndmask_b16 v132.h, 0x7fff, v131.h, s6
	v_cndmask_b16 v134.h, 0x7fff, v124.h, s8
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v93, v144, v126
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v128, v129, s27, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v133, v130, s27, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v124, v132, s27, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v135, v134, s27, 0xfedcba98 op_sel:[1,0]
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s1, s33, 32
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v127, v128, v129, v121
	v_perm_b32 v128, v128, v129, v122
	v_perm_b32 v129, v133, v130, v121
	v_perm_b32 v130, v133, v130, v122
	v_perm_b32 v131, v124, v132, v121
	v_perm_b32 v132, v124, v132, v122
	v_perm_b32 v133, v135, v134, v121
	v_perm_b32 v134, v135, v134, v122
	.loc	1 818 13                        ; attention.py:818:13
	s_cmpk_lt_u32 s33, 0x7e0
	s_mov_b32 s33, s1
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[56:63], v[127:134], v[24:31]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[32:39], v[127:134], v[16:23]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[48:55], v[127:134], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[40:47], v[127:134], v[0:7]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v32, null, v93, v93, v24
	v_div_scale_f32 v33, null, v93, v93, v25
	v_div_scale_f32 v34, null, v93, v93, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v35, v32
	v_rcp_f32_e32 v36, v33
	v_div_scale_f32 v38, vcc_lo, v24, v93, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v39, s0, v25, v93, v25
	v_div_scale_f32 v42, null, v93, v93, v27
	v_div_scale_f32 v48, s3, v27, v93, v27
	v_fma_f32 v40, -v32, v35, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v41, -v33, v36, 1.0
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s25, s25, 0xffff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v34, v37, 1.0
	s_mov_b32 s27, 0x31027000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v35, v40, v35 :: v_dual_fmac_f32 v36, v41, v36
	v_div_scale_f32 v40, s1, v26, v93, v26
	v_fmac_f32_e32 v37, v43, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v43, v38, v35 :: v_dual_mul_f32 v44, v39, v36
	v_rcp_f32_e32 v41, v42
	v_fma_f32 v46, -v32, v43, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v33, v44, v39
	v_dual_fmac_f32 v43, v46, v35 :: v_dual_fmac_f32 v44, v47, v36
	v_div_scale_f32 v46, null, v93, v93, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v42, v41, 1.0
	v_fma_f32 v32, -v32, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v44, v39
	v_rcp_f32_e32 v38, v46
	v_div_scale_f32 v39, null, v93, v93, v29
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v32, v32, v35, v43
	s_mov_b32 vcc_lo, s0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v93
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v36, v44
	v_rcp_f32_e32 v43, v39
	v_div_scale_f32 v44, null, v93, v93, v31
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v46, v38, 1.0
	v_div_fixup_f32 v25, v33, v93, v25
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v47, v44
	v_div_fixup_f32 v24, v32, v93, v24
	v_fmac_f32_e32 v38, v36, v38
	v_mul_f32_e32 v45, v40, v37
	v_div_scale_f32 v36, null, v93, v93, v30
	v_fmac_f32_e32 v41, v49, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v34, v45, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v45, v50, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v34, v45, v40
	v_fma_f32 v34, -v39, v43, 1.0
	v_div_fmas_f32 v33, v33, v37, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v43, v34, v43
	v_rcp_f32_e32 v34, v36
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v26, v33, v93, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v36, v34, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v35, v48, v41 :: v_dual_fmac_f32 v34, v45, v34
	v_fma_f32 v32, -v42, v35, v48
	v_fma_f32 v45, -v44, v47, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v45, v47
	v_div_scale_f32 v45, s5, v31, v93, v31
	v_fmac_f32_e32 v35, v32, v41
	v_div_scale_f32 v32, s4, v28, v93, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v42, v35, v48
	v_mul_f32_e32 v40, v32, v38
	v_div_scale_f32 v42, s1, v29, v93, v29
	v_div_scale_f32 v48, null, v93, v93, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v35, v37, v41, v35
	v_fma_f32 v37, -v46, v40, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v41, v42, v43
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v27, v35, v93, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v37, v38
	v_div_scale_f32 v37, null, v93, v93, v16
	v_fma_f32 v33, -v39, v41, v42
	v_div_scale_f32 v35, s3, v30, v93, v30
	v_fma_f32 v32, -v46, v40, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v46, v37
	v_fmac_f32_e32 v41, v33, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v32, v38, v40
	v_mul_f32_e32 v40, v45, v47
	v_fma_f32 v38, -v39, v41, v42
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v28, v32, v93, v28
	v_fma_f32 v42, -v37, v46, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v42, v46
	v_div_fmas_f32 v38, v38, v43, v41
	v_fma_f32 v41, -v44, v40, v45
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v42, s1, v16, v93, v16
	v_div_scale_f32 v43, null, v93, v93, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v41, v47
	v_div_scale_f32 v41, s3, v17, v93, v17
	v_mul_f32_e32 v33, v35, v34
	v_div_fixup_f32 v29, v38, v93, v29
	v_div_scale_f32 v38, null, v93, v93, v18
	v_fma_f32 v39, -v36, v33, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v33, v39, v34
	v_rcp_f32_e32 v39, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v36, v33, v35
	v_div_fmas_f32 v32, v32, v34, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v48, v39, 1.0
	v_fma_f32 v33, -v44, v40, v45
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v45, null, v93, v93, v21
	v_fmac_f32_e32 v39, v36, v39
	v_mul_f32_e32 v35, v42, v46
	v_rcp_f32_e32 v36, v38
	v_div_fixup_f32 v30, v32, v93, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v34, -v37, v35, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v35, v34, v46
	v_rcp_f32_e32 v34, v43
	v_fma_f32 v44, -v38, v36, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v37, v35, v42
	v_div_scale_f32 v37, s4, v18, v93, v18
	v_fmac_f32_e32 v36, v44, v36
	v_div_scale_f32 v44, null, v93, v93, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v43, v34, 1.0
	v_fmac_f32_e32 v34, v42, v34
	v_div_fmas_f32 v33, v33, v47, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v42, s1, v19, v93, v19
	v_div_fmas_f32 v32, v32, v46, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v31, v33, v93, v31
	v_rcp_f32_e32 v35, v44
	v_mul_f32_e32 v46, v42, v34
	v_mul_f32_e32 v40, v41, v39
	v_div_fixup_f32 v16, v32, v93, v16
	v_rcp_f32_e32 v47, v45
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v48, v40, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v33, v39
	v_mul_f32_e32 v33, v37, v36
	v_fma_f32 v32, -v48, v40, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v38, v33, v37
	v_fma_f32 v48, -v44, v35, 1.0
	v_div_fmas_f32 v32, v32, v39, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v41, v36
	v_fma_f32 v39, -v43, v46, v42
	v_fmac_f32_e32 v35, v48, v35
	v_div_scale_f32 v40, s3, v20, v93, v20
	v_fma_f32 v41, -v45, v47, 1.0
	v_div_fixup_f32 v17, v32, v93, v17
	v_fma_f32 v32, -v38, v33, v37
	v_fmac_f32_e32 v46, v39, v34
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v37, v40, v35
	v_fmac_f32_e32 v47, v41, v47
	v_div_scale_f32 v38, s5, v21, v93, v21
	v_div_fmas_f32 v32, v32, v36, v33
	v_fma_f32 v33, -v43, v46, v42
	v_div_scale_f32 v43, null, v93, v93, v23
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v36, -v44, v37, v40
	v_mul_f32_e32 v42, v38, v47
	v_div_fmas_f32 v33, v33, v34, v46
	v_rcp_f32_e32 v34, v43
	v_div_fixup_f32 v18, v32, v93, v18
	v_fmac_f32_e32 v37, v36, v35
	v_fma_f32 v36, -v45, v42, v38
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v39, null, v93, v93, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v44, v37, v40
	v_fmac_f32_e32 v42, v36, v47
	v_div_fixup_f32 v19, v33, v93, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v43, v34, 1.0
	v_rcp_f32_e32 v41, v39
	v_div_fmas_f32 v32, v32, v35, v37
	v_fma_f32 v35, -v45, v42, v38
	v_div_scale_f32 v38, s3, v23, v93, v23
	v_fmac_f32_e32 v34, v36, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v20, v32, v93, v20
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v45, null, v93, v93, v9
	v_mul_f32_e32 v44, v38, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v39, v41, 1.0
	v_div_scale_f32 v33, s1, v22, v93, v22
	v_div_scale_f32 v36, null, v93, v93, v8
	v_fma_f32 v32, -v43, v44, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	v_cndmask_b32_e64 v18, 0, v18, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v40, v36
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v32, v34
	v_div_fmas_f32 v35, v35, v47, v42
	v_div_scale_f32 v32, s4, v8, v93, v8
	v_fmac_f32_e32 v41, v46, v41
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v21, v35, v93, v21
	v_rcp_f32_e32 v35, v45
	v_div_scale_f32 v47, null, v93, v93, v11
	v_mul_f32_e32 v37, v33, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	v_cndmask_b32_e64 v21, 0, v21, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v49, v47
	v_fma_f32 v42, -v39, v37, v33
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v45, v35, 1.0
	v_fmac_f32_e32 v35, v46, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v42, v41
	v_fma_f32 v42, -v36, v40, 1.0
	v_fma_f32 v33, -v39, v37, v33
	v_div_scale_f32 v39, null, v93, v93, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v42, v40
	v_div_fmas_f32 v33, v33, v41, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v42, v39
	v_fma_f32 v37, -v43, v44, v38
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v41, s1, v9, v93, v9
	v_div_fixup_f32 v22, v33, v93, v22
	v_div_fmas_f32 v34, v37, v34, v44
	v_mul_f32_e32 v38, v32, v40
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v39, v42, 1.0
	v_div_fixup_f32 v23, v34, v93, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v46, -v36, v38, v32
	v_fma_f32 v34, -v47, v49, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, s5, v10, v93, v10
	v_fmac_f32_e32 v38, v46, v40
	v_fmac_f32_e32 v49, v34, v49
	v_div_scale_f32 v34, s3, v11, v93, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v32, -v36, v38, v32
	v_div_scale_f32 v36, null, v93, v93, v12
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v39, v44, v43
	v_div_fmas_f32 v32, v32, v40, v38
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v33, v42
	v_mul_f32_e32 v48, v41, v35
	v_rcp_f32_e32 v33, v36
	v_div_fixup_f32 v8, v32, v93, v8
	v_fma_f32 v37, -v45, v48, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v48, v37, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v40, -v36, v33, 1.0
	v_fma_f32 v37, -v45, v48, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v40, v33
	v_div_scale_f32 v40, s1, v12, v93, v12
	v_div_fmas_f32 v35, v37, v35, v48
	v_fma_f32 v37, -v39, v44, v43
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v32, v40, v33
	v_div_scale_f32 v39, null, v93, v93, v13
	v_div_fmas_f32 v37, v37, v42, v44
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v9, v35, v93, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v39
	v_div_fixup_f32 v10, v37, v93, v10
	v_div_scale_f32 v37, null, v93, v93, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
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
	v_div_scale_f32 v42, null, v93, v93, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v34, v34, v49, v38
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v44, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v11, v34, v93, v11
	v_fma_f32 v34, -v36, v32, v40
	v_fma_f32 v40, -v37, v43, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v34, v33, v32
	v_fmac_f32_e32 v43, v40, v43
	v_div_scale_f32 v40, null, v93, v93, v1
	v_div_scale_f32 v33, null, v93, v93, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v12, v32, v93, v12
	v_fma_f32 v32, -v42, v44, 1.0
	v_fmac_f32_e32 v41, v35, v41
	v_div_scale_f32 v35, s4, v13, v93, v13
	v_rcp_f32_e32 v46, v40
	v_fmac_f32_e32 v44, v32, v44
	v_div_scale_f32 v34, s1, v14, v93, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v38, v35, v41
	v_div_scale_f32 v32, s3, v15, v93, v15
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v47, s4, v0, v93, v0
	v_fma_f32 v36, -v39, v38, v35
	v_fma_f32 v48, -v40, v46, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v48, v46
	v_fmac_f32_e32 v38, v36, v41
	v_rcp_f32_e32 v36, v33
	v_div_scale_f32 v48, s5, v1, v93, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v39, v38, v35
	v_mul_f32_e32 v39, v34, v43
	v_div_fmas_f32 v35, v35, v41, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v33, v36, 1.0
	v_fma_f32 v38, -v37, v39, v34
	v_mul_f32_e32 v41, v32, v44
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v13, v35, v93, v13
	v_fmac_f32_e32 v36, v45, v36
	v_div_scale_f32 v45, null, v93, v93, v2
	v_fmac_f32_e32 v39, v38, v43
	v_fma_f32 v38, -v42, v41, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v50, v47, v36
	v_rcp_f32_e32 v49, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v37, v39, v34
	v_fmac_f32_e32 v41, v38, v44
	v_fma_f32 v35, -v33, v50, v47
	v_mul_f32_e32 v37, v48, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v34, v34, v43, v39
	v_fma_f32 v32, -v42, v41, v32
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v38, -v45, v49, 1.0
	v_fmac_f32_e32 v50, v35, v36
	v_fma_f32 v35, -v40, v37, v48
	v_div_fmas_f32 v32, v32, v44, v41
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v49, v38, v49
	v_fma_f32 v33, -v33, v50, v47
	v_fmac_f32_e32 v37, v35, v46
	v_div_scale_f32 v38, s1, v2, v93, v2
	v_div_scale_f32 v39, null, v93, v93, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v36, v50
	v_fma_f32 v36, -v40, v37, v48
	s_mov_b32 vcc_lo, s5
	v_mul_f32_e32 v35, v38, v49
	v_div_fixup_f32 v15, v32, v93, v15
	v_div_fixup_f32 v0, v33, v93, v0
	v_div_fmas_f32 v36, v36, v46, v37
	v_div_scale_f32 v33, null, v93, v93, v4
	v_fma_f32 v40, -v45, v35, v38
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v1, v36, v93, v1
	v_div_scale_f32 v36, null, v93, v93, v6
	v_fmac_f32_e32 v35, v40, v49
	v_rcp_f32_e32 v41, v39
	v_div_fixup_f32 v14, v34, v93, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v36
	v_div_scale_f32 v43, null, v93, v93, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v39, v41, 1.0
	v_fma_f32 v47, -v36, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v40, v47, v40
	v_fma_f32 v32, -v45, v35, v38
	v_rcp_f32_e32 v45, v43
	v_div_scale_f32 v47, s4, v6, v93, v6
	v_div_fmas_f32 v32, v32, v49, v35
	v_rcp_f32_e32 v35, v33
	v_div_scale_f32 v37, vcc_lo, v3, v93, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v51, v47, v40
	v_div_fixup_f32 v2, v32, v93, v2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v49, -v43, v45, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v32, -v33, v35, 1.0
	v_fmac_f32_e32 v45, v49, v45
	v_div_scale_f32 v49, s5, v7, v93, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v32, v35
	v_div_scale_f32 v32, s1, v4, v93, v4
	v_fmac_f32_e32 v41, v34, v41
	v_div_scale_f32 v34, null, v93, v93, v5
	v_mul_f32_e32 v48, v32, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v42, v37, v41
	v_rcp_f32_e32 v38, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v39, v42, v37
	v_fmac_f32_e32 v42, v46, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v34, v38, 1.0
	v_fma_f32 v46, -v33, v48, v32
	v_fma_f32 v37, -v39, v42, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v44, v38
	v_div_scale_f32 v44, s3, v5, v93, v5
	v_fmac_f32_e32 v48, v46, v35
	v_fma_f32 v46, -v36, v51, v47
	v_mul_f32_e32 v52, v49, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v50, v44, v38
	v_div_fmas_f32 v37, v37, v41, v42
	v_fma_f32 v32, -v33, v48, v32
	v_fmac_f32_e32 v51, v46, v40
	v_fma_f32 v33, -v43, v52, v49
	v_fma_f32 v39, -v34, v50, v44
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v3, v37, v93, v3
	v_div_fmas_f32 v32, v32, v35, v48
	v_fmac_f32_e32 v52, v33, v45
	v_fmac_f32_e32 v50, v39, v38
	v_fma_f32 v33, -v36, v51, v47
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v4, v32, v93, v4
	v_fma_f32 v35, -v43, v52, v49
	v_fma_f32 v34, -v34, v50, v44
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v32, s35, v75
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 62, v85
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v38, v50
	s_mov_b32 vcc_lo, s4
	v_div_fmas_f32 v33, v33, v40, v51
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fixup_f32 v5, v34, v93, v5
	v_div_fmas_f32 v35, v35, v45, v52
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s35, v80
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v33, v93, v6
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 32, v80
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v7, v35, v93, v7
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_nc_u32_e32 v34, v32, v80
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s35, v33
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 1046 24                       ; attention.py:1046:24
	s_mul_i32 s0, s35, s26
	s_mov_b32 s26, 0x7ffffffe
	v_add_nc_u32_e32 v32, s0, v32
	.loc	1 1046 74 is_stmt 0             ; attention.py:1046:74
	v_or_b32_e32 v35, 48, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_add_lshl_u32 v37, v32, v80, 2
	v_add_lshl_u32 v38, v32, v92, 2
	v_add_lshl_u32 v39, v32, v91, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s35, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	s_clause 0x2
	buffer_store_b32 v24, v37, s[24:27], 0 offen
	buffer_store_b32 v25, v38, s[24:27], 0 offen
	buffer_store_b32 v26, v39, s[24:27], 0 offen
	v_add_lshl_u32 v24, v32, v90, 2
	v_add_lshl_u32 v25, v32, v89, 2
	v_add_lshl_u32 v26, v32, v88, 2
	v_add_lshl_u32 v37, v32, v87, 2
	v_add_lshl_u32 v38, v32, v86, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v37, 0x80000000, v37
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v34, v34, s0, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s35, v84
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	s_clause 0x4
	buffer_store_b32 v27, v24, s[24:27], 0 offen
	buffer_store_b32 v28, v25, s[24:27], 0 offen
	buffer_store_b32 v29, v26, s[24:27], 0 offen
	buffer_store_b32 v30, v37, s[24:27], 0 offen
	buffer_store_b32 v31, v38, s[24:27], 0 offen
	v_add_lshl_u32 v24, v32, v84, 2
	v_add_lshl_u32 v25, v32, v83, 2
	v_add_lshl_u32 v26, v32, v82, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v27, v32, v81, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_lshl_u32 v28, v32, v79, 2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_clause 0x2
	buffer_store_b32 v16, v24, s[24:27], 0 offen
	buffer_store_b32 v17, v25, s[24:27], 0 offen
	buffer_store_b32 v18, v26, s[24:27], 0 offen
	v_add_lshl_u32 v17, v32, v78, 2
	v_add_lshl_u32 v18, v32, v77, 2
	v_cndmask_b32_e32 v16, 0x80000000, v28, vcc_lo
	buffer_store_b32 v19, v27, s[24:27], 0 offen
	v_add_lshl_u32 v19, v32, v76, 2
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_cndmask_b32 v18, 0x80000000, v18
	buffer_store_b32 v20, v16, s[24:27], 0 offen
	v_add_lshl_u32 v16, v32, v33, 2
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v21, v17, s[24:27], 0 offen
	v_add_nc_u32_e32 v17, 0x88, v34
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_clause 0x2
	buffer_store_b32 v22, v18, s[24:27], 0 offen
	buffer_store_b32 v23, v19, s[24:27], 0 offen
	buffer_store_b32 v8, v16, s[24:27], 0 offen
	v_add_nc_u32_e32 v8, 0x90, v34
	v_cndmask_b32_e32 v16, 0x80000000, v17, vcc_lo
	v_add_nc_u32_e32 v17, 0x98, v34
	v_add_nc_u32_e32 v18, 0xa0, v34
	v_add_nc_u32_e32 v19, 0xa8, v34
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v9, v16, s[24:27], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v16, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	buffer_store_b32 v10, v8, s[24:27], 0 offen
	v_add_nc_u32_e32 v8, 0xb0, v34
	s_clause 0x2
	buffer_store_b32 v11, v9, s[24:27], 0 offen
	buffer_store_b32 v12, v16, s[24:27], 0 offen
	buffer_store_b32 v13, v17, s[24:27], 0 offen
	v_add_nc_u32_e32 v9, 0xb8, v34
	v_add_lshl_u32 v10, v32, v35, 2
	v_add_nc_u32_e32 v11, 0xc8, v34
	v_add_nc_u32_e32 v12, 0xd0, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v14, v8, s[24:27], 0 offen
	buffer_store_b32 v15, v9, s[24:27], 0 offen
	buffer_store_b32 v0, v10, s[24:27], 0 offen
	buffer_store_b32 v1, v11, s[24:27], 0 offen
	buffer_store_b32 v2, v12, s[24:27], 0 offen
	v_add_nc_u32_e32 v0, 0xd8, v34
	v_add_nc_u32_e32 v1, 0xe0, v34
	v_add_nc_u32_e32 v2, 0xe8, v34
	v_add_nc_u32_e32 v8, 0xf0, v34
	v_add_lshl_u32 v9, v32, v36, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	s_clause 0x4
	buffer_store_b32 v3, v0, s[24:27], 0 offen
	buffer_store_b32 v4, v1, s[24:27], 0 offen
	buffer_store_b32 v5, v2, s[24:27], 0 offen
	buffer_store_b32 v6, v8, s[24:27], 0 offen
	buffer_store_b32 v7, v9, s[24:27], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp29:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
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
		.amdhsa_next_free_vgpr 156
		.amdhsa_next_free_sgpr 41
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_vgpr, 156
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.numbered_sgpr, 41
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8424
; TotalNumSgprs: 43
; NumVgprs: 156
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 19
; NumSGPRsForWavesPerEU: 43
; NumVGPRsForWavesPerEU: 156
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
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
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
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     156
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
