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
	s_load_b128 s[56:59], s[0:1], 0x60
	v_dual_mov_b32 v43, 0x6420 :: v_dual_lshlrev_b32 v86, 4, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v38, 1, v0
	s_clause 0x1
	s_load_b256 s[40:47], s[0:1], 0x0
	s_load_b64 s[4:5], s[0:1], 0x70
	v_dual_mov_b32 v45, 0x5410 :: v_dual_and_b32 v36, 16, v86
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s2, 5
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s6, v38
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s39, s6, s2
	s_mov_b32 s67, 0x31027000
	s_mov_b32 s66, 0x7ffffffe
	v_dual_mov_b32 v44, 0x7531 :: v_dual_and_b32 v39, 15, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v3
	v_dual_mov_b32 v40, 0xff800000 :: v_dual_lshlrev_b32 v49, 1, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v68, v38, 16, v39
	s_clause 0x1
	s_load_b64 s[68:69], s[0:1], 0x20
	s_load_b128 s[60:63], s[0:1], 0x30
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[56:57], null, s56, v38, v[36:37]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s38, s56, v36
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s65, s41, 0xffff
	s_mov_b32 s64, s40
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v73, v0, 4, 1
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, vcc_lo, s38
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[1:2], null, s56, s39, v[56:57]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s6, v68
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v119, 0xff800000
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v48, 1, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v52, v49, 30, v73
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_mov_b32_e32 v25, v24
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[32:35], v1, s[64:67], 0 offen
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v1, s39, v68
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s65, s47, 0xffff
	s_mov_b32 s64, s46
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s7, s0, 4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v46, 0x7632 :: v_dual_lshlrev_b32 v1, 1, v1
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v48
	v_dual_mov_b32 v98, 0xff800000 :: v_dual_lshlrev_b32 v37, 3, v0
	v_dual_mov_b32 v16, v24 :: v_dual_lshlrev_b32 v89, 2, v52
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v26, v24 :: v_dual_and_b32 v51, 24, v0
	v_cndmask_b32_e64 v43, 0x7531, v43, s0
	v_dual_mov_b32 v28, v24 :: v_dual_and_b32 v37, 56, v37
	buffer_load_u16 v42, v1, s[64:67], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v47, 3, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v92, 4, v89
	v_mov_b32_e32 v30, v24
	v_xor_b32_e32 v87, v86, v51
	v_and_b32_e32 v51, 24, v49
	v_lshl_or_b32 v43, v43, 8, v43
	v_mad_u64_u32 v[57:58], null, s5, v38, v[36:37]
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[58:59], null, s57, v47, v[37:38]
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v18, v24 :: v_dual_and_b32 v43, 0x750031, v43
	v_lshl_add_u32 v88, v39, 1, 0
	v_lshl_or_b32 v90, v39, 5, v51
	v_cndmask_b32_e64 v39, 0x6420, v44, s0
	v_dual_mov_b32 v27, v24 :: v_dual_and_b32 v50, 16, v0
	v_lshl_or_b32 v36, v43, 4, v43
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v39, v39, 8, v39
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s3, s7, 14
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s8, s1, 0x10007
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s7, s59, s7
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s4, s4, s1
	v_dual_mov_b32 v19, v24 :: v_dual_and_b32 v108, 0x7050301, v36
	v_mov_b32_e32 v20, v24
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s8, s1, s8
	v_xor_b32_e32 v44, 8, v90
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s57, v37
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s59, s4, s7
	v_and_b32_e32 v37, 0x750031, v39
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s4, 0, v50
	v_dual_mov_b32 v22, v24 :: v_dual_add_nc_u32 v95, 0, v44
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v78, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v37, v37, 4, v37
	v_cndmask_b32_e64 v44, 0x1054, v45, s4
	v_cndmask_b32_e64 v45, 0x3276, v46, s4
	v_mov_b32_e32 v14, v24
	v_dual_mov_b32 v29, v24 :: v_dual_lshlrev_b32 v48, 6, v48
	v_and_b32_e32 v113, 0x7050301, v37
	v_lshl_or_b32 v37, v44, 8, v44
	v_lshl_or_b32 v44, v45, 8, v45
	v_mov_b32_e32 v11, v24
	v_mov_b32_e32 v0, v24
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s8, s8, 0x80000
	v_mov_b32_e32 v23, v24
	s_sext_i32_i16 s8, s8
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v79, 14, v73
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s8, s8, 10
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v77, 16, v73
	v_or_b32_e32 v76, 18, v73
	v_or_b32_e32 v75, 20, v73
	v_or_b32_e32 v74, 22, v73
	v_or_b32_e32 v72, 24, v73
	v_or_b32_e32 v71, 26, v73
	v_or_b32_e32 v70, 28, v73
	v_or_b32_e32 v69, 30, v73
	v_xor_b32_e32 v52, 8, v87
	v_and_or_b32 v91, v49, 60, v48
	v_xor_b32_e32 v48, 16, v90
	v_xor_b32_e32 v49, 24, v90
	.loc	1 821 32                        ; attention.py:821:32
	s_and_b32 s8, s8, 0xfffff800
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s9, s58, 0x3fb8aa3b
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s58, s8, s3
	v_dual_mov_b32 v31, v24 :: v_dual_add_nc_u32 v94, 0, v52
	v_dual_mov_b32 v17, v24 :: v_dual_add_nc_u32 v96, 0, v48
	v_dual_mov_b32 v21, v24 :: v_dual_add_nc_u32 v110, 8, v57
	v_dual_mov_b32 v8, v24 :: v_dual_add_nc_u32 v97, 0, v49
	v_dual_mov_b32 v10, v24 :: v_dual_add_nc_u32 v109, 4, v57
	v_dual_mov_b32 v12, v24 :: v_dual_add_nc_u32 v111, 12, v57
	v_mov_b32_e32 v15, v24
	v_mov_b32_e32 v1, v24
	v_mov_b32_e32 v3, v24
	v_mov_b32_e32 v4, v24
	v_mov_b32_e32 v5, v24
	v_mov_b32_e32 v6, v24
	v_mov_b32_e32 v7, v24
	v_mov_b32_e32 v41, v24
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v85, 2, v73
	v_or_b32_e32 v84, 4, v73
	v_or_b32_e32 v83, 6, v73
	v_or_b32_e32 v82, 8, v73
	v_or_b32_e32 v81, 10, v73
	v_or_b32_e32 v80, 12, v73
	v_xor_b32_e32 v93, 64, v91
	v_or_b32_e32 v99, s58, v79
	v_or_b32_e32 v100, s58, v77
	v_or_b32_e32 v101, s58, v76
	v_or_b32_e32 v102, s58, v75
	v_or_b32_e32 v103, s58, v74
	v_or_b32_e32 v104, s58, v72
	v_or_b32_e32 v105, s58, v71
	v_or_b32_e32 v106, s58, v70
	v_or_b32_e32 v107, s58, v69
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v112, s57, 3, v58
	v_lshl_add_u32 v117, s57, 4, v58
	s_mov_b32 s48, 0
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s6, s5, s6
	s_and_b32 s43, s43, 0xffff
	s_and_b32 s61, s61, 0xffff
	s_mov_b32 s40, 0x76543210
	s_mov_b32 s49, s48
	s_mov_b32 s50, s48
	s_mov_b32 s51, s48
	s_mov_b32 s52, s48
	s_mov_b32 s53, s48
	s_mov_b32 s54, s48
	s_mov_b32 s55, s48
	s_mov_b32 s70, s66
	s_mov_b32 s71, s67
	s_mov_b32 s74, s66
	s_mov_b32 s75, s67
	s_mov_b32 s41, s48
	s_and_b32 s69, s69, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s72, s60
	s_mov_b32 s73, s61
	s_add_i32 s59, s59, s6
	s_mov_b32 s46, s66
	s_mov_b32 s47, s67
	s_mov_b32 s64, s42
	s_mov_b32 s65, s43
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v38, v89, v32
	ds_bpermute_b32 v32, v92, v32
	ds_bpermute_b32 v36, v89, v33
	ds_bpermute_b32 v33, v92, v33
	ds_bpermute_b32 v39, v89, v34
	ds_bpermute_b32 v34, v92, v34
	ds_bpermute_b32 v43, v89, v35
	ds_bpermute_b32 v35, v92, v35
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v9, v24 :: v_dual_lshlrev_b32 v42, 16, v42
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v59, v32, v38, s4
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v60, v33, v36, s4
	v_cndmask_b32_e64 v63, v36, v33, s4
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v114, s9, v42
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[61:62], null, s57, 24, v[58:59]
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v62, v38, v32, s4
	v_and_b32_e32 v32, 0x540054, v37
	v_and_b32_e32 v37, 0x760076, v44
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v64, v34, v39, s4
	v_cndmask_b32_e64 v66, v39, v34, s4
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v65, v35, v43, s4
	v_lshl_or_b32 v32, v32, 4, v32
	v_lshl_or_b32 v33, v37, 4, v37
	v_mov_b32_e32 v13, v24
	v_mov_b32_e32 v2, v24
	v_cndmask_b32_e64 v67, v43, v35, s4
	v_and_b32_e32 v115, 0x5040504, v32
	v_and_b32_e32 v116, 0x7060706, v33
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_or_b32 s3, s41, s58
	v_or_b32_e32 v44, s58, v73
	v_mad_u64_u32 v[129:130], null, s3, s56, v[56:57]
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s5, s59, s41
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v42, 0, v87
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v130, s5, v57, 2
	v_add_lshl_u32 v131, v109, s5, 2
	v_add_lshl_u32 v132, v110, s5, 2
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v173, s41, v44, 1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v44, 0x80000000, v129, s38
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v133, v111, s5, 2
	v_dual_cndmask_b32 v179, 0x80000000, v130 :: v_dual_cndmask_b32 v180, 0x80000000, v131
	v_cndmask_b32_e32 v181, 0x80000000, v132, vcc_lo
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[129:132], v44, s[64:67], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v32, s48 :: v_dual_add_nc_u32 v43, 0, v90
	v_or_b32_e32 v45, s58, v85
	v_mov_b32_e32 v33, s49
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s3, s3, s57
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v174, s41, v45, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v134, s3, v58, 1
	v_add_lshl_u32 v135, s3, v112, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v34, s50 :: v_dual_mov_b32 v35, s51
	v_dual_mov_b32 v36, s52 :: v_dual_mov_b32 v37, s53
	v_dual_mov_b32 v38, s54 :: v_dual_mov_b32 v39, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v136, s3, v117, 1
	v_add_lshl_u32 v137, s3, v61, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v182, 0x80000000, v133, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v133, 0x80000000, v134, s1
	v_cndmask_b32_e64 v134, 0x80000000, v135, s1
	v_cndmask_b32_e64 v165, 0x80000000, v136, s1
	v_cndmask_b32_e64 v169, 0x80000000, v137, s1
	v_or_b32_e32 v46, s58, v84
	v_or_b32_e32 v122, s58, v83
	v_or_b32_e32 v123, s58, v82
	v_or_b32_e32 v124, s58, v81
	v_or_b32_e32 v125, s58, v80
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v48, s41, v100, 1
	v_add_lshl_u32 v49, s41, v101, 1
	v_add_lshl_u32 v50, s41, v102, 1
	v_add_lshl_u32 v51, s41, v103, 1
	v_add_lshl_u32 v52, s41, v104, 1
	v_add_lshl_u32 v53, s41, v105, 1
	v_add_lshl_u32 v54, s41, v106, 1
	v_add_lshl_u32 v55, s41, v107, 1
	v_add_lshl_u32 v47, s41, v99, 1
	v_add_lshl_u32 v46, s41, v46, 1
	v_add_lshl_u32 v175, s41, v122, 1
	v_add_lshl_u32 v176, s41, v123, 1
	v_add_lshl_u32 v177, s41, v124, 1
	v_add_lshl_u32 v178, s41, v125, 1
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v119, v119, v119 :: v_dual_add_nc_u32 v128, 0, v86
	v_dual_max_f32 v121, v98, v98 :: v_dual_mov_b32 v120, v41
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v118.h, 0
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v42, v[129:130]
	ds_store_b64 v94, v[131:132]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[42:45], v43 offset1:1
	ds_load_2addr_stride64_b64 v[145:148], v95 offset1:1
	ds_load_2addr_stride64_b64 v[149:152], v96 offset1:1
	ds_load_2addr_stride64_b64 v[153:156], v97 offset1:1
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[157:160], v133, s[44:47], 0 offen
	buffer_load_b128 v[161:164], v134, s[44:47], 0 offen
	buffer_load_b128 v[165:168], v165, s[44:47], 0 offen
	buffer_load_b128 v[169:172], v169, s[44:47], 0 offen
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v127.h, v118.h
	v_mov_b16_e32 v123.h, v118.h
	v_mov_b16_e32 v124.h, v118.h
	v_mov_b16_e32 v125.h, v118.h
	v_mov_b16_e32 v41.h, v118.h
	v_mov_b16_e32 v126.h, v118.h
	v_mov_b16_e32 v122.h, v118.h
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[129:136], v[42:43], v[59:60], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[137:144], v[44:45], v[59:60], v[32:39] neg_lo:[1,1,0]
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v39.h, v118.h
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[129:136], v[145:146], v[64:65], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[137:144], v[147:148], v[64:65], v[137:144] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_b128 v[145:148], v179, s[72:75], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[129:136], v[149:150], v[62:63], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[137:144], v[151:152], v[62:63], v[137:144] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[129:136], v[153:154], v[66:67], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[137:144], v[155:156], v[66:67], v[137:144] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v32, v129
	v_cvt_f32_i32_e32 v33, v130
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v34, v131
	v_cvt_f32_i32_e32 v35, v132
	v_cvt_f32_i32_e32 v36, v133
	v_cvt_f32_i32_e32 v37, v134
	v_cvt_f32_i32_e32 v38, v135
	v_cvt_f32_i32_e32 v42, v136
	v_cvt_f32_i32_e32 v43, v137
	v_cvt_f32_i32_e32 v44, v138
	v_cvt_f32_i32_e32 v45, v139
	v_cvt_f32_i32_e32 v149, v140
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x2
	buffer_load_b128 v[129:132], v180, s[72:75], 0 offen
	buffer_load_b128 v[133:136], v181, s[72:75], 0 offen
	buffer_load_b128 v[137:140], v182, s[72:75], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xf
	buffer_load_u16 v150, v173, s[68:71], 0 offen
	buffer_load_u16 v151, v174, s[68:71], 0 offen
	buffer_load_u16 v152, v46, s[68:71], 0 offen
	buffer_load_u16 v153, v175, s[68:71], 0 offen
	buffer_load_u16 v154, v176, s[68:71], 0 offen
	buffer_load_u16 v155, v177, s[68:71], 0 offen
	buffer_load_u16 v156, v178, s[68:71], 0 offen
	buffer_load_u16 v173, v47, s[68:71], 0 offen
	buffer_load_u16 v48, v48, s[68:71], 0 offen
	buffer_load_u16 v49, v49, s[68:71], 0 offen
	buffer_load_u16 v50, v50, s[68:71], 0 offen
	buffer_load_u16 v51, v51, s[68:71], 0 offen
	buffer_load_u16 v52, v52, s[68:71], 0 offen
	buffer_load_u16 v53, v53, s[68:71], 0 offen
	buffer_load_u16 v54, v54, s[68:71], 0 offen
	buffer_load_u16 v55, v55, s[68:71], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v144, v144
	v_mul_f32_e32 v175, v114, v37
	v_mul_f32_e32 v37, v114, v44
	v_mul_f32_e32 v44, v114, v141
	v_mul_f32_e32 v46, v114, v143
	v_mul_f32_e32 v47, v114, v144
	v_mul_f32_e32 v174, v114, v36
	v_mul_f32_e32 v36, v114, v43
	v_mul_f32_e32 v43, v114, v149
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(22)
	ds_store_b128 v128, v[161:164] offset:1024
	s_waitcnt vmcnt(21)
	ds_store_b128 v128, v[165:168] offset:2048
	s_waitcnt vmcnt(20)
	ds_store_b128 v128, v[169:172] offset:3072
	ds_store_b128 v128, v[157:160]
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v159, v114, v34
	v_mul_f32_e32 v157, v114, v32
	v_mul_f32_e32 v160, v114, v35
	v_mul_f32_e32 v32, v114, v38
	v_mul_f32_e32 v35, v114, v42
	v_mul_f32_e32 v38, v114, v45
	v_mul_f32_e32 v45, v114, v142
	v_mul_f32_e32 v158, v114, v33
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v34, v88 offset:608
	ds_load_u16_d16 v33, v88 offset:352
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(19)
	v_cndmask_b32_e32 v128, 0xff800000, v148, vcc_lo
	v_dual_cndmask_b32 v42, 0xff800000, v147 :: v_dual_cndmask_b32 v141, 0xff800000, v145
	v_cndmask_b32_e32 v142, 0xff800000, v146, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v128
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(18)
	v_dual_cndmask_b32 v131, 0xff800000, v131 :: v_dual_cndmask_b32 v132, 0xff800000, v132
	s_waitcnt vmcnt(16)
	v_dual_cndmask_b32 v140, 0xff800000, v140 :: v_dual_cndmask_b32 v137, 0xff800000, v137
	s_waitcnt vmcnt(13)
	v_dual_cndmask_b32 v138, 0xff800000, v138 :: v_dual_lshlrev_b32 v145, 16, v152
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v144, 16, v151
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v42
	v_cmp_neq_f32_e64 s12, 0xff800000, v141
	.loc	1 879 36                        ; attention.py:879:36
	v_dual_cndmask_b32 v129, 0xff800000, v129 :: v_dual_cndmask_b32 v136, 0xff800000, v136
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v151, 16, v48
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v48, v142, v141, s0
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v152, 16, v50
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v50, v141, v142, s0
	v_cndmask_b32_e64 v141, v128, v42, s0
	v_cndmask_b32_e64 v42, v42, v128, s0
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v142
	v_cmp_neq_f32_e64 s5, 0xff800000, v131
	v_cmp_neq_f32_e64 s6, 0xff800000, v132
	v_cmp_neq_f32_e64 s13, 0xff800000, v140
	v_cmp_neq_f32_e64 s15, 0xff800000, v137
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s11, vcc_lo, s11
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_dual_cndmask_b32 v130, 0xff800000, v130 :: v_dual_cndmask_b32 v135, 0xff800000, v135
	v_dual_cndmask_b32 v133, 0xff800000, v133 :: v_dual_cndmask_b32 v134, 0xff800000, v134
	v_cndmask_b32_e32 v139, 0xff800000, v139, vcc_lo
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v142, v92, v42
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v42, 0, 1, s11
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v136
	v_cmp_neq_f32_e64 s7, 0xff800000, v129
	v_cmp_neq_f32_e64 s17, 0xff800000, v138
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s8, vcc_lo, s5
	s_and_b32 s9, vcc_lo, s6
	s_and_b32 s5, vcc_lo, s13
	s_and_b32 s6, vcc_lo, s15
	s_and_b32 s13, vcc_lo, s3
	s_and_b32 s15, vcc_lo, s14
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v146, 16, v153
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v135
	v_cmp_neq_f32_e64 s19, 0xff800000, v133
	v_cmp_neq_f32_e64 s20, 0xff800000, v134
	v_cmp_neq_f32_e64 s21, 0xff800000, v130
	v_cmp_neq_f32_e64 s22, 0xff800000, v139
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v128, v130, v129, s0
	v_cndmask_b32_e64 v129, v129, v130, s0
	v_cndmask_b32_e64 v130, v132, v131, s0
	v_cndmask_b32_e64 v131, v131, v132, s0
	v_cndmask_b32_e64 v132, v134, v133, s0
	v_cndmask_b32_e64 v133, v133, v134, s0
	v_cndmask_b32_e64 v134, v136, v135, s0
	v_cndmask_b32_e64 v135, v135, v136, s0
	v_cndmask_b32_e64 v136, v138, v137, s0
	v_cndmask_b32_e64 v137, v137, v138, s0
	v_cndmask_b32_e64 v138, v140, v139, s0
	v_cndmask_b32_e64 v139, v139, v140, s0
	ds_bpermute_b32 v140, v89, v48
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v48, 0, 1, s13
	v_cndmask_b32_e64 v153, 0, 1, s15
	v_mov_b16_e32 v39.l, v42.l
	s_and_b32 s10, vcc_lo, s7
	s_and_b32 s7, vcc_lo, s17
	s_and_b32 s17, vcc_lo, s12
	s_and_b32 s12, vcc_lo, s18
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v147, 16, v154
	v_lshlrev_b32_e32 v148, 16, v155
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v154, 0, 1, s17
	v_cndmask_b32_e64 v155, 0, 1, s12
	v_mov_b16_e32 v41.l, v48.l
	s_waitcnt lgkmcnt(2)
	v_lshlrev_b16 v33.h, 8, v39.l
	v_mov_b16_e64 v39.l, v153.l
	s_and_b32 s14, vcc_lo, s16
	s_and_b32 s16, vcc_lo, s20
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v143, 16, v150
	v_lshlrev_b32_e32 v149, 16, v156
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v156, 0, 1, s14
	v_cndmask_b32_e64 v161, 0, 1, s16
	v_or_b16 v163.h, v41.l, v33.h
	v_mov_b16_e64 v41.l, v154.l
	v_lshlrev_b16 v33.h, 8, v39.l
	v_mov_b16_e64 v39.l, v155.l
	s_and_b32 s18, vcc_lo, s19
	v_cndmask_b32_e64 v42, 0, 1, s9
	v_cndmask_b32_e64 v162, 0, 1, s18
	v_or_b16 v163.l, v41.l, v33.h
	v_mov_b16_e64 v41.l, v156.l
	v_lshlrev_b16 v33.h, 8, v39.l
	v_mov_b16_e64 v39.l, v161.l
	s_and_b32 s19, vcc_lo, s21
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v141, v89, v141
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v48, 0, 1, s8
	v_cndmask_b32_e64 v153, 0, 1, s19
	v_or_b16 v154.h, v41.l, v33.h
	v_mov_b16_e64 v41.l, v162.l
	v_lshlrev_b16 v33.h, 8, v39.l
	v_mov_b16_e32 v39.l, v42.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v50, v92, v50
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v155, 0, 1, s10
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v128, v89, v128
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v154.l, v41.l, v33.h
	v_mov_b16_e32 v41.l, v48.l
	v_lshlrev_b16 v33.h, 8, v39.l
	v_mov_b16_e64 v39.l, v153.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v129, v92, v129
	ds_bpermute_b32 v130, v89, v130
	ds_bpermute_b32 v131, v92, v131
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v156, 0, 1, s5
	v_or_b16 v162.h, v41.l, v33.h
	v_cndmask_b32_e64 v42, 0, 1, s7
	v_mov_b16_e64 v41.l, v155.l
	v_lshlrev_b16 v33.h, 8, v39.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v132, v89, v132
	ds_bpermute_b32 v133, v92, v133
	ds_bpermute_b32 v134, v89, v134
	ds_bpermute_b32 v135, v92, v135
	ds_bpermute_b32 v136, v89, v136
	ds_bpermute_b32 v137, v92, v137
	ds_bpermute_b32 v138, v89, v138
	ds_bpermute_b32 v139, v92, v139
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s20, vcc_lo, s22
	v_or_b16 v162.l, v41.l, v33.h
	v_cndmask_b32_e64 v161, 0, 1, s20
	v_mov_b16_e64 v39.l, v156.l
	v_mov_b16_e32 v41.l, v42.l
	v_cndmask_b32_e64 v48, 0, 1, s6
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(13)
	v_cndmask_b32_e64 v153, v142, v141, s4
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e64 v42.l, v161.l
	v_lshlrev_b16 v33.h, 8, v39.l
	v_lshlrev_b16 v34.h, 8, v41.l
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v141, v141, v142, s4
	v_mul_f32_e32 v153, 0x3fb8aa3b, v153
	.loc	1 881 25                        ; attention.py:881:25
	v_perm_b32 v142, v162, v163, v113
	v_or_b16 v42.h, v42.l, v33.h
	v_or_b16 v42.l, v48.l, v34.h
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(12)
	v_cndmask_b32_e64 v48, v50, v140, s4
	v_cndmask_b32_e64 v140, v140, v50, s4
	s_waitcnt lgkmcnt(10)
	v_cndmask_b32_e64 v50, v129, v128, s4
	v_cndmask_b32_e64 v128, v128, v129, s4
	s_waitcnt lgkmcnt(8)
	v_cndmask_b32_e64 v129, v131, v130, s4
	v_cndmask_b32_e64 v130, v130, v131, s4
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v131, v133, v132, s4
	v_cndmask_b32_e64 v132, v132, v133, s4
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v133, v135, v134, s4
	v_cndmask_b32_e64 v134, v134, v135, s4
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v135, v137, v136, s4
	v_cndmask_b32_e64 v136, v136, v137, s4
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v137, v139, v138, s4
	v_cndmask_b32_e64 v138, v138, v139, s4
	.loc	1 881 25                        ; attention.py:881:25
	v_perm_b32 v139, v162, v163, v108
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v153, v158, v144 :: v_dual_mul_f32 v144, 0x3fb8aa3b, v129
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v129, 0x3fb8aa3b, v131 :: v_dual_lshlrev_b32 v150, 16, v173
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v48, 0x3fb8aa3b, v48 :: v_dual_lshlrev_b32 v51, 16, v51
	v_dual_mul_f32 v131, 0x3fb8aa3b, v133 :: v_dual_fmac_f32 v144, v160, v146
	v_mul_f32_e32 v146, 0x3fb8aa3b, v137
	.loc	1 881 25                        ; attention.py:881:25
	ds_bpermute_b32 v133, v89, v139
	ds_bpermute_b32 v137, v92, v142
	v_perm_b32 v155, v42, v154, v108
	v_perm_b32 v154, v42, v154, v113
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v48, v157, v143 :: v_dual_mul_f32 v143, 0x3fb8aa3b, v50
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 881 25                        ; attention.py:881:25
	ds_bpermute_b32 v139, v89, v155
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v142, 0x3fb8aa3b, v128 :: v_dual_lshlrev_b32 v53, 16, v53
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v143, v159, v145
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v145, 0x3fb8aa3b, v135 :: v_dual_mul_f32 v136, 0x3fb8aa3b, v136
	v_dual_mul_f32 v135, 0x3fb8aa3b, v140 :: v_dual_mul_f32 v138, 0x3fb8aa3b, v138
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	ds_bpermute_b32 v140, v92, v154
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v129, v174, v147 :: v_dual_lshlrev_b32 v54, 16, v54
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v128, 0x3fb8aa3b, v132 :: v_dual_lshlrev_b32 v55, 16, v55
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v131, v175, v148 :: v_dual_mul_f32 v148, 0x3fb8aa3b, v134
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v147, 0x3fb8aa3b, v130 :: v_dual_fmac_f32 v142, v38, v152
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v145, v32, v149 :: v_dual_fmac_f32 v136, v46, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v135, v36, v151 :: v_dual_fmac_f32 v148, v45, v53
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v32, v137, v133, s4
	v_cndmask_b32_e64 v36, v133, v137, s4
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v141, 0x3fb8aa3b, v141 :: v_dual_fmac_f32 v146, v35, v150
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v147, v43, v51 :: v_dual_and_b32 v38, 1, v32
	v_dual_fmac_f32 v138, v47, v55 :: v_dual_and_b32 v43, 0x100, v32
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_and_b32_e32 v47, 0x100, v36
	v_and_b32_e32 v149, 0x10000, v32
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v141, v37, v49 :: v_dual_fmac_f32 v128, v44, v52
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v35, v140, v139, s4
	v_cndmask_b32_e64 v37, v139, v140, s4
	v_cmp_eq_u32_e64 s36, 1, v38
	v_cmp_eq_u32_e64 s37, 0, v43
	v_cmp_eq_u32_e64 s27, 0, v47
	v_cmp_eq_u32_e64 s35, 0, v149
	v_and_b32_e32 v44, 1, v35
	v_and_b32_e32 v49, 1, v37
	v_and_b32_e32 v51, 0x100, v37
	v_and_b32_e32 v52, 0x1000000, v37
	v_and_b32_e32 v37, 0x10000, v37
	v_and_b32_e32 v54, 0x1000000, v35
	v_and_b32_e32 v55, 0x10000, v35
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v134, v141, 0xff800000, s27
	v_cndmask_b32_e64 v141, v143, 0xff800000, s35
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v140, 0x1000000, v32
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v32, 0xff800000, v48, s36
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v45, 0x100, v35
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v35, v153, 0xff800000, s37
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v46, 1, v36
	v_cmp_eq_u32_e64 s28, 0, v37
	v_cmp_eq_u32_e64 s23, 1, v44
	v_cmp_eq_u32_e64 s26, 0, v45
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v32, v35
.Ltmp2:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s24, 1, v46
	v_cmp_eq_u32_e64 s25, 1, v49
	v_cmp_eq_u32_e64 s21, 0, v51
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v133, v131, 0xff800000, s26
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s34, 0, v140
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v131, 0xff800000, v135, s24
	v_cndmask_b32_e64 v130, 0xff800000, v129, s23
	v_cndmask_b32_e64 v132, 0xff800000, v128, s25
	v_cndmask_b32_e64 v128, v148, 0xff800000, s21
	v_cndmask_b32_e64 v135, v136, 0xff800000, s28
	v_cndmask_b32_e64 v45, v131, v32, s4
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s22, 0, v52
	v_cmp_eq_u32_e64 s31, 0, v55
	v_cmp_eq_u32_e64 s33, 0, v54
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v140, v144, 0xff800000, s34
	ds_bpermute_b32 v45, v91, v45
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v53, 0x1000000, v36
	v_and_b32_e32 v36, 0x10000, v36
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v129, v138, 0xff800000, s22
	v_cndmask_b32_e64 v138, v145, 0xff800000, s31
	v_cndmask_b32_e64 v139, v146, 0xff800000, s33
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s30, 0, v53
	v_cmp_eq_u32_e64 s29, 0, v36
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v38, v132, v128, v135
	v_max3_f32 v44, v140, v130, v133
	v_max3_f32 v36, v138, v139, v131
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v137, v147, 0xff800000, s30
	v_cndmask_b32_e64 v136, v142, 0xff800000, s29
	v_cndmask_b32_e64 v47, v134, v35, s4
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v37, v37, v141, v44
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v49, v132, v130, s4
	v_cndmask_b32_e64 v52, v128, v133, s4
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v43, v134, v136, v137
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v142, v129, v139, s4
	v_cndmask_b32_e64 v46, v32, v131, s4
	v_cndmask_b32_e64 v48, v35, v134, s4
	v_cndmask_b32_e64 v51, v130, v132, s4
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v38, v43, v38, v129
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v53, v133, v128, s4
	v_cndmask_b32_e64 v143, v139, v129, s4
	v_cndmask_b32_e64 v144, v136, v141, s4
	v_cndmask_b32_e64 v145, v141, v136, s4
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v36, v37, v36, v38
.Ltmp12:
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v43, v91, v47
	ds_bpermute_b32 v47, v91, v49
	ds_bpermute_b32 v49, v91, v52
	ds_bpermute_b32 v52, v91, v142
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v36, s40, 0xfedcba98 op_sel:[1,0]
.Ltmp14:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v54, v135, v138, s4
	v_cndmask_b32_e64 v55, v138, v135, s4
	ds_bpermute_b32 v44, v93, v48
	ds_bpermute_b32 v48, v93, v51
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v142, v40, v36, v37
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v51, v93, v53
	ds_bpermute_b32 v53, v93, v143
	ds_bpermute_b32 v151, v91, v144
	ds_bpermute_b32 v152, v93, v145
	ds_bpermute_b32 v46, v93, v46
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v36, v40, v142
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v146, v137, v140, s4
	v_cndmask_b32_e64 v147, v140, v137, s4
	ds_bpermute_b32 v54, v91, v54
	ds_bpermute_b32 v55, v93, v55
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v36, v36
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v159, v91, v146
	ds_bpermute_b32 v160, v93, v147
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v40
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v141, v141, v142
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(15)
	v_dual_max_f32 v38, v45, v45 :: v_dual_sub_f32 v131, v131, v142
