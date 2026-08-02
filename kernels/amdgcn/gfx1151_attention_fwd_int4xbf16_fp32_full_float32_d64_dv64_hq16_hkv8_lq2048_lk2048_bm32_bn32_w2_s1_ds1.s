	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b128 s[52:55], s[0:1], 0x60
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
	s_add_i32 s72, s6, s2
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	v_dual_mov_b32 v133, 0xff800000 :: v_dual_and_b32 v40, 15, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v3
	s_clause 0x1
	s_load_b64 s[64:65], s[0:1], 0x20
	s_load_b128 s[56:59], s[0:1], 0x30
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v77, v39, 16, v40
	v_dual_mov_b32 v44, 0x5410 :: v_dual_and_b32 v47, 1, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[65:66], null, s52, v39, v[36:37]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s29, s52, v36
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s61, s37, 0xffff
	s_mov_b32 s60, s36
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v95, 0xff800000
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[1:2], null, s52, s72, v[65:66]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, vcc_lo, s29
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s6, v77
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v27, v24 :: v_dual_lshlrev_b32 v48, 1, v0
	v_dual_mov_b32 v26, v24 :: v_dual_and_b32 v51, 24, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v2
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s7, s0, 4
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v47
	buffer_load_b128 v[32:35], v1, s[60:63], 0 offen
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v1, s72, v77
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s61, s43, 0xffff
	v_mov_b32_e32 v42, 0x6420
	s_mov_b32 s60, s42
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v80, v0, 4, 1
	v_dual_mov_b32 v30, v24 :: v_dual_lshlrev_b32 v1, 1, v1
	v_xor_b32_e32 v96, v38, v51
	v_and_b32_e32 v51, 24, v48
	v_cndmask_b32_e64 v42, 0x7531, v42, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v29, v24 :: v_dual_and_b32 v50, 7, v0
	v_dual_mov_b32 v25, v24 :: v_dual_and_b32 v46, 56, v0
	buffer_load_u16 v41, v1, s[60:63], 0 offen
	v_dual_mov_b32 v17, v24 :: v_dual_and_b32 v38, 48, v38
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v55, v48, 30, v80
	v_lshl_or_b32 v98, v40, 5, v51
	v_cndmask_b32_e64 v40, 0x6420, v43, s0
	v_lshl_or_b32 v42, v42, 8, v42
	v_dual_mov_b32 v28, v24 :: v_dual_lshlrev_b32 v37, 3, v50
	v_dual_mov_b32 v20, v24 :: v_dual_lshlrev_b32 v97, 2, v55
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v21, v24 :: v_dual_and_b32 v42, 0x750031, v42
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v54, 1, v46
	v_xor_b32_e32 v38, v38, v46
	v_lshl_or_b32 v40, v40, 8, v40
	v_dual_mov_b32 v31, v24 :: v_dual_lshlrev_b32 v52, 3, v0
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	v_mad_u64_u32 v[66:67], null, s5, v39, v[36:37]
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s8, s1, 0x10007
	v_mov_b32_e32 v8, v24
	s_add_i32 s8, s1, s8
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v100, 4, v97
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s4, s4, s1
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s53, v37
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[67:68], null, s53, v54, v[37:38]
	v_lshl_or_b32 v36, v42, 4, v42
	v_and_b32_e32 v37, 0x750031, v40
	v_bfe_i32 v53, v0, 3, 1
	v_dual_mov_b32 v19, v24 :: v_dual_and_b32 v52, 48, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v14, v24 :: v_dual_and_b32 v113, 0x7050301, v36
	v_lshl_or_b32 v36, v37, 4, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v18, v24 :: v_dual_and_b32 v53, 0x210, v53
	v_lshl_or_b32 v43, v50, 6, v52
	v_lshl_or_b32 v101, v50, 9, v38
	v_dual_mov_b32 v132, 0xff800000 :: v_dual_and_b32 v49, 16, v0
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s3, s7, 14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v102, v43, v53
	v_xor_b32_e32 v38, 0x90, v101
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s7, s55, s7
	v_mov_b32_e32 v9, v24
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s55, s4, s7
	v_xor_b32_e32 v39, 0x120, v101
	v_xor_b32_e32 v40, 0x1b0, v101
	v_xor_b32_e32 v42, 16, v102
	v_xor_b32_e32 v43, 32, v102
	v_add_nc_u32_e32 v114, 0, v38
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s4, 0, v49
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v86, 4, v0
	v_dual_mov_b32 v11, v24 :: v_dual_add_nc_u32 v116, 0, v40
	v_dual_mov_b32 v13, v24 :: v_dual_add_nc_u32 v118, 0, v43
	v_dual_mov_b32 v0, v24 :: v_dual_add_nc_u32 v115, 0, v39
	v_dual_mov_b32 v2, v24 :: v_dual_add_nc_u32 v117, 0, v42
	v_cndmask_b32_e64 v42, 0x1054, v44, s4
	v_cndmask_b32_e64 v43, 0x3276, v45, s4
	v_dual_mov_b32 v16, v24 :: v_dual_and_b32 v127, 0x7050301, v36
	v_lshlrev_b32_e32 v47, 6, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v36, v42, 8, v42
	v_lshl_or_b32 v42, v43, 8, v43
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s8, s8, 0x80000
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v82, 22, v80
	.loc	1 758 19                        ; attention.py:758:19
	s_sext_i32_i16 s8, s8
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v81, 24, v80
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s8, s8, 10
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v79, 26, v80
	v_or_b32_e32 v78, 28, v80
	v_or_b32_e32 v94, 30, v80
	v_xor_b32_e32 v55, 8, v96
	v_and_or_b32 v99, v48, 60, v47
	v_xor_b32_e32 v46, 8, v98
	v_xor_b32_e32 v47, 16, v98
	v_xor_b32_e32 v48, 24, v98
	v_xor_b32_e32 v50, 48, v102
	v_xor_b32_e32 v51, 0x420, v102
	v_xor_b32_e32 v52, 0x430, v102
	v_xor_b32_e32 v53, 0x410, v102
	.loc	1 821 32                        ; attention.py:821:32
	s_and_b32 s8, s8, 0xfffff800
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s9, s54, 0x3fb8aa3b
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s54, s8, s3
	v_dual_mov_b32 v22, v24 :: v_dual_add_nc_u32 v103, 0, v55
	v_dual_mov_b32 v23, v24 :: v_dual_add_nc_u32 v106, 0, v47
	v_dual_mov_b32 v10, v24 :: v_dual_add_nc_u32 v105, 0, v46
	v_dual_mov_b32 v12, v24 :: v_dual_add_nc_u32 v107, 0, v48
	v_dual_mov_b32 v15, v24 :: v_dual_add_nc_u32 v120, 0, v51
	v_dual_mov_b32 v1, v24 :: v_dual_add_nc_u32 v122, 0, v53
	v_dual_mov_b32 v3, v24 :: v_dual_add_nc_u32 v124, 8, v66
	v_dual_mov_b32 v4, v24 :: v_dual_add_nc_u32 v119, 0, v50
	v_dual_mov_b32 v5, v24 :: v_dual_add_nc_u32 v126, s53, v67
	v_dual_mov_b32 v6, v24 :: v_dual_add_nc_u32 v121, 0, v52
	v_dual_mov_b32 v134, v24 :: v_dual_add_nc_u32 v123, 4, v66
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v93, 2, v80
	v_or_b32_e32 v92, 4, v80
	v_or_b32_e32 v91, 6, v80
	v_or_b32_e32 v90, 8, v80
	v_or_b32_e32 v89, 10, v80
	v_or_b32_e32 v88, 12, v80
	v_or_b32_e32 v87, 14, v80
	v_or_b32_e32 v85, 16, v80
	v_or_b32_e32 v84, 18, v80
	v_or_b32_e32 v83, 20, v80
	v_xor_b32_e32 v104, 64, v99
	v_or_b32_e32 v108, s54, v82
	v_or_b32_e32 v109, s54, v81
	v_or_b32_e32 v110, s54, v79
	v_or_b32_e32 v111, s54, v78
	v_or_b32_e32 v112, s54, v94
	v_add_nc_u32_e32 v125, 12, v66
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v131, s53, 1, v67
	s_mov_b32 s44, 0
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s6, s5, s6
	s_and_b32 s39, s39, 0xffff
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s73, 0x76543210
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
	s_mov_b32 s74, s44
	s_and_b32 s65, s65, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s68, s56
	s_mov_b32 s69, s57
	s_add_i32 s55, s55, s6
	s_mov_b32 s42, s62
	s_mov_b32 s43, s63
	s_mov_b32 s60, s38
	s_mov_b32 s61, s39
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v37, v97, v32
	ds_bpermute_b32 v32, v100, v32
	ds_bpermute_b32 v38, v97, v33
	ds_bpermute_b32 v33, v100, v33
	ds_bpermute_b32 v39, v97, v34
	ds_bpermute_b32 v34, v100, v34
	ds_bpermute_b32 v40, v97, v35
	ds_bpermute_b32 v35, v100, v35
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v41, 16, v41
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v7, v24 :: v_dual_mul_f32 v128, s9, v41
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v68, v32, v37, s4
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v69, v33, v38, s4
	v_cndmask_b32_e64 v72, v38, v33, s4
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v73, v34, v39, s4
	v_cndmask_b32_e64 v75, v39, v34, s4
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[70:71], null, s53, 3, v[67:68]
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v71, v37, v32, s4
	v_and_b32_e32 v32, 0x540054, v36
	v_and_b32_e32 v36, 0x760076, v42
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v74, v35, v40, s4
	v_cndmask_b32_e64 v76, v40, v35, s4
	v_lshl_or_b32 v32, v32, 4, v32
	v_lshl_or_b32 v33, v36, 4, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v129, 0x5040504, v32
	v_and_b32_e32 v130, 0x7060706, v33
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_or_b32 s3, s74, s54
	v_or_b32_e32 v45, s54, v93
	v_mad_u64_u32 v[41:42], null, s3, s52, v[65:66]
	v_or_b32_e32 v46, s54, v92
	v_or_b32_e32 v47, s54, v91
	v_or_b32_e32 v48, s54, v90
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v155, s74, v45, 1
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v40, 0, v96
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v156, s74, v46, 1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v41, 0x80000000, v41, s29
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v157, s74, v47, 1
	v_add_lshl_u32 v158, s74, v48, 1
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v44, 0, v98
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v32, s44 :: v_dual_mov_b32 v37, s49
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[45:48], v41, s[60:63], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v33, s45
	v_mov_b32_e32 v35, s47
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s5, s55, s74
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s3, s3, s53
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v42, s5, v66, 2
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v59, s3, v126, 1
	v_or_b32_e32 v49, s54, v89
	v_add_lshl_u32 v58, s3, v67, 1
	v_or_b32_e32 v50, s54, v88
	v_add_lshl_u32 v60, s3, v131, 1
	v_or_b32_e32 v51, s54, v87
	v_add_lshl_u32 v61, s3, v70, 1
	v_or_b32_e32 v43, s54, v80
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v55, v123, s5, 2
	v_add_lshl_u32 v56, v124, s5, 2
	v_add_lshl_u32 v57, v125, s5, 2
	v_cndmask_b32_e32 v162, 0x80000000, v42, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v59, s1
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v159, s74, v49, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v49, 0x80000000, v58, s1
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v160, s74, v50, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v50, 0x80000000, v60, s1
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v161, s74, v51, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v51, 0x80000000, v61, s1
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v34, s46 :: v_dual_mov_b32 v39, s51
	v_mov_b32_e32 v38, s50
	v_or_b32_e32 v52, s54, v85
	v_or_b32_e32 v53, s54, v84
	v_or_b32_e32 v54, s54, v83
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v139, s74, v43, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_dual_cndmask_b32 v176, 0x80000000, v56 :: v_dual_cndmask_b32 v177, 0x80000000, v57
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v172, s74, v52, 1
	v_add_lshl_u32 v173, s74, v53, 1
	v_add_lshl_u32 v174, s74, v54, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v175, 0x80000000, v55, vcc_lo
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v167, s74, v108, 1
	v_add_lshl_u32 v168, s74, v109, 1
	v_add_lshl_u32 v169, s74, v110, 1
	v_add_lshl_u32 v170, s74, v111, 1
	v_add_lshl_u32 v171, s74, v112, 1
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v40, v[45:46]
	ds_store_b64 v103, v[47:48]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[135:138], v44 offset1:1
	ds_load_2addr_stride64_b64 v[148:151], v105 offset1:1
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[40:43], v42, s[40:43], 0 offen
	buffer_load_b128 v[57:60], v49, s[40:43], 0 offen
	buffer_load_b128 v[61:64], v50, s[40:43], 0 offen
	buffer_load_b128 v[45:48], v51, s[40:43], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v36, s48
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[135:136], v[68:69], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[140:147], v[137:138], v[68:69], v[32:39] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[36:39], v106 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[148:149], v[73:74], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[140:147], v[150:151], v[73:74], v[140:147] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[151:154], v107 offset1:1
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x7
	buffer_load_u16 v148, v139, s[64:67], 0 offen
	buffer_load_u16 v149, v155, s[64:67], 0 offen
	buffer_load_u16 v150, v156, s[64:67], 0 offen
	buffer_load_u16 v135, v157, s[64:67], 0 offen
	buffer_load_u16 v136, v158, s[64:67], 0 offen
	buffer_load_u16 v137, v159, s[64:67], 0 offen
	buffer_load_u16 v138, v160, s[64:67], 0 offen
	buffer_load_u16 v139, v161, s[64:67], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_b128 v[32:35], v162, s[68:71], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[36:37], v[71:72], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[140:147], v[38:39], v[71:72], v[140:147] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[151:152], v[75:76], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[140:147], v[153:154], v[75:76], v[140:147] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v164, v49
	v_cvt_f32_i32_e32 v165, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v166, v51
	v_cvt_f32_i32_e32 v151, v52
	v_cvt_f32_i32_e32 v152, v53
	v_cvt_f32_i32_e32 v153, v54
	v_cvt_f32_i32_e32 v154, v55
	v_cvt_f32_i32_e32 v155, v56
	v_cvt_f32_i32_e32 v156, v140
	v_cvt_f32_i32_e32 v157, v141
	v_cvt_f32_i32_e32 v158, v142
	v_cvt_f32_i32_e32 v159, v143
	v_cvt_f32_i32_e32 v160, v144
	v_cvt_f32_i32_e32 v161, v145
	v_cvt_f32_i32_e32 v162, v146
	v_cvt_f32_i32_e32 v163, v147
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x1
	buffer_load_b128 v[49:52], v175, s[68:71], 0 offen
	buffer_load_b128 v[36:39], v176, s[68:71], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x7
	buffer_load_u16 v140, v172, s[64:67], 0 offen
	buffer_load_u16 v141, v173, s[64:67], 0 offen
	buffer_load_u16 v142, v174, s[64:67], 0 offen
	buffer_load_u16 v143, v167, s[64:67], 0 offen
	buffer_load_u16 v144, v168, s[64:67], 0 offen
	buffer_load_u16 v145, v169, s[64:67], 0 offen
	buffer_load_u16 v146, v170, s[64:67], 0 offen
	buffer_load_u16 v147, v171, s[64:67], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_b128 v[53:56], v177, s[68:71], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v158, v128, v158
	v_mul_f32_e32 v156, v128, v156
	v_mul_f32_e32 v155, v128, v155
	v_mul_f32_e32 v157, v128, v157
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(23)
	v_mov_b16_e64 v167.h, v40.l
	s_waitcnt vmcnt(22)
	v_mov_b16_e32 v40.l, v57.h
	s_waitcnt vmcnt(21)
	v_mov_b16_e64 v168.l, v61.l
	s_waitcnt vmcnt(20)
	v_mov_b16_e64 v168.h, v45.l
	v_mov_b16_e64 v167.l, v57.l
	v_mov_b16_e32 v45.l, v61.h
	v_dual_mov_b32 v44, v40 :: v_dual_max_f32 v61, v95, v95
	v_add_nc_u32_e32 v40, 0, v101
	v_mov_b16_e32 v57.h, 0
	ds_store_2addr_b64 v40, v[167:168], v[44:45] offset1:8
	v_mov_b16_e64 v167.h, v41.l
	v_mov_b16_e32 v41.l, v58.h
	v_mov_b16_e64 v168.l, v62.l
	v_mov_b16_e64 v168.h, v46.l
	v_mov_b16_e64 v167.l, v58.l
	v_mov_b16_e32 v46.l, v62.h
	v_mov_b32_e32 v45, v41
	v_mov_b16_e32 v40.h, v42.l
	v_mov_b16_e32 v42.l, v59.h
	v_mov_b16_e32 v41.l, v63.l
	v_mov_b16_e32 v41.h, v47.l
	ds_store_2addr_b64 v114, v[167:168], v[45:46] offset1:8
	v_mov_b16_e32 v40.l, v59.l
	v_mov_b16_e32 v47.l, v63.h
	v_mov_b32_e32 v46, v42
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v42, v128, v166
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v62, 0, v102
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v166, v128, v154
	s_waitcnt vmcnt(18)
	v_dual_mul_f32 v154, v128, v163 :: v_dual_lshlrev_b32 v149, 16, v149
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v115, v[40:41], v[46:47] offset1:8
	v_mov_b16_e32 v41.h, v48.l
	v_mov_b16_e32 v48.l, v64.h
	v_mov_b16_e32 v41.l, v64.l
	v_mov_b16_e32 v40.l, v60.l
	v_mov_b16_e32 v40.h, v43.l
	v_mov_b16_e32 v43.l, v60.h
	v_mov_b32_e32 v44, v48
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v48, v128, v151
	v_mul_f32_e32 v151, v128, v160
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(11)
	v_dual_cndmask_b32 v160, 0xff800000, v32 :: v_dual_lshlrev_b32 v139, 16, v139
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v116, v[40:41], v[43:44] offset1:8
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v40, v128, v164
	v_mul_f32_e32 v44, v128, v159
	.loc	1 879 36                        ; attention.py:879:36
	v_dual_cndmask_b32 v159, 0xff800000, v35 :: v_dual_mul_f32 v164, v128, v152
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v152, v128, v161 :: v_dual_lshlrev_b32 v135, 16, v135
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v43, 0xff800000, v34, vcc_lo
	v_cndmask_b32_e32 v161, 0xff800000, v33, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v159
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v41, v128, v165
	v_mul_f32_e32 v165, v128, v153
	v_mul_f32_e32 v153, v128, v162
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v43
	v_cmp_neq_f32_e64 s16, 0xff800000, v161
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(9)
	v_dual_cndmask_b32 v51, 0xff800000, v51 :: v_dual_cndmask_b32 v36, 0xff800000, v36
	v_cndmask_b32_e32 v37, 0xff800000, v37, vcc_lo
	s_waitcnt vmcnt(7)
	v_dual_cndmask_b32 v162, 0xff800000, v52 :: v_dual_lshlrev_b32 v141, 16, v141
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v137, 16, v137
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v36
	v_cmp_neq_f32_e64 s6, 0xff800000, v37
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v35, 16, v146
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v38, 0xff800000, v38 :: v_dual_cndmask_b32 v55, 0xff800000, v55
	v_dual_cndmask_b32 v56, 0xff800000, v56 :: v_dual_cndmask_b32 v53, 0xff800000, v53
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s9, vcc_lo, s5
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v39, 0xff800000, v39, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v55
	v_cmp_neq_f32_e64 s15, 0xff800000, v56
	.loc	1 879 36                        ; attention.py:879:36
	v_dual_cndmask_b32 v54, 0xff800000, v54 :: v_dual_lshlrev_b32 v33, 16, v144
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v34, 16, v145
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s5, vcc_lo, s14
	s_and_b32 s14, vcc_lo, s8
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v52, 16, v147
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v145, v159, v43, s0
	v_cndmask_b32_e64 v43, v43, v159, s0
	v_cndmask_b32_e64 v147, v37, v36, s0
	v_cndmask_b32_e64 v159, v36, v37, s0
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v36, 0, 1, s14
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v160
	v_cmp_neq_f32_e64 s7, 0xff800000, v51
	v_cmp_neq_f32_e64 s17, 0xff800000, v53
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s10, vcc_lo, s6
	s_and_b32 s6, vcc_lo, s15
	s_and_b32 s15, vcc_lo, s3
	s_and_b32 s16, vcc_lo, s16
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v32, 16, v143
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v38
	v_cmp_neq_f32_e64 s19, 0xff800000, v39
	v_cmp_neq_f32_e64 s22, 0xff800000, v54
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v143, v161, v160, s0
	v_cndmask_b32_e64 v144, v160, v161, s0
	v_cndmask_b32_e64 v160, v39, v38, s0
	v_cndmask_b32_e64 v38, v38, v39, s0
	v_cndmask_b32_e64 v39, v54, v53, s0
	v_cndmask_b32_e64 v53, v53, v54, s0
	v_cndmask_b32_e64 v54, v56, v55, s0
	v_cndmask_b32_e64 v55, v55, v56, s0
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v37, 0, 1, s15
	v_cndmask_b32_e64 v56, 0, 1, s16
	v_lshlrev_b16 v36.l, 8, v36.l
	s_and_b32 s12, vcc_lo, s7
	s_and_b32 s7, vcc_lo, s17
	s_and_b32 s17, vcc_lo, s11
	.loc	1 879 36                        ; attention.py:879:36
	v_dual_cndmask_b32 v49, 0xff800000, v49 :: v_dual_cndmask_b32 v50, 0xff800000, v50
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v161, 0, 1, s17
	v_or_b16 v167.h, v37.l, v36.l
	v_mov_b16_e32 v36.l, v56.l
	s_and_b32 s8, vcc_lo, s19
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s20, 0xff800000, v162
	v_cmp_neq_f32_e64 s21, 0xff800000, v49
	v_cmp_neq_f32_e64 s13, 0xff800000, v50
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	v_cndmask_b32_e64 v146, v50, v49, s0
	v_cndmask_b32_e64 v49, v49, v50, s0
	v_cndmask_b32_e64 v50, v162, v51, s0
	v_cndmask_b32_e64 v51, v51, v162, s0
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v162, 0, 1, s8
	v_mov_b16_e64 v37.l, v161.l
	v_lshlrev_b16 v36.l, 8, v36.l
	s_and_b32 s11, vcc_lo, s18
	v_cndmask_b32_e64 v168, 0, 1, s10
	v_cndmask_b32_e64 v163, 0, 1, s11
	v_cndmask_b32_e64 v56, 0, 1, s9
	v_or_b16 v167.l, v37.l, v36.l
	v_mov_b16_e64 v36.l, v162.l
	s_and_b32 s18, vcc_lo, s20
	v_mov_b16_e64 v37.l, v163.l
	v_cndmask_b32_e64 v161, 0, 1, s18
	v_cndmask_b32_e64 v163, 0, 1, s12
	v_lshlrev_b16 v36.l, 8, v36.l
	s_and_b32 s13, vcc_lo, s13
	s_and_b32 s20, vcc_lo, s21
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v143, v97, v143
	ds_bpermute_b32 v144, v100, v144
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v162.h, v37.l, v36.l
	v_mov_b16_e64 v36.l, v168.l
	v_mov_b16_e32 v37.l, v56.l
	v_cndmask_b32_e64 v56, 0, 1, s13
	v_cndmask_b32_e64 v168, 0, 1, s20
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v146, v97, v146
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v36.l, 8, v36.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v49, v100, v49
	ds_bpermute_b32 v50, v97, v50
	ds_bpermute_b32 v51, v100, v51
	ds_bpermute_b32 v147, v97, v147
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v162.l, v37.l, v36.l
	v_mov_b16_e64 v36.l, v161.l
	v_mov_b16_e64 v37.l, v163.l
	v_cndmask_b32_e64 v163, 0, 1, s6
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v159, v100, v159
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s19, vcc_lo, s22
	v_lshlrev_b16 v36.l, 8, v36.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v145, v97, v145
	ds_bpermute_b32 v43, v100, v43
	ds_bpermute_b32 v160, v97, v160
	ds_bpermute_b32 v38, v100, v38
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v161.h, v37.l, v36.l
	v_mov_b16_e32 v36.l, v56.l
	v_mov_b16_e64 v37.l, v168.l
	v_cndmask_b32_e64 v56, 0, 1, s19
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v39, v97, v39
	ds_bpermute_b32 v53, v100, v53
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v36.l, 8, v36.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v54, v97, v54
	ds_bpermute_b32 v55, v100, v55
	v_mov_b32_e32 v58, v134
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v45.h, v57.h
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v161.l, v37.l, v36.l
	v_mov_b16_e64 v36.l, v163.l
	v_cndmask_b32_e64 v37, 0, 1, s5
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(10)
	v_cndmask_b32_e64 v163, v50, v51, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v47.h, v57.h
	v_mov_b16_e32 v46.h, v57.h
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v36.l, 8, v36.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v134.h, v57.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v59, v133, v133
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v36.h, v37.l, v36.l
	v_mov_b16_e32 v36.l, v56.l
	v_cndmask_b32_e64 v37, 0, 1, s7
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v56, v43, v145, s4
	v_cndmask_b32_e64 v145, v145, v43, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v63.h, v57.h
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v36.l, 8, v36.l
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v168, v55, v54, s4
	v_cndmask_b32_e64 v54, v54, v55, s4
	.loc	1 881 25                        ; attention.py:881:25
	v_perm_b32 v55, v161, v167, v113
	v_perm_b32 v161, v161, v167, v127
	v_or_b16 v36.l, v37.l, v36.l
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v37, v144, v143, s4
	v_cndmask_b32_e64 v143, v143, v144, s4
	v_cndmask_b32_e64 v144, v49, v146, s4
	v_cndmask_b32_e64 v146, v146, v49, s4
	v_cndmask_b32_e64 v49, v51, v50, s4
	v_cndmask_b32_e64 v50, v159, v147, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v171, 0x3fb8aa3b, v144 :: v_dual_lshlrev_b32 v150, 16, v150
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v136, 16, v136
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v173, 0x3fb8aa3b, v50 :: v_dual_lshlrev_b32 v140, 16, v140
	v_cndmask_b32_e64 v159, v147, v159, s4
	v_cndmask_b32_e64 v51, v38, v160, s4
	v_cndmask_b32_e64 v147, v53, v39, s4
	v_cndmask_b32_e64 v53, v39, v53, s4
	v_dual_mul_f32 v169, 0x3fb8aa3b, v37 :: v_dual_lshlrev_b32 v148, 16, v148
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v138, 16, v138
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v175, 0x3fb8aa3b, v147 :: v_dual_lshlrev_b32 v142, 16, v142
	v_cndmask_b32_e64 v160, v160, v38, s4
	v_dual_mul_f32 v170, 0x3fb8aa3b, v56 :: v_dual_fmac_f32 v171, v42, v150
	v_mul_f32_e32 v172, 0x3fb8aa3b, v49
	v_dual_mul_f32 v174, 0x3fb8aa3b, v51 :: v_dual_mul_f32 v53, 0x3fb8aa3b, v53
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v173, v164, v136
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v164, 0x3fb8aa3b, v168
	v_mul_f32_e32 v56, 0x3fb8aa3b, v145
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_perm_b32 v167, v36, v162, v113
	v_perm_b32 v162, v36, v162, v127
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v169, v40, v148
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v175, v166, v138 :: v_dual_fmac_f32 v56, v157, v141
	.loc	1 881 25                        ; attention.py:881:25
	ds_bpermute_b32 v55, v97, v55
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v141, 0x3fb8aa3b, v160 :: v_dual_fmac_f32 v174, v165, v137
	v_dual_mul_f32 v165, 0x3fb8aa3b, v143 :: v_dual_fmac_f32 v170, v41, v149
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v53, v153, v35
	v_fmac_f32_e32 v164, v155, v139
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v139, 0x3fb8aa3b, v159
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v172, v48, v135
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	ds_bpermute_b32 v135, v100, v161
	ds_bpermute_b32 v136, v97, v167
	ds_bpermute_b32 v137, v100, v162
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v165, v156, v140 :: v_dual_mul_f32 v140, 0x3fb8aa3b, v163
	v_fmac_f32_e32 v141, v152, v34
	v_fmac_f32_e32 v139, v151, v33
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[36:39], v62
	ds_load_b128 v[40:43], v117
	ds_load_b128 v[48:51], v117 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v133.h, v57.h
	v_mov_b16_e32 v64.h, v57.h
	v_mov_b16_e32 v60.h, v57.h
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(5)
	v_cndmask_b32_e64 v34, v55, v135, s4
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v140, v44, v32
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v32, v135, v55, s4
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v33, v137, v136, s4
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v138, 0x3fb8aa3b, v146
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v35, v136, v137, s4
	v_and_b32_e32 v151, 1, v34
	v_and_b32_e32 v155, 0x1000000, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v138, v158, v142 :: v_dual_and_b32 v55, 1, v33
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v142, 0x100, v33
	v_and_b32_e32 v135, 0x100, v34
	v_cmp_eq_u32_e64 s34, 0, v155
	v_and_b32_e32 v136, 1, v35
	v_and_b32_e32 v153, 0x1000000, v34
	v_and_b32_e32 v34, 0x10000, v34
	v_cmp_eq_u32_e64 s33, 0, v142
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v167, v172, 0xff800000, s34
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v54, 0x3fb8aa3b, v54
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v137, 0x100, v35
	v_and_b32_e32 v152, 0x1000000, v35
	v_and_b32_e32 v35, 0x10000, v35
	v_cmp_eq_u32_e64 s21, 0, v135
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v54, v154, v52
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v52, 0x100, v32
	v_cmp_eq_u32_e64 s22, 1, v136
	v_cmp_eq_u32_e64 s26, 0, v34
	v_cmp_eq_u32_e64 s31, 1, v55
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v55, v174, 0xff800000, s33
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v44, 1, v32
	v_and_b32_e32 v154, 0x1000000, v33
	v_and_b32_e32 v33, 0x10000, v33
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v136, v56, 0xff800000, s21
	v_cndmask_b32_e64 v56, 0xff800000, v139, s22
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s23, 0, v137
	v_cmp_eq_u32_e64 s24, 0, v35
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v139, v138, 0xff800000, s26
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v32, 0x10000, v32
	v_cmp_eq_u32_e64 s27, 0, v153
	v_cmp_eq_u32_e64 s25, 0, v152
	v_cmp_eq_u32_e64 s3, 1, v44
	v_cmp_eq_u32_e64 s30, 0, v52
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v135, v141, 0xff800000, s23
	v_cndmask_b32_e64 v137, v53, 0xff800000, s24
	v_cndmask_b32_e64 v140, v140, 0xff800000, s27
	v_cndmask_b32_e64 v138, v54, 0xff800000, s25
	v_cndmask_b32_e64 v53, 0xff800000, v169, s3
	v_cndmask_b32_e64 v52, v170, 0xff800000, s30
	v_cndmask_b32_e64 v54, 0xff800000, v173, s31
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s35, 0, v32
	v_cmp_eq_u32_e64 s28, 1, v151
	v_cmp_eq_u32_e64 s36, 0, v33
	v_cmp_eq_u32_e64 s37, 0, v154
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v32, v56, v135, v137
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v168, v171, 0xff800000, s35
	v_cndmask_b32_e64 v142, 0xff800000, v165, s28
	v_cndmask_b32_e64 v169, v175, 0xff800000, s36
	v_cndmask_b32_e64 v170, v164, 0xff800000, s37
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v136, v139, v140
	v_max_f32_e32 v34, v53, v52
	v_max3_f32 v35, v167, v54, v55
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[159:162], v120 offset:2048
	ds_load_b128 v[163:166], v121 offset:2048
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v44, v169, v170, v142
	v_max3_f32 v32, v33, v32, v138
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[147:150], v121
	ds_load_b128 v[143:146], v120
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v34, v168, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v32, v33, v44, v32
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v33, v32, s73, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v141, v132, v32, v33
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v54, v141
	v_sub_f32_e32 v152, v169, v141
	v_sub_f32_e32 v32, v52, v141
	v_sub_f32_e32 v33, v53, v141
	v_sub_f32_e32 v35, v167, v141
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v152, v152
	v_exp_f32_e32 v32, v32
	v_exp_f32_e32 v33, v33
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v151, v55, v141
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v153, v170, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v151, v151
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v44, s31
	v_cndmask_b32_e64 v152, v152, 0, s36
	v_cndmask_b32_e64 v32, v32, 0, s30
	v_cndmask_b32_e64 v33, 0, v33, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v153, v153
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v47.l, v44.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v168, v141
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v134.l, v152.h
	v_mov_b16_e32 v57.l, v32.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, v35, 0, s34
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v47, 1, v47
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v134, 1, v134
	v_and_b32_e32 v154, 1, v57
	v_cmp_o_f32_e64 s3, v32, v32
	v_mov_b16_e32 v45.l, v33.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v151, v151, 0, s33
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v57.l, v35.h
	v_add3_u32 v32, v32, v154, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v153, v153, 0, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v45, 1, v45
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, v34, 0, s35
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s30, v33, v33
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v132
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v33, v33, v45, 0x7fff
	v_mov_b16_e32 v46.l, v34.h
	v_cmp_o_f32_e64 s31, v34, v34
	v_cmp_o_f32_e64 s33, v35, v35
	v_cmp_o_f32_e64 s34, v44, v44
	v_cndmask_b16 v32.l, 0x7fff, v33.h, s30
	v_and_b32_e32 v46, 1, v46
	v_cmp_o_f32_e64 s35, v151, v151
	v_cmp_o_f32_e64 s36, v152, v152
	v_cmp_o_f32_e64 s37, v153, v153
	v_add3_u32 v44, v44, v47, 0x7fff
	v_add3_u32 v34, v34, v46, 0x7fff
	v_add3_u32 v46, v152, v134, 0x7fff
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v134, v132, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s31
	v_cndmask_b16 v44.l, 0x7fff, v46.h, s36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v134, v134
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v46, v32, s73, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v152, v46, v32, v130
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v132, 0, v134, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v45, 1, v57
	v_mov_b16_e64 v57.l, v151.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v134, v140, v167, s4
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v35, v35, v45, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v26, v26, v132 :: v_dual_and_b32 v33, 1, v57
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v57.l, v153.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s33
	v_add3_u32 v33, v151, v33, 0x7fff
	v_cndmask_b16 v35.l, 0x7fff, v44.h, s34
	v_and_b32_e32 v45, 1, v57
	v_perm_b32 v151, v46, v32, v129
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v132
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v35.h, 0x7fff, v33.h, s35
	v_permlanex16_b32 v33, v34, s73, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v45, v153, v45, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v132
	v_mul_f32_e32 v29, v29, v132
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v32, v35, s73, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v153, v33, v34, v129
	v_cndmask_b16 v44.h, 0x7fff, v45.h, s37
	v_perm_b32 v154, v33, v34, v130
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v30, v30, v132
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v155, v32, v35, v129
	v_perm_b32 v156, v32, v35, v130
	v_permlanex16_b32 v33, v44, s73, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v31, v31, v132
	v_mul_f32_e32 v16, v16, v132
	v_mul_f32_e32 v5, v5, v132
	v_mul_f32_e32 v0, v0, v132
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v157, v33, v44, v129
	v_perm_b32 v158, v33, v44, v130
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[32:35], v62 offset:1024
	ds_load_b128 v[44:47], v62 offset:2048
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v132
	v_mul_f32_e32 v2, v2, v132
	v_mul_f32_e32 v3, v3, v132
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(7)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[36:43], v[151:158], v[24:31]
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, v142, v53, s4
	v_cndmask_b32_e64 v37, v53, v142, s4
	v_cndmask_b32_e64 v38, v136, v52, s4
	v_cndmask_b32_e64 v39, v52, v136, s4
	v_cndmask_b32_e64 v52, v137, v169, s4
	v_cndmask_b32_e64 v53, v169, v137, s4
	ds_bpermute_b32 v37, v104, v37
	ds_bpermute_b32 v36, v99, v36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v136, v136, v141
	v_dual_sub_f32 v137, v137, v141 :: v_dual_mul_f32 v4, v4, v132
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v132
	v_mul_f32_e32 v7, v7, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v136, v136
	v_exp_f32_e32 v137, v137
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v132
	v_mul_f32_e32 v18, v18, v132
	v_mul_f32_e32 v19, v19, v132
	v_mul_f32_e32 v21, v21, v132
	v_mul_f32_e32 v22, v22, v132
	v_mul_f32_e32 v23, v23, v132
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[40:43], v62 offset:3072
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v132
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v136, v136, 0, s21
	v_cndmask_b32_e64 v137, v137, 0, s24
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v132
	v_mul_f32_e32 v11, v11, v132
	v_mul_f32_e32 v13, v13, v132
	v_mul_f32_e32 v14, v14, v132
	v_mul_f32_e32 v15, v15, v132
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(7)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[159:166], v[151:158], v[0:7]
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v62, v139, v168, s4
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v161, v36, v37, s0
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v12, v12, v132
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v133.l, v137.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v20, v20, v132
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v57.l, v136.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v132
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v132, v168, v139, s4
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v139, v139, v141
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v38, v99, v38
	ds_bpermute_b32 v39, v104, v39
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[8:15], v[44:51], v[151:158], v[8:15]
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v44, v56, v54, s4
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v139, v139
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v45, v54, v56, s4
	v_cndmask_b32_e64 v46, v135, v55, s4
	v_cndmask_b32_e64 v47, v55, v135, s4
	v_cndmask_b32_e64 v54, v138, v170, s4
	v_cndmask_b32_e64 v55, v170, v138, s4
	ds_bpermute_b32 v44, v99, v44
	ds_bpermute_b32 v45, v104, v45
	ds_bpermute_b32 v46, v99, v46
	ds_bpermute_b32 v47, v104, v47
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v139, v139, 0, s26
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v54, v99, v54
	ds_bpermute_b32 v55, v104, v55
	ds_bpermute_b32 v62, v99, v62
	ds_bpermute_b32 v132, v104, v132
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v63.l, v139.h
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v52, v99, v52
	ds_bpermute_b32 v53, v104, v53
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v133, 1, v133
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v134, v99, v134
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v63, 1, v63
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[16:23], v[143:150], v[151:158], v[16:23]
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	v_cndmask_b32_e64 v143, v167, v140, s4
	s_waitcnt lgkmcnt(11)
	v_cndmask_b32_e64 v151, v39, v38, s0
	v_cndmask_b32_e64 v152, v38, v39, s0
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v37, v37 :: v_dual_max_f32 v39, v36, v36
.Ltmp11:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v138, v138, v141
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v143, v104, v143
	s_waitcnt lgkmcnt(10)
	v_cndmask_b32_e64 v154, v44, v45, s0
	s_waitcnt lgkmcnt(8)
	v_cndmask_b32_e64 v155, v47, v46, s0
	v_cndmask_b32_e64 v156, v46, v47, s0
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v157, v55, v54, s0
	v_cndmask_b32_e64 v153, v45, v44, s0
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v159, v132, v62, s0
	v_cndmask_b32_e64 v62, v62, v132, s0
	v_cndmask_b32_e64 v158, v54, v55, s0
	v_cndmask_b32_e64 v160, v37, v36, s0
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v39, v38
	s_waitcnt lgkmcnt(2)
	v_max3_f32 v37, v52, v53, v157
	v_max3_f32 v38, v154, v155, v156
	v_max3_f32 v39, v152, v159, v62
