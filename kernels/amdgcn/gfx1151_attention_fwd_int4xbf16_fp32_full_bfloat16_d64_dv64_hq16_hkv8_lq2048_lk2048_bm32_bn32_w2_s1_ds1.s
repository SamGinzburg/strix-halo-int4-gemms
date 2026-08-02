	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b128 s[56:59], s[0:1], 0x60
	v_dual_mov_b32 v43, 0x7531 :: v_dual_lshlrev_b32 v38, 4, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v39, 1, v0
	s_clause 0x1
	s_load_b256 s[36:43], s[0:1], 0x0
	s_load_b64 s[4:5], s[0:1], 0x70
	v_dual_mov_b32 v45, 0x7632 :: v_dual_and_b32 v36, 16, v38
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s2, 5
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s6, v39
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s7, s6, s2
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	v_dual_mov_b32 v103, 0xff800000 :: v_dual_and_b32 v40, 15, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v3
	s_clause 0x1
	s_load_b64 s[64:65], s[0:1], 0x20
	s_load_b128 s[52:55], s[0:1], 0x30
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v44, 0x5410 :: v_dual_lshlrev_b32 v49, 1, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[60:61], null, s56, v39, v[36:37]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s22, s56, v36
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s61, s37, 0xffff
	s_mov_b32 s60, s36
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v51, 24, v0
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, vcc_lo, s22
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[1:2], null, s56, s7, v[60:61]
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v47, v0, 4, 1
	v_dual_mov_b32 v29, v24 :: v_dual_and_b32 v48, 1, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_mov_b32_e32 v28, v24
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v55, v49, 30, v47
	v_xor_b32_e32 v76, v38, v51
	v_and_b32_e32 v51, 24, v49
	buffer_load_b128 v[32:35], v1, s[60:63], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v1, v39, 16, v40
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s61, s43, 0xffff
	s_mov_b32 s60, s42
	v_dual_mov_b32 v42, 0x6420 :: v_dual_and_b32 v75, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v74, s7, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s6, v1
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s1
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s1, 0, v48
	v_dual_mov_b32 v85, 0xff800000 :: v_dual_lshlrev_b32 v2, 1, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	v_dual_mov_b32 v27, v24 :: v_dual_and_b32 v46, 56, v0
	v_dual_mov_b32 v16, v24 :: v_dual_lshlrev_b32 v77, 2, v55
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_dual_mov_b32 v21, v24 :: v_dual_and_b32 v38, 48, v38
	v_lshl_or_b32 v78, v40, 5, v51
	v_dual_mov_b32 v17, v24 :: v_dual_lshlrev_b32 v52, 3, v0
	buffer_load_u16 v41, v1, s[60:63], 0 offen
	v_cndmask_b32_e64 v42, 0x7531, v42, s1
	v_dual_mov_b32 v31, v24 :: v_dual_and_b32 v50, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v54, 1, v46
	v_xor_b32_e32 v38, v38, v46
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v80, 4, v77
	v_xor_b32_e32 v46, 8, v78
	v_bfe_i32 v53, v0, 3, 1
	v_dual_mov_b32 v23, v24 :: v_dual_and_b32 v52, 48, v52
	v_cndmask_b32_e64 v40, 0x6420, v43, s1
	v_lshl_or_b32 v42, v42, 8, v42
	v_dual_mov_b32 v26, v24 :: v_dual_lshlrev_b32 v37, 3, v50
	v_dual_mov_b32 v13, v24 :: v_dual_add_nc_u32 v86, 0, v46
	v_dual_mov_b32 v30, v24 :: v_dual_and_b32 v53, 0x210, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v9, v24 :: v_dual_and_b32 v42, 0x750031, v42
	v_lshl_or_b32 v43, v50, 6, v52
	v_lshl_or_b32 v40, v40, 8, v40
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s8, s3, 0x10007
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s0, 4
	v_mad_u64_u32 v[61:62], null, s5, v39, v[36:37]
	v_mov_b32_e32 v18, v24
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s8, s3, s8
	v_lshl_or_b32 v82, v50, 9, v38
	v_xor_b32_e32 v83, v43, v53
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s4, s3
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s4, s57, v37
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[62:63], null, s57, v54, v[37:38]
	v_lshl_or_b32 v36, v42, 4, v42
	v_and_b32_e32 v37, 0x750031, v40
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s7, s0, 14
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s0, s59, s0
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s6, s5, s6
	s_and_b32 s53, s53, 0xffff
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v1, v24 :: v_dual_and_b32 v90, 0x7050301, v36
	s_mov_b32 s69, s53
	v_xor_b32_e32 v38, 0x90, v82
	v_xor_b32_e32 v39, 0x120, v82
	v_xor_b32_e32 v40, 0x1b0, v82
	v_xor_b32_e32 v42, 16, v83
	s_add_i32 s53, s0, s6
	v_lshl_or_b32 v36, v37, 4, v37
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v75
	v_dual_mov_b32 v22, v24 :: v_dual_add_nc_u32 v91, 0, v38
	v_dual_mov_b32 v8, v24 :: v_dual_add_nc_u32 v93, 0, v40
	v_dual_mov_b32 v3, v24 :: v_dual_add_nc_u32 v92, 0, v39
	v_dual_mov_b32 v5, v24 :: v_dual_add_nc_u32 v94, 0, v42
	v_cndmask_b32_e64 v40, 0x1054, v44, s0
	v_cndmask_b32_e64 v42, 0x3276, v45, s0
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s8, s8, 0x80000
	v_and_b32_e32 v100, 0x7050301, v36
	s_sext_i32_i16 s8, s8
	v_lshl_or_b32 v36, v40, 8, v40
	v_lshl_or_b32 v40, v42, 8, v42
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s8, s8, 10
	v_dual_mov_b32 v19, v24 :: v_dual_lshlrev_b32 v48, 6, v48
	s_and_b32 s8, s8, 0xfffff800
	s_mov_b32 s68, s52
	s_add_i32 s52, s8, s7
	v_mov_b32_e32 v0, v24
	v_xor_b32_e32 v55, 8, v76
	v_and_or_b32 v79, v49, 60, v48
	v_xor_b32_e32 v48, 16, v78
	v_xor_b32_e32 v49, 24, v78
	v_xor_b32_e32 v43, 32, v83
	v_xor_b32_e32 v50, 48, v83
	v_xor_b32_e32 v51, 0x420, v83
	v_xor_b32_e32 v52, 0x430, v83
	v_xor_b32_e32 v53, 0x410, v83
	v_or_b32_e32 v89, s52, v47
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s9, s58, 0x3fb8aa3b
	v_dual_mov_b32 v104, 0xff800000 :: v_dual_mov_b32 v25, v24
	v_dual_mov_b32 v20, v24 :: v_dual_add_nc_u32 v87, 0, v48
	v_dual_mov_b32 v10, v24 :: v_dual_add_nc_u32 v95, 0, v43
	v_dual_mov_b32 v11, v24 :: v_dual_add_nc_u32 v84, 0, v55
	v_dual_mov_b32 v12, v24 :: v_dual_add_nc_u32 v97, 0, v51
	v_dual_mov_b32 v14, v24 :: v_dual_add_nc_u32 v99, 0, v53
	v_dual_mov_b32 v15, v24 :: v_dual_add_nc_u32 v88, 0, v49
	v_mov_b32_e32 v6, v24
	v_dual_mov_b32 v7, v24 :: v_dual_add_nc_u32 v96, 0, v50
	v_dual_mov_b32 v105, v24 :: v_dual_add_nc_u32 v98, 0, v52
	v_xor_b32_e32 v81, 64, v79
	v_or_b32_e32 v102, 30, v89
	s_mov_b32 s44, 0
	s_and_b32 s39, s39, 0xffff
	s_mov_b32 s72, 0x76543210
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_mov_b32 s70, s62
	s_mov_b32 s71, s63
	s_mov_b32 s73, s44
	s_and_b32 s65, s65, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s42, s62
	s_mov_b32 s43, s63
	s_mov_b32 s60, s38
	s_mov_b32 s61, s39
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v46, v77, v32
	ds_bpermute_b32 v32, v80, v32
	ds_bpermute_b32 v37, v77, v33
	ds_bpermute_b32 v33, v80, v33
	ds_bpermute_b32 v38, v77, v34
	ds_bpermute_b32 v34, v80, v34
	ds_bpermute_b32 v39, v77, v35
	ds_bpermute_b32 v35, v80, v35
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v63, v32, v46, s0
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v64, v33, v37, s0
	v_cndmask_b32_e64 v67, v37, v33, s0
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[65:66], null, s57, 3, v[62:63]
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v66, v46, v32, s0
	v_and_b32_e32 v32, 0x540054, v36
	v_and_b32_e32 v36, 0x760076, v40
	v_dual_mov_b32 v2, v24 :: v_dual_mul_f32 v101, s9, v41
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v68, v34, v38, s0
	v_lshl_or_b32 v32, v32, 4, v32
	v_lshl_or_b32 v33, v36, 4, v36
	v_mov_b32_e32 v4, v24
	v_cndmask_b32_e64 v70, v38, v34, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v69, v35, v39, s0
	v_cndmask_b32_e64 v71, v39, v35, s0
	v_and_b32_e32 v72, 0x5040504, v32
	v_and_b32_e32 v73, 0x7060706, v33
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_or_b32 s3, s73, s52
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s5, s53, s73
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[42:43], null, s3, s56, v[60:61]
	v_or_b32_e32 v44, 2, v89
	v_or_b32_e32 v45, 4, v89
	v_add_nc_u32_e32 v59, 8, v61
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v43, s5, v61, 2
	v_add_nc_u32_e32 v58, 4, v61
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v112, s73, v44, 1
	v_add_lshl_u32 v113, s73, v45, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v45, v59, s5, 2
	v_cndmask_b32_e32 v143, 0x80000000, v43, vcc_lo
	v_add_lshl_u32 v44, v58, s5, 2
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v42, 0x80000000, v42, s22
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v32, s44 :: v_dual_add_nc_u32 v41, 0, v76
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 879 36                        ; attention.py:879:36
	v_dual_cndmask_b32 v146, 0x80000000, v45 :: v_dual_cndmask_b32 v145, 0x80000000, v44
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[42:45], v42, s[60:63], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v33, s45 :: v_dual_add_nc_u32 v40, 0, v78
	v_or_b32_e32 v56, 26, v89
	v_or_b32_e32 v57, 28, v89
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or_b32_e32 v46, 6, v89
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v141, s73, v56, 1
	v_add_lshl_u32 v142, s73, v57, 1
	v_or_b32_e32 v47, 8, v89
	v_add_nc_u32_e32 v107, 12, v61
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v108, s57, v62
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s3, s3, s57
	v_or_b32_e32 v48, 10, v89
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v109, s57, 1, v62
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v123, s73, v46, 1
	v_add_lshl_u32 v124, s73, v47, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v46, v107, s5, 2
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v47, s3, v108, 1
	v_or_b32_e32 v49, 12, v89
	v_add_lshl_u32 v110, s3, v62, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v34, s46 :: v_dual_mov_b32 v35, s47
	v_dual_mov_b32 v36, s48 :: v_dual_mov_b32 v37, s49
	v_dual_mov_b32 v38, s50 :: v_dual_mov_b32 v39, s51
	v_or_b32_e32 v50, 14, v89
	v_or_b32_e32 v51, 16, v89
	v_or_b32_e32 v52, 18, v89
	v_or_b32_e32 v53, 20, v89
	v_or_b32_e32 v54, 22, v89
	v_or_b32_e32 v55, 24, v89
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v125, s73, v48, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v48, s3, v109, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v147, 0x80000000, v46, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v46, 0x80000000, v47, s4
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v126, s73, v49, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v49, 0x80000000, v110, s4
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v127, s73, v50, 1
	v_add_lshl_u32 v128, s73, v51, 1
	v_add_lshl_u32 v129, s73, v52, 1
	v_add_lshl_u32 v138, s73, v53, 1
	v_add_lshl_u32 v139, s73, v54, 1
	v_add_lshl_u32 v140, s73, v55, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v148, 0x80000000, v48, s4
	v_add_lshl_u32 v111, s3, v65, 1
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v106, s73, v89, 1
	v_add_lshl_u32 v122, s73, v102, 1
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s38, 0xff800000, v103
	.loc	1 881 25                        ; attention.py:881:25
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v144, 0x80000000, v111, s4
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v41, v[42:43]
	ds_store_b64 v84, v[44:45]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[56:59], v40 offset1:1
	ds_load_2addr_stride64_b64 v[114:117], v86 offset1:1
	ds_load_2addr_stride64_b64 v[118:121], v87 offset1:1
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[40:43], v46, s[40:43], 0 offen
	buffer_load_b128 v[44:47], v49, s[40:43], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x7
	buffer_load_u16 v106, v106, s[64:67], 0 offen
	buffer_load_u16 v107, v112, s[64:67], 0 offen
	buffer_load_u16 v108, v113, s[64:67], 0 offen
	buffer_load_u16 v109, v123, s[64:67], 0 offen
	buffer_load_u16 v110, v124, s[64:67], 0 offen
	buffer_load_u16 v111, v125, s[64:67], 0 offen
	buffer_load_u16 v112, v126, s[64:67], 0 offen
	buffer_load_u16 v113, v127, s[64:67], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[56:57], v[63:64], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[58:59], v[63:64], v[32:39] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[56:59], v88 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[114:115], v[68:69], v[48:55] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_b128 v[32:35], v143, s[68:71], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[130:137], v[116:117], v[68:69], v[130:137] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[118:119], v[66:67], v[48:55] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[130:137], v[120:121], v[66:67], v[130:137] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_b128 v[36:39], v145, s[68:71], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x7
	buffer_load_u16 v114, v128, s[64:67], 0 offen
	buffer_load_u16 v115, v129, s[64:67], 0 offen
	buffer_load_u16 v116, v138, s[64:67], 0 offen
	buffer_load_u16 v117, v139, s[64:67], 0 offen
	buffer_load_u16 v118, v140, s[64:67], 0 offen
	buffer_load_u16 v119, v141, s[64:67], 0 offen
	buffer_load_u16 v120, v142, s[64:67], 0 offen
	buffer_load_u16 v121, v122, s[64:67], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[56:57], v[70:71], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[58:59], v[70:71], v[130:137] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v122, v48
	v_cvt_f32_i32_e32 v123, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v124, v50
	v_cvt_f32_i32_e32 v125, v51
	v_cvt_f32_i32_e32 v126, v52
	v_cvt_f32_i32_e32 v127, v53
	v_cvt_f32_i32_e32 v128, v54
	v_cvt_f32_i32_e32 v129, v55
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x1
	buffer_load_b128 v[52:55], v146, s[68:71], 0 offen
	buffer_load_b128 v[48:51], v147, s[68:71], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[56:59], v148, s[40:43], 0 offen
	buffer_load_b128 v[139:142], v144, s[40:43], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v137, v137
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v106, 16, v106
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v107, 16, v107
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v108, 16, v108
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v109, 16, v109
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v110, 16, v110
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v143.h, v40.l
	v_mov_b16_e32 v40.l, v44.h
	v_mov_b16_e64 v143.l, v44.l
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v111, 16, v111
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v112, 16, v112
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(14)
	v_dual_mov_b32 v138, v40 :: v_dual_lshlrev_b32 v113, 16, v113
	v_add_nc_u32_e32 v40, 0, v82
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(12)
	v_dual_cndmask_b32 v38, 0xff800000, v38 :: v_dual_cndmask_b32 v35, 0xff800000, v35
	v_dual_cndmask_b32 v34, 0xff800000, v34 :: v_dual_cndmask_b32 v37, 0xff800000, v37
	v_dual_cndmask_b32 v39, 0xff800000, v39 :: v_dual_cndmask_b32 v36, 0xff800000, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v35
	v_cmp_neq_f32_e64 s13, 0xff800000, v38
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v114, 16, v114
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s12, 0xff800000, v39
	v_cmp_neq_f32_e64 s15, 0xff800000, v36
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s17, vcc_lo, s3
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v115, 16, v115
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v116, 16, v116
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v117, 16, v117
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v118, 16, v118
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v119, 16, v119
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(3)
	v_dual_cndmask_b32 v53, 0xff800000, v53 :: v_dual_cndmask_b32 v52, 0xff800000, v52
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e32 v51, 0xff800000, v51, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v144.l, v56.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v144.h, v139.l
	v_mov_b16_e64 v139.l, v56.h
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v53
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v56, 0, v83
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v52
	v_cmp_neq_f32_e64 s16, 0xff800000, v51
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v40, v[143:144], v[138:139] offset1:8
	v_mov_b16_e64 v143.h, v41.l
	v_mov_b16_e32 v41.l, v45.h
	v_mov_b16_e64 v144.l, v57.l
	v_mov_b16_e64 v144.h, v140.l
	v_mov_b16_e64 v143.l, v45.l
	v_mov_b16_e64 v140.l, v57.h
	v_mov_b32_e32 v139, v41
	v_mov_b16_e32 v40.h, v42.l
	v_mov_b16_e32 v42.l, v46.h
	v_mov_b16_e32 v41.l, v58.l
	v_mov_b16_e64 v41.h, v141.l
	ds_store_2addr_b64 v91, v[143:144], v[139:140] offset1:8
	v_mov_b16_e32 v40.l, v46.l
	v_mov_b16_e64 v141.l, v58.h
	v_mov_b32_e32 v140, v42
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v46, v104, v104 :: v_dual_mov_b32 v45, v105
	.loc	1 879 36                        ; attention.py:879:36
	v_dual_cndmask_b32 v50, 0xff800000, v50 :: v_dual_cndmask_b32 v49, 0xff800000, v49
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v92, v[40:41], v[140:141] offset1:8
	v_mov_b16_e64 v41.h, v142.l
	v_mov_b16_e64 v142.l, v59.h
	v_mov_b16_e32 v41.l, v59.l
	v_mov_b16_e32 v40.l, v47.l
	v_mov_b16_e32 v40.h, v43.l
	v_mov_b16_e32 v43.l, v47.h
	v_mov_b32_e32 v44, v142
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s21, 0xff800000, v50
	v_cmp_neq_f32_e64 s23, 0xff800000, v49
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v48, 0xff800000, v48, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v42.h, 0
	ds_store_2addr_b64 v93, v[40:41], v[43:44] offset1:8
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v43, 0xff800000, v33, vcc_lo
	v_cndmask_b32_e32 v41, 0xff800000, v32, vcc_lo
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v34
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v32, 0, 1, s17
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b32_e32 v44, 0xff800000, v54, vcc_lo
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v43
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v54, 0xff800000, v55, vcc_lo
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v41
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s18, vcc_lo, s5
	v_lshlrev_b16 v32.l, 8, v32.l
	s_and_b32 s19, vcc_lo, s6
	v_cndmask_b32_e64 v33, 0, 1, s18
	v_cndmask_b32_e64 v55, 0, 1, s19
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v54
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s20, vcc_lo, s7
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s9, 0xff800000, v44
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v59, 0, 1, s20
	v_or_b16 v138.h, v33.l, v32.l
	v_mov_b16_e32 v32.l, v55.l
	s_and_b32 s5, vcc_lo, s8
	s_and_b32 s6, vcc_lo, s9
	v_cndmask_b32_e64 v104, 0, 1, s5
	v_mov_b16_e32 v33.l, v59.l
	v_lshlrev_b16 v32.l, 8, v32.l
	v_cndmask_b32_e64 v105, 0, 1, s6
	s_and_b32 s7, vcc_lo, s10
	s_and_b32 s8, vcc_lo, s11
	v_cndmask_b32_e64 v139, 0, 1, s7
	v_or_b16 v138.l, v33.l, v32.l
	v_mov_b16_e32 v32.l, v104.l
	v_mov_b16_e32 v33.l, v105.l
	v_cndmask_b32_e64 v55, 0, 1, s8
	s_and_b32 s10, vcc_lo, s12
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v37
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v32.l, 8, v32.l
	v_cndmask_b32_e64 v59, 0, 1, s10
	s_and_b32 s9, vcc_lo, s13
	s_and_b32 s11, vcc_lo, s16
	v_cndmask_b32_e64 v105, 0, 1, s9
	v_or_b16 v104.h, v33.l, v32.l
	v_mov_b16_e64 v32.l, v139.l
	v_mov_b16_e32 v33.l, v55.l
	s_and_b32 s13, vcc_lo, s14
	s_and_b32 s14, vcc_lo, s15
	v_cndmask_b32_e64 v55, 0, 1, s13
	v_lshlrev_b16 v32.l, 8, v32.l
	v_cndmask_b32_e64 v139, 0, 1, s14
	s_and_b32 s12, vcc_lo, s21
	s_and_b32 s16, vcc_lo, s23
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s24, 0xff800000, v48
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v104.l, v33.l, v32.l
	v_mov_b16_e32 v32.l, v59.l
	v_mov_b16_e32 v33.l, v105.l
	v_cndmask_b32_e64 v105, 0, 1, s11
	s_and_b32 s15, vcc_lo, s24
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v57.h, v42.h
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v32.l, 8, v32.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v58.h, v42.h
	v_mov_b16_e64 v139.h, v42.h
	v_mov_b16_e32 v40.h, v42.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v59.h, v33.l, v32.l
	v_mov_b16_e32 v32.l, v55.l
	v_mov_b16_e64 v33.l, v139.l
	v_cndmask_b32_e64 v55, 0, 1, s16
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v47, v85, v85
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v32.l, 8, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v59.l, v33.l, v32.l
	v_mov_b16_e32 v32.l, v105.l
	v_cndmask_b32_e64 v33, 0, 1, s12
	v_lshlrev_b16 v32.l, 8, v32.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v105.h, v33.l, v32.l
	v_mov_b16_e32 v32.l, v55.l
	v_cndmask_b32_e64 v33, 0, 1, s15
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v55, v101, v124
	v_mul_f32_e32 v124, v101, v127
	v_mul_f32_e32 v127, v101, v130
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v32.l, 8, v32.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v130, v101, v133
	v_mul_f32_e32 v133, v101, v136
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v105.l, v33.l, v32.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v33, v101, v123
	v_mul_f32_e32 v123, v101, v126
	v_mul_f32_e32 v126, v101, v129
	v_mul_f32_e32 v129, v101, v132
	v_mul_f32_e32 v132, v101, v135
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v135, v43, v41, s1
	v_cndmask_b32_e64 v41, v41, v43, s1
	v_cndmask_b32_e64 v43, v35, v34, s1
	v_cndmask_b32_e64 v34, v34, v35, s1
	v_cndmask_b32_e64 v35, v37, v36, s1
	v_cndmask_b32_e64 v36, v36, v37, s1
	v_cndmask_b32_e64 v37, v39, v38, s1
	ds_bpermute_b32 v43, v77, v43
	ds_bpermute_b32 v34, v80, v34
	ds_bpermute_b32 v35, v77, v35
	ds_bpermute_b32 v36, v80, v36
	v_cndmask_b32_e64 v38, v38, v39, s1
	v_cndmask_b32_e64 v39, v53, v52, s1
	v_cndmask_b32_e64 v52, v52, v53, s1
	v_cndmask_b32_e64 v53, v54, v44, s1
	v_cndmask_b32_e64 v44, v44, v54, s1
	v_cndmask_b32_e64 v54, v49, v48, s1
	v_cndmask_b32_e64 v48, v48, v49, s1
	v_cndmask_b32_e64 v49, v51, v50, s1
	v_cndmask_b32_e64 v50, v50, v51, s1
	ds_bpermute_b32 v51, v77, v135
	ds_bpermute_b32 v41, v80, v41
	ds_bpermute_b32 v135, v77, v37
	ds_bpermute_b32 v136, v80, v38
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v32, v101, v122
	v_mul_f32_e32 v122, v101, v125
	v_mul_f32_e32 v125, v101, v128
	v_mul_f32_e32 v128, v101, v131
	v_mul_f32_e32 v131, v101, v134
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v52, v80, v52
	ds_bpermute_b32 v53, v77, v53
	ds_bpermute_b32 v44, v80, v44
	ds_bpermute_b32 v54, v77, v54
	ds_bpermute_b32 v48, v80, v48
	ds_bpermute_b32 v140, v77, v49
	ds_bpermute_b32 v141, v80, v50
	s_waitcnt lgkmcnt(13)
	v_cndmask_b32_e64 v38, v34, v43, s0
	v_cndmask_b32_e64 v43, v43, v34, s0
	s_waitcnt lgkmcnt(11)
	v_cndmask_b32_e64 v34, v36, v35, s0
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v134, v101, v137
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v137, v77, v39
	s_waitcnt lgkmcnt(10)
	v_cndmask_b32_e64 v37, v41, v51, s0
	v_cndmask_b32_e64 v142, v35, v36, s0
	s_waitcnt lgkmcnt(8)
	v_cndmask_b32_e64 v35, v136, v135, s0
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v120, 16, v120
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v41, v51, v41, s0
	v_mul_f32_e32 v143, 0x3fb8aa3b, v37
	v_mul_f32_e32 v43, 0x3fb8aa3b, v43
	v_dual_mul_f32 v146, 0x3fb8aa3b, v35 :: v_dual_lshlrev_b32 v121, 16, v121
	v_mul_f32_e32 v144, 0x3fb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v143, v32, v106
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v106, v135, v136, s0
	s_waitcnt lgkmcnt(5)
	v_cndmask_b32_e64 v50, v44, v53, s0
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v51, v48, v54, s0
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v146, v122, v109
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v135, v54, v48, s0
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v48, v141, v140, s0
	v_dual_mul_f32 v41, 0x3fb8aa3b, v41 :: v_dual_mul_f32 v106, 0x3fb8aa3b, v106
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v49, v52, v137, s0
	v_cndmask_b32_e64 v122, v137, v52, s0
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_perm_b32 v137, v105, v104, v90
	v_perm_b32 v104, v105, v104, v100
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v44, v53, v44, s0
	.loc	1 881 25                        ; attention.py:881:25
	v_perm_b32 v136, v59, v138, v90
	v_perm_b32 v59, v59, v138, v100
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v105, 0x3fb8aa3b, v49 :: v_dual_mul_f32 v138, 0x3fb8aa3b, v50
	v_dual_mul_f32 v148, 0x3fb8aa3b, v48 :: v_dual_fmac_f32 v41, v127, v114
	v_mul_f32_e32 v44, 0x3fb8aa3b, v44
	.loc	1 881 25                        ; attention.py:881:25
	ds_bpermute_b32 v114, v77, v137
	ds_bpermute_b32 v104, v80, v104
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v105, v123, v110 :: v_dual_fmac_f32 v148, v126, v113
	.loc	1 881 25                        ; attention.py:881:25
	ds_bpermute_b32 v113, v77, v136
	ds_bpermute_b32 v59, v80, v59
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v147, 0x3fb8aa3b, v51
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v138, v124, v111 :: v_dual_mul_f32 v111, 0x3fb8aa3b, v142
	v_fmac_f32_e32 v106, v130, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v44, v132, v119 :: v_dual_fmac_f32 v147, v125, v112
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v112, v140, v141, s0
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v43, v128, v115
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v115, 0x3fb8aa3b, v122
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v111, v129, v116 :: v_dual_mul_f32 v116, 0x3fb8aa3b, v135
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v112, 0x3fb8aa3b, v112 :: v_dual_mul_f32 v145, 0x3fb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v115, v131, v118 :: v_dual_fmac_f32 v144, v33, v107
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v118, v104, v114, s0
	v_cndmask_b32_e64 v104, v114, v104, s0
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v112, v134, v121
	v_fmac_f32_e32 v116, v133, v120
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v117, v59, v113, s0
	v_and_b32_e32 v119, 1, v118
	v_and_b32_e32 v124, 0x100, v104
	v_and_b32_e32 v123, 1, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v145, v55, v108 :: v_dual_and_b32 v114, 0x100, v117
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s31, 1, v119
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u32_e64 s24, 0, v124
	v_and_b32_e32 v124, 0x1000000, v117
	v_cmp_eq_u32_e64 s23, 1, v123
	v_cmp_eq_u32_e64 s30, 0, v114
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v130, 0xff800000, v105, s31
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v123, 0x1000000, v118
	v_cmp_eq_u32_e64 s34, 0, v124
	v_cndmask_b32_e64 v59, v113, v59, s0
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v129, v144, 0xff800000, s30
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v113, 1, v117
	v_and_b32_e32 v125, 0x1000000, v104
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v124, v146, 0xff800000, s34
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v120, 0x100, v118
	v_and_b32_e32 v118, 0x10000, v118
	v_cmp_eq_u32_e64 s29, 1, v113
	v_cmp_eq_u32_e64 s37, 0, v123
	v_and_b32_e32 v104, 0x10000, v104
	v_cmp_eq_u32_e64 s33, 0, v120
	v_cmp_eq_u32_e64 s36, 0, v118
	v_cmp_eq_u32_e64 s21, 0, v125
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v125, 0xff800000, v143, s29
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v121, 1, v59
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v131, v138, 0xff800000, s33
	v_cndmask_b32_e64 v133, v147, 0xff800000, s36
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v117, 0x10000, v117
	v_and_b32_e32 v122, 0x100, v59
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v123, v148, 0xff800000, s37
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s25, 0, v104
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v126, 0xff800000, v115, s23
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s35, 0, v117
	v_cmp_eq_u32_e64 s3, 0, v122
	v_and_b32_e32 v122, 0x1000000, v59
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v44, v44, 0xff800000, s24
	v_cndmask_b32_e64 v127, v116, 0xff800000, s25
	v_cndmask_b32_e64 v132, v145, 0xff800000, s35
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v59, 0x10000, v59
	v_cmp_eq_u32_e64 s26, 0, v122
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v43, v43, 0xff800000, s3
	v_cndmask_b32_e64 v135, v112, 0xff800000, s21
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v104, v126, v44, v127
.Ltmp2:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s27, 0, v59
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v128, v106, 0xff800000, s26
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v106, v125, v129
.Ltmp4:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s28, 1, v121
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[52:55], v98
	ds_load_b128 v[48:51], v97
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v59, v111, 0xff800000, s27
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v111, v124, v130, v131
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[32:35], v56
	ds_load_b128 v[36:39], v94
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v41, 0xff800000, v41, s28
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[107:110], v94 offset:2048
	ds_load_b128 v[119:122], v56 offset:1024
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v105, v43, v59, v128
	v_max3_f32 v112, v133, v123, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v104, v105, v104, v135
	v_max3_f32 v105, v106, v132, v111
	v_max3_f32 v104, v105, v112, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v105, v104, s72, 0xfedcba98 op_sel:[1,0]