.Ltmp16:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(10)
	v_cndmask_b32_e64 v150, v43, v44, s0
	s_waitcnt lgkmcnt(9)
	v_cndmask_b32_e64 v146, v47, v48, s0
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v141, v141
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v36, 0, v36, s3
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(8)
	v_cndmask_b32_e64 v147, v51, v49, s0
	v_cndmask_b32_e64 v148, v49, v51, s0
	s_waitcnt lgkmcnt(7)
	v_cndmask_b32_e64 v143, v53, v52, s0
	s_waitcnt lgkmcnt(5)
	v_cndmask_b32_e64 v153, v152, v151, s0
	v_cndmask_b32_e64 v154, v151, v152, s0
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(4)
	v_max_f32_e32 v37, v46, v46
.Ltmp18:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v22, v22, v36
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v149, v44, v43, s0
	v_cndmask_b32_e64 v145, v48, v47, s0
	v_cndmask_b32_e64 v144, v52, v53, s0
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v38, v37
	s_waitcnt lgkmcnt(2)
	v_max3_f32 v38, v54, v55, v143
	v_max3_f32 v43, v146, v147, v148
	v_max3_f32 v44, v150, v153, v154
.Ltmp20:
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v8, v8, v36 :: v_dual_sub_f32 v137, v137, v142
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v131, v131
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v141, v141, 0, s35
.Ltmp21:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_max3_f32 v40, v159, v160, v145
	v_max3_f32 v38, v43, v38, v144
	v_max3_f32 v37, v37, v149, v44