.Ltmp13:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v132, v142, v141
	v_sub_f32_e32 v56, v56, v141
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v163, v52, v53, s0
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v166, v38, v37, v158
	v_max3_f32 v167, v36, v151, v39
.Ltmp15:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v142, v132
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v164, v143, v134, s0
	v_cndmask_b32_e64 v165, v134, v143, s0
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v134, v134, v143, v153
.Ltmp17:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v56, v56
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v140, v140, v141
	v_dual_sub_f32 v135, v135, v141 :: v_dual_mov_b32 v132, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp18:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v134, v167, v134, v166
.Ltmp19:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v138, v138
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v141, 0, v142, s28
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v135, v135
	v_exp_f32_e32 v140, v140
.Ltmp20:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v142, v134
.Ltmp21:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v56, 0, v56, s22
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v60.l, v141.h
	v_add3_u32 v63, v139, v63, 0x7fff
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v162, v53, v52, s0
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v142, v142 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v64.l, v56.h
	v_cmp_o_f32_e64 s26, v56, v56
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v135, v135, 0, s23
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v141, v141
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v142, v142, v142
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v64, 1, v64
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v140, v140, 0, s27
	v_cndmask_b32_e64 v138, v138, 0, s25
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s25, v139, v139
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v134, v134, v142
.Ltmp27:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v56, v56, v64, 0x7fff
	v_add3_u32 v64, v137, v133, 0x7fff
	v_cmp_o_f32_e64 s27, v137, v137
	v_cmp_o_f32_e64 s24, v136, v136
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v133, v59, v134
	v_dual_max_f32 v59, v61, v134 :: v_dual_and_b32 v60, 1, v60
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v61, 1, v57
	v_mov_b16_e64 v57.l, v140.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v155, v155, v133
	v_sub_f32_e32 v156, v156, v133
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v60, v141, v60, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v142, v159, v133
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v159, v95, v59
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v137, v161, v133
	v_sub_f32_e32 v139, v151, v133
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v56.l, 0x7fff, v60.h, s23
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s23, 0xff800000, v95
	v_mov_b32_e32 v95, v59
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v59, v155
	v_exp_f32_e32 v155, v156
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v141, v152, v133
	v_sub_f32_e32 v153, v153, v133
	v_sub_f32_e32 v154, v154, v133
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v61, v136, v61, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v137, v137
	v_exp_f32_e32 v139, v139
	v_exp_f32_e32 v141, v141
	v_exp_f32_e32 v153, v153
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v59, 0, v59, s11
	v_cndmask_b32_e64 v155, 0, v155, s8
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v134, v160, v133
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v154, v154
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v63.l, 0x7fff, v56.h, s26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v160, v162, v133 :: v_dual_add_f32 v59, v59, v155
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v134, v134
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v161, v163, v133
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v136, 1, v57
	v_mov_b16_e64 v57.l, v135.h
	v_cndmask_b16 v56.h, 0x7fff, v61.h, s24
	v_cmp_o_f32_e64 s22, v140, v140
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v156, v160
	v_exp_f32_e32 v160, v161
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v61, v140, v136, 0x7fff
	v_and_b32_e32 v136, 1, v57
	v_permlanex16_b32 v140, v56, s73, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v134, 0, v134, s17
	v_cndmask_b32_e64 v137, 0, v137, s16
	v_cndmask_b32_e64 v139, 0, v139, s15
	v_cndmask_b32_e64 v141, 0, v141, s14
	v_cndmask_b32_e64 v153, 0, v153, s9
	v_cndmask_b32_e64 v154, 0, v154, s10
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v135, v135
	v_cndmask_b16 v60.h, 0x7fff, v61.h, s22
	v_add3_u32 v61, v135, v136, 0x7fff
	v_perm_b32 v135, v140, v56, v129
	v_perm_b32 v136, v140, v56, v130
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v56, v134, v137
	v_dual_add_f32 v134, v139, v141 :: v_dual_add_f32 v139, v153, v154