.Ltmp9:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v136, v103, v104, v105
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v104, v129, v136
	v_sub_f32_e32 v105, v125, v136
	v_sub_f32_e32 v106, v132, v136
	v_sub_f32_e32 v111, v124, v136
	v_sub_f32_e32 v112, v130, v136
	v_sub_f32_e32 v113, v131, v136
	v_sub_f32_e32 v114, v133, v136
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v104, v104
	v_exp_f32_e32 v105, v105
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v115, v123, v136
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v106, v106
	v_exp_f32_e32 v111, v111
	v_exp_f32_e32 v112, v112
	v_exp_f32_e32 v113, v113
	v_exp_f32_e32 v114, v114
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_sub_f32_e32 v116, v103, v136
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v115, v115
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v103, v104, 0, s30
	v_cndmask_b32_e64 v104, 0, v105, s29
	v_cndmask_b32_e64 v105, v106, 0, s35
	v_cndmask_b32_e64 v106, v111, 0, s34
	v_cndmask_b32_e64 v111, 0, v112, s31
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v112, v113, 0, s33
	v_cndmask_b32_e64 v113, v114, 0, s36
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v42.l, v103.h
	v_mov_b16_e32 v57.l, v104.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v114, v115, 0, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v58.l, v105.h
	v_mov_b16_e64 v139.l, v113.h
	v_and_b32_e32 v115, 1, v42
	v_and_b32_e32 v57, 1, v57
	v_mov_b16_e32 v42.l, v106.h
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v134, v116
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s30, v104, v104
	v_mov_b16_e32 v40.l, v111.h
	v_and_b32_e32 v58, 1, v58
	v_and_b32_e32 v116, 1, v139
	v_add3_u32 v57, v104, v57, 0x7fff
	v_and_b32_e32 v104, 1, v42
	v_mov_b16_e32 v42.l, v112.h
	v_cmp_o_f32_e64 s29, v103, v103
	v_add3_u32 v103, v103, v115, 0x7fff
	v_cmp_o_f32_e64 s31, v105, v105
	v_cmp_o_f32_e64 s36, v113, v113
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v58, v105, v58, 0x7fff
	v_add3_u32 v105, v113, v116, 0x7fff
	v_cndmask_b16 v103.l, 0x7fff, v57.h, s30
	v_and_b32_e32 v57, 1, v42
	v_mov_b16_e32 v42.l, v114.h
	v_add3_u32 v104, v106, v104, 0x7fff
	v_cmp_o_f32_e64 s33, v106, v106
	v_cmp_o_f32_e64 s34, v111, v111
	v_add3_u32 v40, v111, v40, 0x7fff
	v_cndmask_b16 v104.l, 0x7fff, v105.h, s36
	v_and_b32_e32 v105, 1, v42
	v_cmp_o_f32_e64 s37, v114, v114
	v_cndmask_b16 v40.l, 0x7fff, v58.h, s31
	v_cndmask_b16 v58.l, 0x7fff, v40.h, s34
	v_cndmask_b16 v40.h, 0x7fff, v104.h, s33
	v_add3_u32 v105, v114, v105, 0x7fff
	v_cmp_o_f32_e64 s35, v112, v112
	v_cndmask_b16 v103.h, 0x7fff, v103.h, s29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v114, v40, s72, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v104.h, 0x7fff, v105.h, s37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v106, v103, s72, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v113, v114, v40, v72
	v_perm_b32 v114, v114, v40, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v40, v104, s72, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v111, v106, v103, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v117, v40, v104, v72
	v_perm_b32 v118, v40, v104, v73
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v40, 0, v134, s38
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v40
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v57, v112, v57, 0x7fff
	v_perm_b32 v112, v106, v103, v73
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v40
	v_mul_f32_e32 v17, v17, v40
	v_mul_f32_e32 v18, v18, v40
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v58.h, 0x7fff, v57.h, s35
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v19, v19, v40
	v_mul_f32_e32 v20, v20, v40
	v_mul_f32_e32 v21, v21, v40
	v_mul_f32_e32 v22, v22, v40
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v57, v58, s72, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v23, v23, v40
	v_mul_f32_e32 v24, v24, v40
	v_mul_f32_e32 v25, v25, v40
	v_mul_f32_e32 v27, v27, v40
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v115, v57, v58, v72
	v_perm_b32 v116, v57, v58, v73
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v40
	v_mul_f32_e32 v29, v29, v40
	v_mul_f32_e32 v31, v31, v40
	v_mul_f32_e32 v8, v8, v40
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[48:55], v[111:118], v[16:23]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_mov_b16_e32 v53.h, v42.h
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v30, v30, v40
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[103:106], v56 offset:2048
	ds_load_b128 v[48:51], v56 offset:3072
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v40
	v_mul_f32_e32 v10, v10, v40
	v_mul_f32_e32 v11, v11, v40
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[32:39], v[111:118], v[24:31]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[32:35], v97 offset:2048
	ds_load_b128 v[36:39], v98 offset:2048
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v12, v12, v40
	v_mul_f32_e32 v13, v13, v40
	v_mul_f32_e32 v14, v14, v40
	v_mul_f32_e32 v15, v15, v40
	v_mul_f32_e32 v0, v0, v40
	v_mul_f32_e32 v1, v1, v40
	v_mul_f32_e32 v2, v2, v40
	v_mul_f32_e32 v3, v3, v40
	v_mul_f32_e32 v4, v4, v40
	v_mul_f32_e32 v5, v5, v40
	v_mul_f32_e32 v6, v6, v40
	v_mul_f32_e32 v7, v7, v40
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, v126, v130, s0
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[103:110], v[111:118], v[8:15]
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v56, v130, v126, s0
	v_cndmask_b32_e64 v57, v44, v131, s0
	v_cndmask_b32_e64 v58, v131, v44, s0
	v_cndmask_b32_e64 v105, v135, v123, s0
	v_cndmask_b32_e64 v106, v123, v135, s0
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[32:39], v[111:118], v[0:7]
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, v41, v125, s0
	v_cndmask_b32_e64 v37, v125, v41, s0
	v_cndmask_b32_e64 v38, v43, v129, s0
	v_cndmask_b32_e64 v39, v129, v43, s0
	v_cndmask_b32_e64 v107, v59, v132, s0
	v_cndmask_b32_e64 v108, v132, v59, s0
	v_cndmask_b32_e64 v103, v127, v133, s0
	v_cndmask_b32_e64 v104, v133, v127, s0
	ds_bpermute_b32 v38, v79, v38
	ds_bpermute_b32 v39, v81, v39
	ds_bpermute_b32 v40, v79, v40
	ds_bpermute_b32 v56, v81, v56
	ds_bpermute_b32 v57, v79, v57
	ds_bpermute_b32 v58, v81, v58
	ds_bpermute_b32 v105, v79, v105
	ds_bpermute_b32 v106, v81, v106
	ds_bpermute_b32 v107, v79, v107
	ds_bpermute_b32 v37, v81, v37
	ds_bpermute_b32 v36, v79, v36
	ds_bpermute_b32 v108, v81, v108
	v_cndmask_b32_e64 v109, v128, v124, s0
	v_cndmask_b32_e64 v110, v124, v128, s0
	ds_bpermute_b32 v103, v79, v103
	ds_bpermute_b32 v104, v81, v104
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v52.h, v42.h
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v109, v79, v109
	ds_bpermute_b32 v110, v81, v110
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v118, v127, v136
	v_sub_f32_e32 v123, v128, v136
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(14)
	v_cndmask_b32_e64 v111, v39, v38, s1
	v_cndmask_b32_e64 v38, v38, v39, s1
	s_waitcnt lgkmcnt(12)
	v_cndmask_b32_e64 v112, v56, v40, s1
	v_cndmask_b32_e64 v40, v40, v56, s1
	s_waitcnt lgkmcnt(10)
	v_cndmask_b32_e64 v56, v58, v57, s1
	v_cndmask_b32_e64 v57, v57, v58, s1
	s_waitcnt lgkmcnt(8)
	v_cndmask_b32_e64 v58, v106, v105, s1
	v_cndmask_b32_e64 v105, v105, v106, s1
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(5)
	v_dual_max_f32 v39, v37, v37 :: v_dual_max_f32 v106, v36, v36