.Ltmp22:
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v19, v19, v36 :: v_dual_sub_f32 v136, v136, v142
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v137, v137
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v127.l, v141.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v35, v142
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v167, v37, v40, v38
.Ltmp24:
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v29, v29, v36 :: v_dual_sub_f32 v130, v130, v142
	v_dual_mul_f32 v21, v21, v36 :: v_dual_sub_f32 v132, v132, v142
	v_dual_mul_f32 v12, v12, v36 :: v_dual_and_b32 v127, 1, v127
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v136, v136
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v131, 0, v131, s24
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v32, v32, v142
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v31, v31, v36 :: v_dual_sub_f32 v138, v138, v142
	v_dual_mul_f32 v10, v10, v36 :: v_dual_sub_f32 v135, v135, v142
	v_mul_f32_e32 v14, v14, v36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v140, v140, v142
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v130, v130
	v_exp_f32_e32 v132, v132
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v137, v137, 0, s30
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s30, v141, v141
	v_mov_b16_e64 v123.l, v131.h
	v_add3_u32 v127, v141, v127, 0x7fff
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v141, v167
.Ltmp26:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v32, v32
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v18, v18, v36 :: v_dual_sub_f32 v133, v133, v142
	v_dual_mul_f32 v2, v2, v36 :: v_dual_and_b32 v123, 1, v123
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v140, v140
	v_exp_f32_e32 v138, v138
	v_exp_f32_e32 v135, v135
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v136, v136, 0, s29
.Ltmp27:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v141, v141 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp28:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, v35, 0, s37
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v20, v20, v36 :: v_dual_sub_f32 v139, v139, v142
	v_mul_f32_e32 v6, v6, v36
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v133, v133
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v130, 0, v130, s23
	v_cndmask_b32_e64 v132, 0, v132, s25
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s25, v131, v131
	v_mov_b16_e64 v124.l, v136.h
	v_add3_u32 v123, v131, v123, 0x7fff
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v131, v141, v141
.Ltmp30:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v32, 0, v32, s36
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v118.l, v35.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v139, v139
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v140, v140, 0, s34
	v_cndmask_b32_e64 v138, v138, 0, s31
	v_cndmask_b32_e64 v135, v135, 0, s28
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v125.l, v130.h
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v131, v167, v131 :: v_dual_and_b32 v124, 1, v124
.Ltmp32:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v41.l, v32.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v157, v45, v46, s0
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v36
	v_mul_f32_e32 v25, v25, v36
	v_mul_f32_e32 v26, v26, v36
	v_mul_f32_e32 v27, v27, v36
	v_mul_f32_e32 v28, v28, v36
	v_mul_f32_e32 v30, v30, v36
	v_dual_mul_f32 v16, v16, v36 :: v_dual_and_b32 v37, 1, v41
	v_dual_mul_f32 v17, v17, v36 :: v_dual_sub_f32 v134, v134, v142
	v_mul_f32_e32 v11, v11, v36
	v_mul_f32_e32 v13, v13, v36
	v_mul_f32_e32 v15, v15, v36
	v_dual_mul_f32 v0, v0, v36 :: v_dual_and_b32 v125, 1, v125
	v_mul_f32_e32 v1, v1, v36
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v133, v133, 0, s26
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v126.l, v138.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v23, v23, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v122.l, v132.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v39.l, v135.h
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v4, v4, v36 :: v_dual_max_f32 v121, v121, v131
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v119, v119, v131
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v36
	v_mul_f32_e32 v5, v5, v36
	v_dual_mul_f32 v7, v7, v36 :: v_dual_and_b32 v36, 1, v118
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v118.l, v140.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v134, v134
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v139, v139, 0, s33
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s33, v130, v130
	v_add3_u32 v125, v130, v125, 0x7fff
	v_and_b32_e32 v130, 1, v118
	v_mov_b16_e64 v118.l, v133.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v42, v88 offset:512
	ds_load_u16_d16 v50, v88 offset:576
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s36, v35, v35
	v_cmp_o_f32_e64 s37, v32, v32
	v_add3_u32 v35, v35, v36, 0x7fff
	v_add3_u32 v32, v32, v37, 0x7fff
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v156, v46, v45, s0
	v_cndmask_b32_e64 v151, v55, v54, s0
	v_cndmask_b32_e64 v152, v54, v55, s0
	v_cndmask_b32_e64 v155, v160, v159, s0
	v_cndmask_b32_e64 v158, v159, v160, s0
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v160, v88 offset:288
	ds_load_u16_d16 v43, v88 offset:768
	ds_load_u16_d16 v51, v88 offset:832
	ds_load_u16_d16 v161, v88 offset:544
	ds_load_u16_d16 v44, v88 offset:1024
	ds_load_u16_d16 v52, v88 offset:1088
	ds_load_u16_d16 v35, v88 offset:864
	ds_load_u16_d16 v45, v88 offset:1280
	ds_load_u16_d16 v53, v88 offset:1344
	ds_load_u16_d16 v36, v88 offset:1120
	ds_load_u16_d16 v46, v88 offset:1536
	ds_load_u16_d16 v54, v88 offset:1600
	ds_load_u16_d16 v37, v88 offset:1376
	ds_load_u16_d16 v47, v88 offset:1792
	ds_load_u16_d16 v55, v88 offset:1856
	ds_load_u16_d16 v38, v88 offset:1632
	ds_load_u16_d16 v166, v88 offset:1824
	ds_load_u16_d16 v41, v88 offset:256
	ds_load_u16_d16 v40, v88
	ds_load_u16_d16 v159, v88 offset:32
	ds_load_u16_d16 v48, v88 offset:64
	ds_load_u16_d16 v49, v88 offset:320
	ds_load_u16_d16_hi v33, v88 offset:480
	ds_load_u16_d16 v32, v88 offset:96
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v50, v88 offset:704
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v126, 1, v126
	v_and_b32_e32 v39, 1, v39
	v_cndmask_b16 v125.l, 0x7fff, v127.h, s30
	v_and_b32_e32 v127, 1, v118
	v_mov_b16_e64 v118.l, v139.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v134, v134, 0, s27
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s29, v133, v133
	v_cmp_o_f32_e64 s34, v138, v138
	v_and_b32_e32 v122, 1, v122
	v_add3_u32 v126, v138, v126, 0x7fff
	v_add3_u32 v138, v135, v39, 0x7fff
	s_waitcnt lgkmcnt(18)
	v_cndmask_b16 v39.h, 0x7fff, v35.h, s36
	s_waitcnt lgkmcnt(1)
	v_cndmask_b16 v39.l, 0x7fff, v32.h, s37
	v_add3_u32 v127, v133, v127, 0x7fff
	v_and_b32_e32 v133, 1, v118
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v43, v88 offset:896
	ds_load_u16_d16_hi v51, v88 offset:960
	ds_load_u16_d16 v162, v88 offset:800
	ds_load_u16_d16_hi v44, v88 offset:1152
	ds_load_u16_d16_hi v52, v88 offset:1216
	ds_load_u16_d16 v163, v88 offset:1056
	ds_load_u16_d16_hi v45, v88 offset:1408
	ds_load_u16_d16_hi v53, v88 offset:1472
	ds_load_u16_d16 v164, v88 offset:1312
	ds_load_u16_d16_hi v46, v88 offset:1664
	ds_load_u16_d16_hi v54, v88 offset:1728
	ds_load_u16_d16 v165, v88 offset:1568
	ds_load_u16_d16_hi v42, v88 offset:640
	ds_load_u16_d16_hi v41, v88 offset:384
	ds_load_u16_d16_hi v47, v88 offset:1920
	ds_load_u16_d16_hi v55, v88 offset:1984
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s31, v140, v140
	v_cmp_o_f32_e64 s3, v139, v139
	v_cmp_o_f32_e64 s27, v132, v132
	v_add3_u32 v122, v132, v122, 0x7fff
	v_add3_u32 v130, v140, v130, 0x7fff
	v_cndmask_b16 v140.l, 0x7fff, v126.h, s34
	v_permlanex16_b32 v132, v39, s40, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v118.l, v134.h
	v_cndmask_b16 v126.h, 0x7fff, v127.h, s29
	v_add3_u32 v127, v139, v133, 0x7fff
	v_cmp_o_f32_e64 s28, v135, v135
	v_cndmask_b16 v126.l, 0x7fff, v125.h, s33
	v_cndmask_b16 v125.h, 0x7fff, v130.h, s31
	v_perm_b32 v130, v132, v39, v115
	v_perm_b32 v131, v132, v39, v116
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v39, v98, v121
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v135, 1, v118
	v_mov_b16_e64 v118.l, v137.h
	v_cndmask_b16 v140.h, 0x7fff, v127.h, s3
	v_permlanex16_b32 v133, v125, s40, 0xfedcba98 op_sel:[1,0]
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v139, v39
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cmp_neq_f32_e64 s29, 0xff800000, v98
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_permlanex16_b32 v39, v126, s40, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v98, 1, v118
	v_permlanex16_b32 v127, v140, s40, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s24, v134, v134
	v_cmp_o_f32_e64 s26, v136, v136
	v_cmp_o_f32_e64 s23, v137, v137
	v_add3_u32 v124, v136, v124, 0x7fff
	v_perm_b32 v132, v133, v125, v115
	v_perm_b32 v133, v133, v125, v116
	v_add3_u32 v125, v134, v135, 0x7fff
	v_perm_b32 v134, v39, v126, v115
	v_perm_b32 v135, v39, v126, v116
	v_add3_u32 v126, v137, v98, 0x7fff
	v_perm_b32 v136, v127, v140, v115
	v_perm_b32 v137, v127, v140, v116
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v167, v88 offset:2048
	ds_load_u16_d16 v39, v88 offset:1888
	ds_load_u16_d16_hi v40, v88 offset:128
	ds_load_u16_d16_hi v159, v88 offset:160
	ds_load_u16_d16_hi v48, v88 offset:192
	ds_load_u16_d16_hi v32, v88 offset:224
	ds_load_u16_d16_hi v160, v88 offset:416
	ds_load_u16_d16_hi v49, v88 offset:448
	ds_load_u16_d16_hi v161, v88 offset:672
	ds_load_u16_d16_hi v34, v88 offset:736
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v162, v88 offset:928
	ds_load_u16_d16_hi v35, v88 offset:992
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v163, v88 offset:1184
	ds_load_u16_d16_hi v36, v88 offset:1248
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v164, v88 offset:1440
	ds_load_u16_d16_hi v37, v88 offset:1504
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v165, v88 offset:1696
	ds_load_u16_d16_hi v38, v88 offset:1760
	ds_load_u16_d16_hi v166, v88 offset:1952
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v39, v88 offset:2016
	ds_load_u16_d16_hi v167, v88 offset:2176
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(18)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[40:47], v[130:137], v[24:31]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v128, v142
	v_sub_f32_e32 v41, v129, v142
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v42, v88 offset:2080
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v139, 0, v139, s29
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(14)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[48:55], v[130:137], v[8:15]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v50, v40
	v_exp_f32_e32 v41, v41
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v51.h, 0x7fff, v125.h, s24
	v_cndmask_b16 v53.l, 0x7fff, v122.h, s27
	v_cndmask_b16 v51.l, 0x7fff, v123.h, s25
	v_cndmask_b16 v52.l, 0x7fff, v124.h, s26
	v_mov_b32_e32 v40, v142
	v_cndmask_b16 v54.l, 0x7fff, v138.h, s28
	v_cndmask_b16 v52.h, 0x7fff, v126.h, s23
	v_permlanex16_b32 v126, v51, s40, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v50, v50, 0, s21
	v_cndmask_b32_e64 v41, v41, 0, s22
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[159:166], v[130:137], v[16:23]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v159, v88 offset:2112
	ds_load_u16_d16 v169, v88 offset:2560
	ds_load_u16_d16 v161, v88 offset:2624
	ds_load_u16_d16 v160, v88 offset:2368
	ds_load_u16_d16 v168, v88 offset:2304
	ds_load_u16_d16 v176, v88 offset:2400
	ds_load_u16_d16 v170, v88 offset:2816
	ds_load_u16_d16 v162, v88 offset:2880
	ds_load_u16_d16 v177, v88 offset:2656
	ds_load_u16_d16 v171, v88 offset:3072
	ds_load_u16_d16 v163, v88 offset:3136
	ds_load_u16_d16 v178, v88 offset:2912
	ds_load_u16_d16 v172, v88 offset:3328
	ds_load_u16_d16 v164, v88 offset:3392
	ds_load_u16_d16 v179, v88 offset:3168
	ds_load_u16_d16 v173, v88 offset:3584
	ds_load_u16_d16 v165, v88 offset:3648
	ds_load_u16_d16 v180, v88 offset:3424
	ds_load_u16_d16 v174, v88 offset:3840
	ds_load_u16_d16 v166, v88 offset:3904
	ds_load_u16_d16 v181, v88 offset:3680
	ds_load_u16_d16 v182, v88 offset:3936
	ds_load_u16_d16 v175, v88 offset:2144
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v159, v88 offset:2240
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v160, v88 offset:2496
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v168, v88 offset:2432
	ds_load_u16_d16 v43, v88 offset:2336
	ds_load_u16_d16_hi v169, v88 offset:2688
	ds_load_u16_d16_hi v161, v88 offset:2752
	ds_load_u16_d16 v44, v88 offset:2592
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v118.l, v50.h
	v_cmp_o_f32_e64 s3, v50, v50
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v170, v88 offset:2944
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v162, v88 offset:3008
	ds_load_u16_d16 v45, v88 offset:2848
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v171, v88 offset:3200
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v163, v88 offset:3264
	ds_load_u16_d16 v46, v88 offset:3104
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v172, v88 offset:3456
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v164, v88 offset:3520
	ds_load_u16_d16 v47, v88 offset:3360
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v173, v88 offset:3712
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v165, v88 offset:3776
	ds_load_u16_d16 v48, v88 offset:3616
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v174, v88 offset:3968
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v166, v88 offset:4032
	ds_load_u16_d16 v49, v88 offset:3872
	ds_load_u16_d16_hi v42, v88 offset:2208
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v175, v88 offset:2272
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v43, v88 offset:2464
	ds_load_u16_d16_hi v176, v88 offset:2528
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v44, v88 offset:2720
	ds_load_u16_d16_hi v177, v88 offset:2784
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v125, 1, v118
	v_mov_b16_e32 v118.l, v41.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v45, v88 offset:2976
	ds_load_u16_d16_hi v178, v88 offset:3040
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v46, v88 offset:3232
	ds_load_u16_d16_hi v179, v88 offset:3296
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v47, v88 offset:3488
	ds_load_u16_d16_hi v180, v88 offset:3552
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v48, v88 offset:3744
	ds_load_u16_d16_hi v181, v88 offset:3808
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v49, v88 offset:4000
	ds_load_u16_d16_hi v182, v88 offset:4064
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v118, 1, v118
	v_mov_b32_e32 v98, v121
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v122, v157, v119
	v_sub_f32_e32 v124, v150, v119
	v_sub_f32_e32 v128, v154, v119
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[0:7], v[32:39], v[130:137], v[0:7]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v138, v158, v119
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v121, v122
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v143, v143, v119
	v_sub_f32_e32 v144, v144, v119
	v_sub_f32_e32 v140, v145, v119
	v_sub_f32_e32 v142, v147, v119
	v_sub_f32_e32 v147, v152, v119
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v143, v143
	v_exp_f32_e32 v144, v144
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_perm_b32 v32, v126, v51, v115
	v_perm_b32 v33, v126, v51, v116
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v121, 0, v121, s15
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v123, v149, v119
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v41, v41
	v_permlanex16_b32 v35, v52, s40, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v122, v123
	v_exp_f32_e32 v123, v124
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v143, 0, v143, s20
	v_cndmask_b32_e64 v144, 0, v144, s5
	v_cndmask_b32_e64 v122, 0, v122, s13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v123, 0, v123, s11