.Ltmp29:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v62, v62, v133
	v_sub_f32_e32 v151, v164, v133
	v_sub_f32_e32 v157, v157, v133
	v_sub_f32_e32 v158, v158, v133
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v156, 0, v156, s7
	v_cndmask_b32_e64 v160, 0, v160, s19
.Ltmp30:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v59, v139, v59 :: v_dual_sub_f32 v152, v165, v133
.Ltmp31:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v62, v62
	v_exp_f32_e32 v151, v151
	v_exp_f32_e32 v157, v157
	v_exp_f32_e32 v158, v158
	v_exp_f32_e32 v152, v152
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v141, v156, v160
.Ltmp33:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v142, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v60.l, 0x7fff, v63.h, s25
	v_mov_b16_e64 v57.l, v138.h
	v_cndmask_b16 v63.h, 0x7fff, v61.h, s21
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v62, 0, v62, s13
	v_cndmask_b32_e64 v151, 0, v151, s12
	v_cndmask_b32_e64 v157, 0, v157, s5
	v_cndmask_b32_e64 v158, 0, v158, s6
	v_cndmask_b32_e64 v152, 0, v152, s18
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v56, v56, v134
.Ltmp35:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v142, 0, v142, s20
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v57, 1, v57
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[48:51], v118
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v137, v151, v152
.Ltmp37:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[143:146], v118 offset:2048
	ds_load_b128 v[52:55], v119
	ds_load_b128 v[147:150], v119 offset:2048
	ds_load_b128 v[36:39], v122
	ds_load_b128 v[44:47], v122 offset:2048
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v62, v142, v62
	v_add_f32_e32 v142, v157, v158
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v138, v138
	v_add3_u32 v57, v138, v57, 0x7fff
	v_cndmask_b16 v64.l, 0x7fff, v64.h, s27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v61, v62, v137 :: v_dual_add_f32 v62, v141, v142