.Ltmp11:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v113, v108, v107, s1
	v_cndmask_b32_e64 v108, v107, v108, s1
	v_cndmask_b32_e64 v107, v37, v36, s1
	v_cndmask_b32_e64 v36, v36, v37, s1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v41, v136
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v114, v104, v103, s1
	v_cndmask_b32_e64 v115, v103, v104, s1
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v106, v39
	v_max3_f32 v106, v40, v56, v57
	v_max3_f32 v103, v103, v104, v58
	v_max3_f32 v104, v38, v113, v108
.Ltmp13:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v116, v110, v109, s1
	v_cndmask_b32_e64 v117, v109, v110, s1
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v109, v109, v110, v112
	v_max3_f32 v103, v106, v103, v105
	v_max3_f32 v39, v39, v111, v104
.Ltmp15:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v43, v136
	v_sub_f32_e32 v43, v59, v136
	v_sub_f32_e32 v59, v126, v136
	v_sub_f32_e32 v44, v44, v136
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s28
.Ltmp16:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v39, v39, v109, v103
.Ltmp17:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v43, v43
	v_exp_f32_e32 v59, v59
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v52.l, v37.h
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v104, v39
.Ltmp19:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v110, v118
	v_exp_f32_e32 v118, v123
	v_exp_f32_e32 v44, v44
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v52, 1, v52
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v104, v104 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, v41, 0, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v37, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v43, v43, 0, s27
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v37, v37, v52, 0x7fff
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v52, v104, v104
.Ltmp23:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v59, 0, v59, s23
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v54.h, v42.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v106, v118, 0, s26
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v53.l, v43.h
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v52
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v54.l, v59.h
	v_mov_b16_e32 v42.l, v41.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v44, v44, 0, s24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v104, v46, v39 :: v_dual_and_b32 v53, 1, v53
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v54, 1, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v46, v47, v39 :: v_dual_and_b32 v39, 1, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.l, v106.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v107, v104
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v103, v110, 0, s25
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v41, v41
	v_cmp_o_f32_e64 s24, v43, v43
	v_cmp_o_f32_e64 s25, v59, v59
	v_add3_u32 v43, v43, v53, 0x7fff
	v_add3_u32 v53, v59, v54, 0x7fff
	v_add3_u32 v39, v41, v39, 0x7fff
	v_and_b32_e32 v41, 1, v42
	v_mov_b16_e32 v42.l, v44.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s27, v106, v106
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s3
	v_cndmask_b16 v118.l, 0x7fff, v53.h, s25
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v36, v104
	v_sub_f32_e32 v52, v111, v104
	v_dual_sub_f32 v38, v38, v104 :: v_dual_sub_f32 v53, v85, v46
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v85
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s23
	v_add3_u32 v39, v106, v41, 0x7fff
	v_and_b32_e32 v41, 1, v42
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v85, v113, v104
	v_sub_f32_e32 v108, v108, v104
	v_sub_f32_e32 v110, v116, v104
	v_sub_f32_e32 v111, v117, v104
	v_sub_f32_e32 v112, v112, v104
	v_sub_f32_e32 v40, v40, v104
	v_sub_f32_e32 v56, v56, v104
	v_sub_f32_e32 v57, v57, v104
	v_sub_f32_e32 v113, v114, v104
	v_sub_f32_e32 v114, v115, v104
	v_sub_f32_e32 v58, v58, v104
	v_sub_f32_e32 v105, v105, v104
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s24
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v38, v38
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v43.h, 0x7fff, v39.h, s27
	v_add3_u32 v39, v44, v41, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v47, s20
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v47, v135, v136
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v115, v85
	v_exp_f32_e32 v108, v108
	v_exp_f32_e32 v110, v110
	v_exp_f32_e32 v111, v111
	v_exp_f32_e32 v112, v112
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v56, v56
	v_exp_f32_e32 v57, v57
	v_exp_f32_e32 v113, v113
	v_exp_f32_e32 v114, v114
	v_exp_f32_e32 v58, v58
	v_exp_f32_e32 v105, v105
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v109, v53
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s28, v44, v44
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s19
	v_cndmask_b32_e64 v44, 0, v52, s18
	v_cndmask_b32_e64 v38, 0, v38, s17
	v_mov_b32_e32 v85, v46
	v_cndmask_b32_e64 v46, 0, v115, s14
	v_cndmask_b32_e64 v108, 0, v108, s13
	v_cndmask_b32_e64 v110, 0, v110, s9
	v_cndmask_b32_e64 v111, 0, v111, s10
	v_cndmask_b32_e64 v112, 0, v112, s8
	v_cndmask_b32_e64 v40, 0, v40, s7
	v_cndmask_b32_e64 v56, 0, v56, s6
	v_cndmask_b32_e64 v57, 0, v57, s5
	v_cndmask_b32_e64 v113, 0, v113, s15
	v_cndmask_b32_e64 v114, 0, v114, s16
	v_cndmask_b32_e64 v58, 0, v58, s12
	v_cndmask_b32_e64 v105, 0, v105, s11
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v41, v41, v36 :: v_dual_add_f32 v44, v44, v38
.Ltmp27:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v47, v47, 0, s21
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v46, v46, v108
.Ltmp29:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v115, 0, v109, s3
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v109, v110, v111 :: v_dual_add_f32 v40, v112, v40
	v_dual_add_f32 v56, v56, v57 :: v_dual_add_f32 v57, v113, v114
	v_add_f32_e32 v58, v58, v105
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v55.h, v42.h
	v_mov_b16_e32 v55.l, v103.h
	v_mov_b16_e32 v42.l, v47.h
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v41, v41, v44 :: v_dual_add_f32 v44, v46, v109
	v_add_f32_e32 v40, v40, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_add_f32 v46, v57, v58 :: v_dual_and_b32 v55, 1, v55
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v53, v37, s72, 0xfedcba98 op_sel:[1,0]
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v41, v41, v44 :: v_dual_and_b32 v108, 1, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v40, v40, v46
.Ltmp35:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[32:35], v95
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s26, v103, v103
	v_add3_u32 v59, v103, v55, 0x7fff
	v_perm_b32 v106, v53, v37, v72
	v_perm_b32 v107, v53, v37, v73
	v_cndmask_b16 v118.h, 0x7fff, v39.h, s28
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[127:130], v95 offset:2048
	ds_load_b128 v[36:39], v96
	ds_load_b128 v[131:134], v96 offset:2048
	ds_load_b128 v[123:126], v99
	ds_load_b128 v[52:55], v99 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s17, v47, v47
	v_add3_u32 v47, v47, v108, 0x7fff
	v_permlanex16_b32 v56, v43, s72, 0xfedcba98 op_sel:[1,0]
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v41, v40
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v59.l, 0x7fff, v59.h, s26
	v_permlanex16_b32 v41, v118, s72, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v59.h, 0x7fff, v47.h, s17
	v_perm_b32 v108, v56, v43, v72
	v_perm_b32 v109, v56, v43, v73
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v43, v40
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v110, v41, v118, v72
	v_permlanex16_b32 v44, v59, s72, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v111, v41, v118, v73
	v_mov_b32_e32 v103, v136
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s3, s73, 32
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v112, v44, v59, v72
	v_perm_b32 v113, v44, v59, v73
	.loc	1 818 13                        ; attention.py:818:13
	s_cmpk_lt_u32 s73, 0x7e0
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v105, v40, v43
	s_mov_b32 s73, s3