.Ltmp33:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v122, v123
.Ltmp34:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v127, v153, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v50, v50, v125, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v124, v127
	v_exp_f32_e32 v127, v128
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v53.h, 0x7fff, v50.h, s3
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s3, s41, 32
	s_cmpk_lt_u32 s41, 0x7e0
	s_mov_b32 s41, s3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v124, 0, v124, s10
	v_cndmask_b32_e64 v125, 0, v127, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v124, v125
.Ltmp36:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v129, v155, v119
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v128, v129
	v_exp_f32_e32 v129, v138
	v_exp_f32_e32 v138, v140
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v127, 0, v128, s8
	v_cndmask_b32_e64 v128, 0, v129, s9
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v55, v156, v119
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v129, 0, v138, s18
.Ltmp37:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v127, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp38:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v55, v55
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v55, 0, v55, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp39:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v55, v121
	v_add_f32_e32 v121, v143, v144
.Ltmp40:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v141, v146, v119
	v_sub_f32_e32 v146, v151, v119
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v36
	v_dual_add_f32 v36, v37, v38 :: v_dual_sub_f32 v145, v148, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v140, v141
	v_exp_f32_e32 v141, v142
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v34, v36
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp44:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v142, v145
	v_exp_f32_e32 v145, v146
	v_exp_f32_e32 v146, v147
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v34, v35, v52, v115
	v_perm_b32 v35, v35, v52, v116
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v138, 0, v140, s16
	v_cndmask_b32_e64 v140, 0, v141, s14
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v141, 0, v142, s12
	v_cndmask_b32_e64 v142, 0, v145, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v145, 0, v146, s7
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v39, v129, v138
	v_add_f32_e32 v51, v140, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v55, v142, v145
	v_add_f32_e32 v37, v39, v51