.Ltmp41:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v159, v159
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v140, v60, s73, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v64.h, 0x7fff, v57.h, s3
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v56, v56, v61 :: v_dual_add_f32 v59, v59, v62
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v57, v63, s73, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_perm_b32 v137, v140, v60, v129
	v_perm_b32 v138, v140, v60, v130
	v_permlanex16_b32 v60, v64, s73, 0xfedcba98 op_sel:[1,0]
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v56, v56, v59
.Ltmp45:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v159, 0, v159, s23
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v139, v57, v63, v129
	v_perm_b32 v140, v57, v63, v130
	v_perm_b32 v141, v60, v64, v129
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v59, v56
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v142, v60, v64, v130
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s3, s74, 32
	s_cmpk_lt_u32 s74, 0x7e0
	s_mov_b32 s74, s3
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v59, v59 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[48:55], v[135:142], v[24:31]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[32:39], v[135:142], v[16:23]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[143:150], v[135:142], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[40:47], v[135:142], v[0:7]
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v134, v56, v59
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp51:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v134, v58, v159
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	ds_bpermute_b32 v32, v97, v134
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v32, v32, v24
	v_div_scale_f32 v35, null, v32, v32, v25
	v_div_scale_f32 v37, null, v32, v32, v26
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v44, v33
	v_div_scale_f32 v39, null, v32, v32, v27
	v_div_scale_f32 v41, null, v32, v32, v28
	v_div_scale_f32 v42, null, v32, v32, v29
	v_rcp_f32_e32 v45, v35
	v_rcp_f32_e32 v46, v37
	v_rcp_f32_e32 v47, v39
	v_rcp_f32_e32 v48, v41
	v_rcp_f32_e32 v51, v42
	v_fma_f32 v53, -v33, v44, 1.0
	v_div_scale_f32 v34, vcc_lo, v24, v32, v24
	v_div_scale_f32 v36, s0, v25, v32, v25
	v_fma_f32 v54, -v35, v45, 1.0
	v_fma_f32 v55, -v37, v46, 1.0
	v_fmac_f32_e32 v44, v53, v44
	v_div_scale_f32 v38, s1, v26, v32, v26
	v_fma_f32 v56, -v39, v47, 1.0
	v_fma_f32 v57, -v41, v48, 1.0
	v_dual_fmac_f32 v45, v54, v45 :: v_dual_fmac_f32 v46, v55, v46
	v_fma_f32 v53, -v42, v51, 1.0
	v_mul_f32_e32 v54, v34, v44
	v_div_scale_f32 v50, s5, v29, v32, v29
	v_fmac_f32_e32 v47, v56, v47
	v_dual_mul_f32 v55, v36, v45 :: v_dual_mul_f32 v56, v38, v46
	v_fmac_f32_e32 v51, v53, v51
	v_fmac_f32_e32 v48, v57, v48
	v_fma_f32 v57, -v33, v54, v34
	v_div_scale_f32 v40, s3, v27, v32, v27
	v_fma_f32 v59, -v35, v55, v36
	v_fma_f32 v60, -v37, v56, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v54, v57, v44
	v_mul_f32_e32 v58, v40, v47
	v_div_scale_f32 v43, null, v32, v32, v30
	v_div_scale_f32 v49, s4, v28, v32, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v33, -v33, v54, v34
	v_fmac_f32_e32 v55, v59, v45
	v_fma_f32 v61, -v39, v58, v40
	v_fmac_f32_e32 v56, v60, v46
	v_rcp_f32_e32 v52, v43
	v_div_fmas_f32 v33, v33, v44, v54
	v_fma_f32 v34, -v35, v55, v36
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v35, -v37, v56, v38
	v_mul_f32_e32 v37, v50, v51
	v_mul_f32_e32 v53, v49, v48
	v_fmac_f32_e32 v58, v61, v47
	v_div_fixup_f32 v24, v33, v32, v24
	v_div_scale_f32 v33, null, v32, v32, v31
	v_div_fmas_f32 v34, v34, v45, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v39, v58, v40
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v39, v33
	v_div_fmas_f32 v35, v35, v46, v56
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v25, v34, v32, v25
	v_div_fmas_f32 v34, v36, v47, v58
	v_fma_f32 v38, -v43, v52, 1.0
	v_div_fixup_f32 v26, v35, v32, v26
	v_div_scale_f32 v35, s1, v30, v32, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v27, v34, v32, v27
	v_fma_f32 v34, -v42, v37, v50
	v_fmac_f32_e32 v52, v38, v52
	v_fma_f32 v38, -v33, v39, 1.0
	v_fma_f32 v36, -v41, v53, v49
	v_div_scale_f32 v47, null, v32, v32, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v37, v34, v51 :: v_dual_mul_f32 v34, v35, v52
	v_fmac_f32_e32 v39, v38, v39
	v_div_scale_f32 v38, s3, v31, v32, v31
	v_fmac_f32_e32 v53, v36, v48
	v_div_scale_f32 v36, null, v32, v32, v16
	v_fma_f32 v44, -v43, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v38, v39
	v_fma_f32 v40, -v41, v53, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v41, v36
	v_fma_f32 v42, -v42, v37, v50
	v_fmac_f32_e32 v34, v44, v52
	v_fma_f32 v44, -v33, v45, v38
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v32
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v40, v48, v53
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v35, -v43, v34, v35
	v_div_fmas_f32 v37, v42, v51, v37
	v_rcp_f32_e32 v42, v47
	v_fmac_f32_e32 v45, v44, v39
	v_div_scale_f32 v43, null, v32, v32, v18
	v_fma_f32 v46, -v36, v41, 1.0
	v_div_fixup_f32 v28, v40, v32, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v45, v38
	v_rcp_f32_e32 v38, v43
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v29, v37, v32, v29
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v40, -v47, v42, 1.0
	v_fmac_f32_e32 v41, v46, v41
	v_div_scale_f32 v46, s4, v16, v32, v16
	v_div_fmas_f32 v34, v35, v52, v34
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v42, v40, v42
	v_div_fmas_f32 v33, v33, v39, v45
	v_fma_f32 v45, -v43, v38, 1.0
	v_mul_f32_e32 v37, v46, v41
	v_div_scale_f32 v44, null, v32, v32, v19
	v_div_scale_f32 v40, s1, v17, v32, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v45, v38
	v_fma_f32 v35, -v36, v37, v46
	v_div_fixup_f32 v30, v34, v32, v30
	v_div_fixup_f32 v31, v33, v32, v31
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v35, v41
	v_rcp_f32_e32 v35, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	v_cndmask_b32_e64 v26, 0, v26, s0
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v36, v37, v46
	v_div_scale_f32 v36, s3, v18, v32, v18
	v_div_scale_f32 v46, null, v32, v32, v20
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v44, v35, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v30, 0, v30, s0
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v35, v45, v35
	v_div_scale_f32 v45, null, v32, v32, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v48, v45
	v_mul_f32_e32 v39, v40, v42
	v_fma_f32 v34, -v47, v39, v40
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v39, v34, v42
	v_mul_f32_e32 v34, v36, v38
	v_div_fmas_f32 v33, v33, v41, v37
	v_rcp_f32_e32 v37, v46
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v41, s4, v19, v32, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v16, v33, v32, v16
	v_fma_f32 v33, -v47, v39, v40
	v_fma_f32 v40, -v43, v34, v36
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v46, v37, 1.0
	v_div_fmas_f32 v33, v33, v42, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v40, v38
	v_div_scale_f32 v40, s1, v20, v32, v20
	v_fmac_f32_e32 v37, v49, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v17, v33, v32, v17
	v_fma_f32 v33, -v43, v34, v36
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v42, -v45, v48, 1.0
	v_mul_f32_e32 v36, v40, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v38, v34
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v48, v42, v48
	v_fma_f32 v38, -v46, v36, v40
	v_mul_f32_e32 v47, v41, v35
	v_div_scale_f32 v42, null, v32, v32, v22
	v_div_fixup_f32 v18, v33, v32, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v38, v37
	v_fma_f32 v39, -v44, v47, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v46, v36, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v39, v35
	v_div_scale_f32 v39, s5, v21, v32, v21
	v_div_scale_f32 v46, null, v32, v32, v9
	v_fma_f32 v34, -v44, v47, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v43, v39, v48
	v_rcp_f32_e32 v41, v42
	v_div_scale_f32 v44, null, v32, v32, v23
	v_div_fmas_f32 v34, v34, v35, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v45, v43, v39
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v35, v44
	v_div_fmas_f32 v33, v33, v37, v36
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v43, v38, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v42, v41, 1.0
	v_div_fixup_f32 v19, v34, v32, v19
	v_div_scale_f32 v34, s3, v22, v32, v22
	v_fma_f32 v36, -v45, v43, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v41, v47, v41
	v_fma_f32 v38, -v44, v35, 1.0
	v_div_scale_f32 v39, s1, v23, v32, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v36, v36, v48, v43
	v_div_fixup_f32 v20, v33, v32, v20
	v_fmac_f32_e32 v35, v38, v35
	v_div_scale_f32 v38, null, v32, v32, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v21, v36, v32, v21
	v_rcp_f32_e32 v36, v46
	v_mul_f32_e32 v45, v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v40, v38
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v48, null, v32, v32, v11
	v_fma_f32 v33, -v44, v45, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v50, v48
	v_fma_f32 v47, -v46, v36, 1.0
	v_mul_f32_e32 v37, v34, v41
	v_fmac_f32_e32 v45, v33, v35
	v_div_scale_f32 v33, s4, v8, v32, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v47, v36
	v_fma_f32 v43, -v42, v37, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v43, v41
	v_fma_f32 v43, -v38, v40, 1.0
	v_fma_f32 v34, -v42, v37, v34
	v_div_scale_f32 v42, null, v32, v32, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v43, v40
	v_div_fmas_f32 v34, v34, v41, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v37, -v44, v45, v39
	v_div_scale_f32 v41, s3, v9, v32, v9
	v_mul_f32_e32 v39, v33, v40
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v34, v32, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v49, v41, v36
	v_div_fmas_f32 v35, v37, v35, v45
	v_fma_f32 v47, -v38, v39, v33
	v_fma_f32 v44, -v42, v43, 1.0
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v37, -v46, v49, v41
	v_div_fixup_f32 v23, v35, v32, v23
	v_fmac_f32_e32 v39, v47, v40
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, s5, v10, v32, v10
	v_fmac_f32_e32 v49, v37, v36
	v_div_scale_f32 v37, null, v32, v32, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v35, -v48, v50, 1.0
	v_fma_f32 v33, -v38, v39, v33
	v_fma_f32 v38, -v46, v49, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v42, v45, v44
	v_fmac_f32_e32 v50, v35, v50
	v_div_scale_f32 v35, s1, v11, v32, v11
	v_div_fmas_f32 v33, v33, v40, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v45, v34, v43
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v39, v35, v50
	v_div_fmas_f32 v36, v38, v36, v49
	v_fma_f32 v38, -v42, v45, v44
	v_div_scale_f32 v40, null, v32, v32, v13
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v8, v33, v32, v8
	v_div_fmas_f32 v38, v38, v43, v45
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v37, v34, 1.0
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v43, -v48, v39, v35
	v_div_fixup_f32 v9, v36, v32, v9
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v12, v32, v12
	v_fmac_f32_e32 v39, v43, v50
	v_div_fixup_f32 v10, v38, v32, v10
	v_div_scale_f32 v38, null, v32, v32, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v41, v34
	v_fma_f32 v36, -v40, v42, 1.0
	v_fma_f32 v35, -v48, v39, v35
	v_rcp_f32_e32 v44, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v37, v33, v41
	v_fmac_f32_e32 v42, v36, v42
	v_div_scale_f32 v36, s4, v13, v32, v13
	v_div_fmas_f32 v35, v35, v50, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v43, v34
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v39, v36, v42
	v_div_scale_f32 v43, null, v32, v32, v15
	v_div_fixup_f32 v11, v35, v32, v11
	v_fma_f32 v35, -v37, v33, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v37, -v40, v39, v36
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v35, v34, v33
	v_div_scale_f32 v34, null, v32, v32, v0
	v_fmac_f32_e32 v39, v37, v42
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v32, v32, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v35, s1, v14, v32, v14
	v_div_fixup_f32 v12, v33, v32, v12
	v_fma_f32 v33, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	v_fma_f32 v36, -v40, v39, v36
	v_mul_f32_e32 v40, v35, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v33, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v34, v37, 1.0
	v_div_scale_f32 v33, s3, v15, v32, v15
	v_div_fmas_f32 v36, v36, v42, v39
	v_fma_f32 v39, -v38, v40, v35
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v32, v32, v2
	v_mul_f32_e32 v42, v33, v45
	v_div_scale_f32 v48, s4, v0, v32, v0
	v_fma_f32 v49, -v41, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	v_mul_f32_e32 v51, v48, v37
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v1, v32, v1
	v_div_fixup_f32 v13, v36, v32, v13
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
	v_div_scale_f32 v39, s1, v2, v32, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_div_fmas_f32 v35, v35, v44, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, null, v32, v32, v3
	v_div_fmas_f32 v33, v33, v45, v42
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v14, v35, v32, v14
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v15, v33, v32, v15
	v_div_fixup_f32 v0, v34, v32, v0
	v_div_scale_f32 v34, null, v32, v32, v4
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v44, null, v32, v32, v7
	v_div_fmas_f32 v37, v37, v47, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v33, -v46, v36, v39
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v46, v44
	v_div_fixup_f32 v1, v37, v32, v1
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v32, v32, v5
	v_div_scale_f32 v37, null, v32, v32, v6
	v_div_scale_f32 v38, vcc_lo, v3, v32, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v39, v35
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v2, v33, v32, v2
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v33, -v34, v36, 1.0
	v_mul_f32_e32 v43, v38, v42
	v_fma_f32 v50, -v44, v46, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s1, v4, v32, v4
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v48, -v37, v41, 1.0
	v_fma_f32 v47, -v40, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v49, v33, v36 :: v_dual_fmac_f32 v46, v50, v46
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v5, v32, v5
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v6, v32, v6
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	v_div_scale_f32 v50, s5, v7, v32, v7
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
	v_div_fixup_f32 v3, v38, v32, v3
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v4, v33, v32, v4
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v35, v32, v5
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v34, v32, v6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v36, v32, v7
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v32, s53, v77
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 1046 24                       ; attention.py:1046:24
	s_mul_i32 s0, s53, s72
	v_add_nc_u32_e32 v34, v32, v80
	v_add_nc_u32_e32 v32, s0, v32
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s53, v80
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s5, s59, 0xffff
	s_mov_b32 s4, s58
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v34, v34, s0, 2
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v37, v32, v80, 2
	v_add_lshl_u32 v38, v32, v93, 2
	v_add_lshl_u32 v39, v32, v92, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s53, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	s_clause 0x2
	buffer_store_b32 v24, v37, s[4:7], 0 offen
	buffer_store_b32 v25, v38, s[4:7], 0 offen
	buffer_store_b32 v26, v39, s[4:7], 0 offen
	v_add_lshl_u32 v24, v32, v91, 2
	v_add_lshl_u32 v25, v32, v90, 2
	v_add_lshl_u32 v26, v32, v89, 2
	v_add_lshl_u32 v37, v32, v88, 2
	v_add_lshl_u32 v38, v32, v87, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v37, 0x80000000, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	s_clause 0x4
	buffer_store_b32 v27, v24, s[4:7], 0 offen
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	buffer_store_b32 v30, v37, s[4:7], 0 offen
	buffer_store_b32 v31, v38, s[4:7], 0 offen
	v_add_lshl_u32 v24, v32, v85, 2
	v_add_lshl_u32 v25, v32, v84, 2
	v_add_lshl_u32 v26, v32, v83, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v27, v32, v82, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_lshl_u32 v28, v32, v81, 2
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 32, v80
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_clause 0x2
	buffer_store_b32 v16, v24, s[4:7], 0 offen
	buffer_store_b32 v17, v25, s[4:7], 0 offen
	buffer_store_b32 v18, v26, s[4:7], 0 offen
	v_add_lshl_u32 v17, v32, v79, 2
	v_cndmask_b32_e32 v16, 0x80000000, v28, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s53, v33
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v19, v27, s[4:7], 0 offen
	v_add_lshl_u32 v18, v32, v78, 2
	v_add_lshl_u32 v19, v32, v94, 2
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	buffer_store_b32 v20, v16, s[4:7], 0 offen
	v_add_lshl_u32 v16, v32, v33, 2
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v21, v17, s[4:7], 0 offen
	v_add_nc_u32_e32 v17, 0x88, v34
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_clause 0x2
	buffer_store_b32 v22, v18, s[4:7], 0 offen
	buffer_store_b32 v23, v19, s[4:7], 0 offen
	buffer_store_b32 v8, v16, s[4:7], 0 offen
	v_add_nc_u32_e32 v8, 0x90, v34
	v_cndmask_b32_e32 v16, 0x80000000, v17, vcc_lo
	v_add_nc_u32_e32 v17, 0x98, v34
	v_add_nc_u32_e32 v18, 0xa0, v34
	v_add_nc_u32_e32 v19, 0xa8, v34
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v35, 48, v80
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v9, v16, s[4:7], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v16, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s53, v35
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v10, v8, s[4:7], 0 offen
	v_add_nc_u32_e32 v8, 0xb0, v34
	s_clause 0x2
	buffer_store_b32 v11, v9, s[4:7], 0 offen
	buffer_store_b32 v12, v16, s[4:7], 0 offen
	buffer_store_b32 v13, v17, s[4:7], 0 offen
	v_add_nc_u32_e32 v9, 0xb8, v34
	v_add_lshl_u32 v10, v32, v35, 2
	v_add_nc_u32_e32 v11, 0xc8, v34
	v_add_nc_u32_e32 v12, 0xd0, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 62, v86
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v14, v8, s[4:7], 0 offen
	buffer_store_b32 v15, v9, s[4:7], 0 offen
	buffer_store_b32 v0, v10, s[4:7], 0 offen
	buffer_store_b32 v1, v11, s[4:7], 0 offen
	buffer_store_b32 v2, v12, s[4:7], 0 offen
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
	buffer_store_b32 v3, v0, s[4:7], 0 offen
	buffer_store_b32 v4, v1, s[4:7], 0 offen
	buffer_store_b32 v5, v2, s[4:7], 0 offen
	buffer_store_b32 v6, v8, s[4:7], 0 offen
	buffer_store_b32 v7, v9, s[4:7], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp52:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
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
		.amdhsa_next_free_vgpr 178
		.amdhsa_next_free_sgpr 75
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_vgpr, 178
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.numbered_sgpr, 75
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10904
; TotalNumSgprs: 77
; NumVgprs: 178
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 77
; NumVGPRsForWavesPerEU: 178
; Occupancy: 8
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
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
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
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     77
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     178
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