.Ltmp43:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[32:39], v[106:113], v[24:31]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[119:126], v[106:113], v[16:23]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[127:134], v[106:113], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[48:55], v[106:113], v[0:7]
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v105, v45, v115
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	ds_bpermute_b32 v37, v77, v105
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.h, v42.h
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v36, 1, v75
	.loc	1 1046 24 is_stmt 0             ; attention.py:1046:24
	v_mul_lo_u32 v32, s57, v74
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v35, 16, v36
	v_or_b32_e32 v34, 32, v36
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s57, v36
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 48, v36
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s57, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_i32_e64 s3, s57, v34
	v_cmp_gt_i32_e64 s1, s57, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v39, null, v37, v37, v25
	v_div_scale_f32 v41, null, v37, v37, v24
	v_div_scale_f32 v50, null, v37, v37, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v46, v39
	v_rcp_f32_e32 v48, v41
	v_div_scale_f32 v44, null, v37, v37, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v57, v50
	v_div_scale_f32 v47, null, v37, v37, v26
	v_rcp_f32_e32 v51, v44
	v_div_scale_f32 v40, vcc_lo, v25, v37, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v52, v47
	v_fma_f32 v53, -v39, v46, 1.0
	v_fma_f32 v56, -v41, v48, 1.0
	v_div_scale_f32 v43, s6, v24, v37, v24
	v_fma_f32 v62, -v50, v57, 1.0
	v_div_scale_f32 v54, s8, v26, v37, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v48, v56, v48
	v_fma_f32 v56, -v44, v51, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v57, v62, v57 :: v_dual_fmac_f32 v46, v53, v46
	v_fma_f32 v58, -v47, v52, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v61, v43, v48
	v_div_scale_f32 v53, s9, v29, v37, v29
	v_dual_mul_f32 v59, v40, v46 :: v_dual_fmac_f32 v52, v58, v52
	v_fmac_f32_e32 v51, v56, v51
	v_div_scale_f32 v49, null, v37, v37, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v56, -v39, v59, v40
	v_div_scale_f32 v45, s7, v27, v37, v27
	v_rcp_f32_e32 v55, v49
	v_fma_f32 v58, -v41, v61, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v59, v56, v46 :: v_dual_mul_f32 v56, v54, v52
	v_fmac_f32_e32 v61, v58, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v39, v59, v40
	v_fma_f32 v40, -v47, v56, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v60, -v49, v55, 1.0
	v_fma_f32 v41, -v41, v61, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v46, v59
	s_mov_b32 vcc_lo, s6
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s6, 0, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v43, s10, v28, v37, v28
	v_div_fixup_f32 v25, v39, v37, v25
	v_fmac_f32_e32 v56, v40, v52
	v_div_fmas_f32 v41, v41, v48, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v39, v43, v57
	s_mov_b32 vcc_lo, s7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v24, v41, v37, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v42.l, v25.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v55, v60, v55
	v_mul_f32_e32 v60, v45, v51
	v_fma_f32 v58, -v44, v60, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v60, v58, v51
	v_fma_f32 v40, -v44, v60, v45
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v44, 0, v24, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v45, null, v37, v37, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v24, v40, v51, v60
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v44.h
	v_and_b32_e32 v40, 1, v42
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v46, v53, v55
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v24, v24, v37, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v27, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v47, v56, v54
	v_fma_f32 v38, -v49, v46, v53
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v44, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v27, v44, v27, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v41, v41, v52, v56
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_add3_u32 v25, v25, v40, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v40, 0, v24, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_scale_f32 v44, null, v37, v37, v31
	v_div_fixup_f32 v26, v41, v37, v26
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v24.h, 0x7fff, v25.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v25, -v50, v39, v43
	v_fmac_f32_e32 v46, v38, v55
	s_mov_b32 vcc_lo, s9
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v42.l, v40.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v39, v25, v57
	v_fma_f32 v41, -v49, v46, v53
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.h, v42.h
	v_and_b32_e32 v25, 1, v42
	v_mov_b16_e32 v38.l, v26.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v50, v39, v43
	v_div_fmas_f32 v41, v41, v55, v46
	s_mov_b32 vcc_lo, s10
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v25, v40, v25, 0x7fff
	v_cndmask_b16 v24.l, 0x7fff, v27.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v39, v43, v57, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v29, v41, v37, v29
	v_rcp_f32_e32 v49, v45
	s_mov_b32 s10, 0x7ffffffe
	v_div_fixup_f32 v28, v39, v37, v28
	v_div_scale_f32 v39, null, v37, v37, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v25.h, 0x7fff, v25.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_rcp_f32_e32 v40, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v43, v40
	v_div_scale_f32 v43, s8, v30, v37, v30
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v27, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v38, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v48, v43, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v27, v26, v27, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v29, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.l, v28.h
	v_mov_b16_e32 v29.h, v42.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v39, v48, v43
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v25.l, 0x7fff, v27.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v44, v38, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v42.l, v26.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v48, v50, v40 :: v_dual_and_b32 v27, 1, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v26, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v41, v38
	v_div_scale_f32 v41, s7, v31, v37, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v47, 1, v42
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v27, v28, v27, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v29, v41, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v47, v26, v47, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v44, v29, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v29, v46, v38
	v_div_scale_f32 v46, null, v37, v37, v16
	v_fma_f32 v26, -v44, v29, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v46
	v_fma_f32 v44, -v45, v49, 1.0
	v_div_fmas_f32 v26, v26, v38, v29
	v_fma_f32 v29, -v39, v48, v43
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v38, s7, v17, v37, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v31, v26, v37, v31
	v_fma_f32 v39, -v46, v41, 1.0
	v_div_fmas_f32 v29, v29, v40, v48
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v26.h, 0x7fff, v47.h, s9
	v_cmp_o_f32_e64 s9, v28, v28
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v41, v39, v41
	v_div_scale_f32 v39, s8, v16, v37, v16
	v_div_fixup_f32 v29, v29, v37, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v42.l, v31.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v49, v44, v49
	v_mul_f32_e32 v43, v39, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v26.l, 0x7fff, v27.h, s9
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v46, v43, v39
	v_dual_fmac_f32 v43, v28, v41 :: v_dual_and_b32 v28, 1, v42
	v_mul_f32_e32 v40, v38, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v46, v43, v39
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v28, v31, v28, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v45, v40, v38
	v_fmac_f32_e32 v40, v30, v49
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v30.l, v29.h
	v_mov_b16_e32 v30.h, v42.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v27, 1, v30
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v45, v40, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v27, v29, v27, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v49, v40
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v40, null, v37, v37, v19
	v_div_fmas_f32 v39, v39, v41, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v17, v38, v37, v17
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v30, v40
	v_div_scale_f32 v43, null, v37, v37, v21
	v_div_fixup_f32 v16, v39, v37, v16
	v_div_scale_f32 v39, null, v37, v37, v18
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v47, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v16, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v38, v39
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v16.h, 0x7fff, v28.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v40, v30, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_mov_b16_e32 v29.l, v31.h
	v_mov_b16_e32 v29.h, v42.h
	v_mov_b16_e32 v42.l, v17.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v28, v30
	v_div_scale_f32 v28, s7, v19, v37, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v39, v38, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v16.l, 0x7fff, v27.h, vcc_lo
	v_and_b32_e32 v45, 1, v42
	v_cmp_o_f32_e64 s9, v17, v17
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v38, v41, v38
	v_div_scale_f32 v41, s8, v18, v37, v18
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v45, v17, v45, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v46, v41, v38
	v_fma_f32 v48, -v39, v46, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v27, 1, v29
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v29, v28, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v46, v48, v38
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v27, v31, v27, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v40, v29, v28
	v_fmac_f32_e32 v29, v44, v30
	v_div_scale_f32 v44, null, v37, v37, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v17, -v40, v29, v28
	v_rcp_f32_e32 v28, v44
	v_fma_f32 v40, -v43, v47, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v17, v17, v30, v29
	v_fma_f32 v29, -v39, v46, v41
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v30, s7, v21, v37, v21
	v_div_fixup_f32 v19, v17, v37, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v44, v28, 1.0
	v_div_fmas_f32 v29, v29, v38, v46
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.h, 0x7fff, v45.h, s9
	v_cmp_o_f32_e64 s9, v31, v31
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v28, v39, v28
	v_div_scale_f32 v39, s8, v20, v37, v20
	v_div_fixup_f32 v18, v29, v37, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v42.l, v19.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v47, v40, v47 :: v_dual_mul_f32 v40, v39, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.l, 0x7fff, v27.h, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v41, 0, v18, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v18, -v44, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v18, v28
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v18, 1, v42
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v38, v30, v47
	v_fma_f32 v31, -v44, v40, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v18, v19, v18, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v43, v38, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v29, v47
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.l, v41.h
	v_mov_b16_e32 v29.h, v42.h
	v_and_b32_e32 v27, 1, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v43, v38, v30
	v_div_fmas_f32 v30, v30, v47, v38
	v_div_scale_f32 v38, null, v37, v37, v23
	s_mov_b32 vcc_lo, s8
	v_div_fmas_f32 v28, v31, v28, v40
	v_rcp_f32_e32 v29, v38
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v19, v41, v27, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v21, v30, v37, v21
	v_div_fixup_f32 v20, v28, v37, v20
	v_div_scale_f32 v28, null, v37, v37, v22
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_rcp_f32_e32 v27, v28
	v_fma_f32 v30, -v38, v29, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v31.h, v42.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v31.l, v20.h
	v_cndmask_b16 v18.l, 0x7fff, v19.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v29, v30, v29
	v_div_scale_f32 v30, s7, v23, v37, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v19, 1, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v28, v27, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v42.l, v21.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v31, v30, v29
	v_div_scale_f32 v40, null, v37, v37, v9
	v_fmac_f32_e32 v27, v39, v27
	v_div_scale_f32 v39, s8, v22, v37, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v38, v31, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v43, 1, v42
	v_add3_u32 v44, v20, v19, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v19, v39, v27
	v_rcp_f32_e32 v45, v40
	v_fmac_f32_e32 v31, v41, v29
	v_div_scale_f32 v41, null, v37, v37, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v46, -v28, v19, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v43, v21, v43, 0x7fff
	v_cmp_o_f32_e64 s9, v21, v21
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v21, -v38, v31, v30
	v_rcp_f32_e32 v30, v41
	v_fmac_f32_e32 v19, v46, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v40, v45, 1.0
	s_mov_b32 vcc_lo, s7
	v_div_fmas_f32 v21, v21, v29, v31
	v_fma_f32 v28, -v28, v19, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v45, v38, v45
	v_div_scale_f32 v29, s7, v9, v37, v9
	v_fma_f32 v31, -v41, v30, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v21, v21, v37, v23
	v_div_fmas_f32 v19, v28, v27, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v27, v29, v45 :: v_dual_fmac_f32 v30, v31, v30
	v_div_scale_f32 v28, s8, v8, v37, v8
	v_div_fixup_f32 v22, v19, v37, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v23, -v40, v27, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.h, 0x7fff, v43.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v31, v28, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v20, v20
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v27, v23, v45
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v20, -v41, v31, v28
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v42.l, v21.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v40, v27, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.h, v42.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v31, v20, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.l, v22.h
	v_and_b32_e32 v20, 1, v42
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v29, v45, v27
	v_div_scale_f32 v29, null, v37, v37, v11
	v_fma_f32 v28, -v41, v31, v28
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v20, v21, v20, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v9, v27, v37, v9
	v_div_fmas_f32 v28, v28, v30, v31
	v_rcp_f32_e32 v30, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_add3_u32 v21, v22, v23, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v8, v28, v37, v8
	v_div_scale_f32 v28, null, v37, v37, v10
	v_div_scale_f32 v38, null, v37, v37, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v8, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v27, v28
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v8.h, 0x7fff, v20.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v29, v30, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_mov_b16_e32 v22.l, v23.h
	v_mov_b16_e32 v22.h, v42.h
	v_mov_b16_e32 v42.l, v9.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v20, v30
	v_div_scale_f32 v20, s7, v11, v37, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v28, v27, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v8.l, 0x7fff, v21.h, vcc_lo
	v_and_b32_e32 v21, 1, v22
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v22, v20, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v27, v31, v27 :: v_dual_and_b32 v40, 1, v42
	v_div_scale_f32 v31, s8, v10, v37, v10
	v_fma_f32 v39, -v29, v22, v20
	v_rcp_f32_e32 v43, v38
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.l, 0x7fff, v44.h, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v41, v31, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v40, v9, v40, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v22, v39, v30
	v_div_scale_f32 v39, null, v37, v37, v12
	v_fma_f32 v44, -v28, v41, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v9, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v9, -v29, v22, v20
	v_rcp_f32_e32 v20, v39
	v_fma_f32 v29, -v38, v43, 1.0
	v_fmac_f32_e32 v41, v44, v27
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v21, v23, v21, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v9, v9, v30, v22
	v_fmac_f32_e32 v43, v29, v43
	v_fma_f32 v22, -v28, v41, v31
	v_div_scale_f32 v28, s7, v13, v37, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v29, -v39, v20, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v9, v9, v37, v11
	v_div_fmas_f32 v22, v22, v27, v41
	v_dual_mul_f32 v27, v28, v43 :: v_dual_fmac_f32 v20, v29, v20
	v_div_scale_f32 v29, s8, v12, v37, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v10, v22, v37, v10
	v_fma_f32 v22, -v38, v27, v28
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v30, v29, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v11.h, 0x7fff, v40.h, s9
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v27, v22, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v22, -v39, v30, v29
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v23, v23
	v_mov_b16_e32 v23.l, v10.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v38, v27, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.h, v42.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v22, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v42.l, v9.h
	v_cndmask_b16 v11.l, 0x7fff, v21.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v28, v43, v27
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v28, -v39, v30, v29
	v_div_scale_f32 v29, null, v37, v37, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v21, 1, v23
	v_and_b32_e32 v22, 1, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v20, v28, v20, v30
	v_rcp_f32_e32 v23, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v13, v27, v37, v13
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v22, v9, v22, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v12, v20, v37, v12
	v_div_scale_f32 v20, null, v37, v37, v14
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v10, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v27, -v29, v23, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v13, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v13.l, v12.h
	v_mov_b16_e32 v13.h, v42.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v23, v27, v23
	v_div_scale_f32 v27, s7, v15, v37, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v22.l, 0x7fff, v9.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v20, v21, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v9, 1, v13
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v13, v27, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v42.l, v10.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v30, null, v37, v37, v1
	v_fmac_f32_e32 v21, v28, v21
	v_div_scale_f32 v28, s8, v14, v37, v14
	v_fma_f32 v31, -v29, v13, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v38, 1, v42
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v40, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v39, v28, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v10, v10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v13, v31, v23
	v_div_scale_f32 v31, null, v37, v37, v0
	v_fma_f32 v41, -v20, v39, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v38, v10, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v10, -v29, v13, v27
	v_rcp_f32_e32 v27, v31
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v29, -v30, v40, 1.0
	v_fmac_f32_e32 v39, v41, v21
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v12, v9, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v10, v10, v23, v13
	v_fmac_f32_e32 v40, v29, v40
	v_fma_f32 v13, -v20, v39, v28
	v_div_scale_f32 v20, s7, v1, v37, v1
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v23, -v31, v27, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v10, v10, v37, v15
	v_div_fmas_f32 v13, v13, v21, v39
	v_mul_f32_e32 v21, v20, v40
	v_fmac_f32_e32 v27, v23, v27
	v_div_scale_f32 v23, s8, v0, v37, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v13, v13, v37, v14
	v_fma_f32 v15, -v30, v21, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v14.h, 0x7fff, v38.h, s9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v28, v23, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v12, v12
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v21, v15, v40
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v12, -v31, v28, v23
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v15.l, v13.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v30, v21, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v15.h, v42.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v28, v12, v27
	v_div_scale_f32 v29, null, v37, v37, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v20, v20, v40, v21
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v21, -v31, v28, v23
	v_div_scale_f32 v23, null, v37, v37, v3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v42.l, v10.h
	v_cndmask_b16 v14.l, 0x7fff, v9.h, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v21, v21, v27, v28
	v_rcp_f32_e32 v27, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v9, 1, v15
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v15, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v12, 1, v42
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v1, v20, v37, v1
	v_div_fixup_f32 v0, v21, v37, v0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v13, v9, 0x7fff
	v_add3_u32 v12, v10, v12, 0x7fff
	v_cmp_o_f32_e64 s8, v13, v13
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v10, -v23, v27, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v29, v15, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v12.h, 0x7fff, v12.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v27, v10, v27
	v_div_scale_f32 v10, vcc_lo, v3, v37, v3
	v_fmac_f32_e32 v15, v20, v15
	v_div_scale_f32 v20, s7, v2, v37, v2
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v42.l, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v13, v10, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v21.l, v0.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v28, v20, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v21.h, v42.h
	v_and_b32_e32 v30, 1, v42
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v9, -v23, v13, v10
	v_fma_f32 v31, -v29, v28, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v30, v1, v30, 0x7fff
	v_cmp_o_f32_e64 s8, v1, v1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v13, v9, v27
	v_fmac_f32_e32 v28, v31, v15
	v_div_scale_f32 v1, null, v37, v37, v5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v21, v0, v21, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v30.h, s8
	v_cmp_o_f32_e64 s8, v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v0, -v23, v13, v10
	v_fma_f32 v10, -v29, v28, v20
	v_rcp_f32_e32 v20, v1
	v_div_scale_f32 v23, null, v37, v37, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v27, v13
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v27, null, v37, v37, v6
	v_rcp_f32_e32 v13, v23
	v_div_fmas_f32 v10, v10, v15, v28
	v_div_fixup_f32 v0, v0, v37, v3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v15, -v1, v20, 1.0
	v_div_scale_f32 v3, null, v37, v37, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v2, v10, v37, v2
	v_fmac_f32_e32 v20, v15, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v21, v3
	v_fma_f32 v15, -v23, v13, 1.0
	v_div_scale_f32 v10, vcc_lo, v5, v37, v5
	v_div_scale_f32 v29, s7, v4, v37, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v13, v15, v13
	v_rcp_f32_e32 v15, v27
	v_mul_f32_e32 v28, v10, v20
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s6
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v3, v21, 1.0
	v_mul_f32_e32 v39, v29, v13
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v1, v28, v10
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v42.l, v0.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v21, v30, v21
	v_div_scale_f32 v30, s8, v7, v37, v7
	v_fma_f32 v40, -v27, v15, 1.0
	v_fmac_f32_e32 v28, v38, v20
	v_fma_f32 v38, -v23, v39, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v41, v30, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v31.l, v2.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v15, v40, v15
	v_div_scale_f32 v40, s9, v6, v37, v6
	v_fma_f32 v1, -v1, v28, v10
	v_fmac_f32_e32 v39, v38, v13
	v_fma_f32 v10, -v3, v41, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v38, v40, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v31.h, v42.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v1, v1, v20, v28
	v_fma_f32 v20, -v23, v39, v29
	v_fmac_f32_e32 v41, v10, v21
	v_fma_f32 v23, -v27, v38, v40
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v1, v1, v37, v5
	v_div_fmas_f32 v10, v20, v13, v39
	v_fma_f32 v3, -v3, v41, v30
	v_fmac_f32_e32 v38, v23, v15
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v43, 1, v42
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v10, v37, v4
	v_div_fmas_f32 v3, v3, v21, v41
	v_fma_f32 v5, -v27, v38, v40
	s_mov_b32 vcc_lo, s9
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v13, 1, v31
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	v_cndmask_b32_e64 v4, 0, v4, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fmas_f32 v5, v5, v15, v38
	v_div_fixup_f32 v3, v3, v37, v7
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v10, v2, v13, 0x7fff
	v_add3_u32 v13, v0, v43, 0x7fff
	v_mov_b16_e32 v42.l, v1.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v5, v5, v37, v6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v6.l, v4.h
	v_mov_b16_e32 v6.h, v42.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v3, s6
	v_cndmask_b32_e64 v5, 0, v5, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v3, 1, v42
	v_and_b32_e32 v6, 1, v6
	v_mov_b16_e32 v7.h, v42.h
	v_mov_b16_e32 v42.l, v0.h
	v_mov_b16_e32 v7.l, v5.h
	v_cndmask_b16 v13.h, 0x7fff, v13.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_add3_u32 v2, v4, v6, 0x7fff
	v_add3_u32 v3, v1, v3, 0x7fff
	v_and_b32_e32 v6, 1, v7
	v_and_b32_e32 v7, 1, v42
	v_cmp_o_f32_e64 s6, v1, v1
	v_cmp_o_f32_e64 s7, v4, v4
	v_cmp_o_f32_e64 s8, v0, v0
	v_add3_u32 v1, v5, v6, 0x7fff
	v_add3_u32 v4, v0, v7, 0x7fff
	v_cmp_o_f32_e64 s9, v5, v5
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s6
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s7
	v_cndmask_b16 v13.l, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v2.h, 0x7fff, v4.h, s8
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s9
	v_cndmask_b32_e64 v4, v16, v25, s0
	v_cndmask_b32_e64 v5, v25, v16, s0
	v_cndmask_b32_e64 v16, v0, v9, s0
	v_cndmask_b32_e64 v0, v9, v0, s0
	v_cndmask_b32_e64 v3, v24, v26, s0
	v_cndmask_b32_e64 v6, v19, v17, s0
	v_cndmask_b32_e64 v7, v17, v19, s0
	v_cndmask_b32_e64 v10, v8, v18, s0
	v_cndmask_b32_e64 v8, v18, v8, s0
	v_cndmask_b32_e64 v15, v14, v11, s0
	v_cndmask_b32_e64 v11, v11, v14, s0
	v_cndmask_b32_e64 v14, v12, v22, s0
	v_cndmask_b32_e64 v12, v22, v12, s0
	v_cndmask_b32_e64 v17, v2, v13, s0
	v_cndmask_b32_e64 v2, v13, v2, s0
	s_mov_b32 s6, 0x76543210
	v_cndmask_b32_e64 v1, v26, v24, s0
	v_permlanex16_b32 v13, v0, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v11, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v12, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v2, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v12, v13, v16, v72
	v_perm_b32 v13, v13, v16, v73
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v16, v32, v36, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v3, v1, v72
	v_perm_b32 v1, v3, v1, v73
	v_perm_b32 v2, v5, v4, v72
	v_perm_b32 v3, v5, v4, v73
	v_perm_b32 v4, v7, v6, v72
	v_perm_b32 v5, v7, v6, v73
	v_perm_b32 v6, v8, v10, v72
	v_perm_b32 v7, v8, v10, v73
	v_perm_b32 v8, v9, v15, v72
	v_perm_b32 v9, v9, v15, v73
	v_perm_b32 v10, v11, v14, v72
	v_perm_b32 v11, v11, v14, v73
	v_perm_b32 v14, v18, v17, v72
	v_perm_b32 v15, v18, v17, v73
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v17, v32, v35, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s5
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v18, v32, v34, 1
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v32, v33, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s9, s55, 0xffff
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	s_mov_b32 s8, s54
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[8:11], 0 offen
	buffer_store_b128 v[4:7], v17, s[8:11], 0 offen
	buffer_store_b128 v[8:11], v18, s[8:11], 0 offen
	buffer_store_b128 v[12:15], v19, s[8:11], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp44:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
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
		.amdhsa_next_free_sgpr 74
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_vgpr, 149
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.numbered_sgpr, 74
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11932
; TotalNumSgprs: 76
; NumVgprs: 149
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 76
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
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
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
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     76
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.kd
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