.Ltmp46:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v39, v41, v118, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v55, v121
.Ltmp48:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v54.h, 0x7fff, v39.h, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp50:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v39, v54, s40, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v36, v37
.Ltmp52:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v37, v53, s40, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v38, v39, v54, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v50, v41
.Ltmp54:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v36, v37, v53, v115
	v_perm_b32 v37, v37, v53, v116
	v_perm_b32 v39, v39, v54, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v50, v50 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[167:174], v[32:39], v[24:31]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[42:49], v[32:39], v[16:23]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v50
.Ltmp58:
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[8:15], v[159:166], v[32:39], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[175:182], v[32:39], v[0:7]
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v41, v120, v139
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	ds_bpermute_b32 v32, v89, v41
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
	v_mul_lo_u32 v32, s57, v68
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
	s_mul_i32 s0, s57, s39
	v_add_nc_u32_e32 v34, v32, v73
	v_add_nc_u32_e32 v32, s0, v32
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s57, v73
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s5, s63, 0xffff
	s_mov_b32 s4, s62
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v34, v34, s0, 2
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v37, v32, v73, 2
	v_add_lshl_u32 v38, v32, v85, 2
	v_add_lshl_u32 v39, v32, v84, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s57, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	s_clause 0x2
	buffer_store_b32 v24, v37, s[4:7], 0 offen
	buffer_store_b32 v25, v38, s[4:7], 0 offen
	buffer_store_b32 v26, v39, s[4:7], 0 offen
	v_add_lshl_u32 v24, v32, v83, 2
	v_add_lshl_u32 v25, v32, v82, 2
	v_add_lshl_u32 v26, v32, v81, 2
	v_add_lshl_u32 v37, v32, v80, 2
	v_add_lshl_u32 v38, v32, v79, 2
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
	v_add_lshl_u32 v24, v32, v77, 2
	v_add_lshl_u32 v25, v32, v76, 2
	v_add_lshl_u32 v26, v32, v75, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v27, v32, v74, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_lshl_u32 v28, v32, v72, 2
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 32, v73
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_clause 0x2
	buffer_store_b32 v16, v24, s[4:7], 0 offen
	buffer_store_b32 v17, v25, s[4:7], 0 offen
	buffer_store_b32 v18, v26, s[4:7], 0 offen
	v_add_lshl_u32 v17, v32, v71, 2
	v_cndmask_b32_e32 v16, 0x80000000, v28, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s57, v33
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v19, v27, s[4:7], 0 offen
	v_add_lshl_u32 v18, v32, v70, 2
	v_add_lshl_u32 v19, v32, v69, 2
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
	v_or_b32_e32 v35, 48, v73
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v9, v16, s[4:7], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v16, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s57, v35
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
	v_or_b32_e32 v36, 62, v78
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
.Ltmp59:
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
		.amdhsa_next_free_vgpr 183
		.amdhsa_next_free_sgpr 76
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
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_vgpr, 183
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.numbered_sgpr, 76
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11680
; TotalNumSgprs: 78
; NumVgprs: 183
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 78
; NumVGPRsForWavesPerEU: 183
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
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
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
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
    .sgpr_count:     78
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     183
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
