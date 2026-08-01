	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b128 s[56:59], s[0:1], 0x60
	v_dual_mov_b32 v41, 0x5410 :: v_dual_lshlrev_b32 v102, 4, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v38, 1, v0
	s_clause 0x1
	s_load_b256 s[36:43], s[0:1], 0x0
	s_load_b64 s[4:5], s[0:1], 0x70
	v_dual_mov_b32 v43, 0x7632 :: v_dual_and_b32 v36, 16, v102
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s2, 5
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s6, v38
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s7, s6, s2
	v_dual_mov_b32 v44, 0x6420 :: v_dual_and_b32 v39, 15, v0
	s_mov_b32 s63, 0x31027000
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v3
	s_mov_b32 s62, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[64:65], s[0:1], 0x20
	s_load_b128 s[52:55], s[0:1], 0x30
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v105, 0xff800000
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[88:89], null, s56, v38, v[36:37]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s29, s56, v36
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s61, s37, 0xffff
	s_mov_b32 s60, s36
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	v_dual_mov_b32 v27, v24 :: v_dual_and_b32 v48, 1, v0
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[1:2], null, s56, s7, v[88:89]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, vcc_lo, s29
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v42, 0xff800000 :: v_dual_lshlrev_b32 v49, 1, v0
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	v_dual_mov_b32 v29, v24 :: v_dual_and_b32 v50, 24, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s1
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s1, 0, v48
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v47, v0, 4, 1
	v_mov_b32_e32 v31, v24
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[32:35], v1, s[60:63], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v1, v38, 16, v39
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s61, s43, 0xffff
	s_mov_b32 s60, s42
	v_xor_b32_e32 v107, v102, v50
	v_and_b32_e32 v50, 24, v49
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v103, s7, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s6, v1
	v_cndmask_b32_e64 v52, 0x7632, v41, s1
	v_mov_b32_e32 v45, 0x7531
	v_dual_mov_b32 v26, v24 :: v_dual_lshlrev_b32 v37, 3, v0
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v2, 1, v103
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v51, v49, 30, v47
	v_lshl_add_u32 v108, v39, 1, 0
	v_lshl_or_b32 v110, v39, 5, v50
	v_cndmask_b32_e64 v39, 0x5410, v43, s1
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_lshl_or_b32 v50, v52, 8, v52
	v_dual_mov_b32 v28, v24 :: v_dual_and_b32 v37, 56, v37
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v46, 3, v0
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v40, v1, s[60:63], 0 offen
	v_dual_mov_b32 v30, v24 :: v_dual_lshlrev_b32 v109, 2, v51
	v_dual_mov_b32 v19, v24 :: v_dual_and_b32 v50, 0x760032, v50
	v_cndmask_b32_e64 v44, 0x7531, v44, s1
	v_lshl_or_b32 v39, v39, 8, v39
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s8, s3, 0x10007
	v_mad_u64_u32 v[89:90], null, s5, v38, v[36:37]
	v_mov_b32_e32 v16, v24
	s_add_i32 s8, s3, s8
	v_cndmask_b32_e64 v45, 0x6420, v45, s1
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v112, 4, v109
	v_lshl_or_b32 v44, v44, 8, v44
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s4, s3
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s4, s57, v37
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[90:91], null, s57, v46, v[37:38]
	v_lshl_or_b32 v36, v50, 4, v50
	v_and_b32_e32 v37, 0x760032, v39
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s0, 4
	v_dual_mov_b32 v25, v24 :: v_dual_and_b32 v106, 16, v0
	v_dual_mov_b32 v23, v24 :: v_dual_and_b32 v38, 0x750031, v44
	v_dual_mov_b32 v13, v24 :: v_dual_and_b32 v120, 0x7060302, v36
	v_lshl_or_b32 v45, v45, 8, v45
	v_lshl_or_b32 v36, v37, 4, v37
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s7, s0, 14
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s0, s59, s0
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s6, s5, s6
	s_and_b32 s53, s53, 0xffff
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v18, v24 :: v_dual_and_b32 v39, 0x750031, v45
	v_dual_mov_b32 v22, v24 :: v_dual_and_b32 v121, 0x7060302, v36
	s_mov_b32 s69, s53
	s_add_i32 s53, s0, s6
	v_lshl_or_b32 v37, v38, 4, v38
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v106
	v_mov_b32_e32 v15, v24
	v_lshl_or_b32 v38, v39, 4, v39
	v_mov_b32_e32 v8, v24
	v_and_b32_e32 v122, 0x7050301, v37
	v_cndmask_b32_e64 v41, 0x1054, v41, s0
	v_cndmask_b32_e64 v43, 0x3276, v43, s0
	v_mov_b32_e32 v1, v24
	v_and_b32_e32 v123, 0x7050301, v38
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s9, s58, 0x3fb8aa3b
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[91:92], null, s57, 24, v[90:91]
	v_dual_mov_b32 v17, v24 :: v_dual_lshlrev_b32 v48, 6, v48
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s8, s8, 0x80000
	v_xor_b32_e32 v51, 8, v107
	s_sext_i32_i16 s8, s8
	v_xor_b32_e32 v52, 24, v110
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s8, s8, 10
	v_and_or_b32 v111, v49, 60, v48
	v_xor_b32_e32 v48, 8, v110
	v_xor_b32_e32 v49, 16, v110
	s_and_b32 s8, s8, 0xfffff800
	s_mov_b32 s68, s52
	s_add_i32 s52, s8, s7
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v20, v24 :: v_dual_add_nc_u32 v117, 0, v49
	v_dual_mov_b32 v21, v24 :: v_dual_add_nc_u32 v114, 0, v51
	v_dual_mov_b32 v9, v24 :: v_dual_add_nc_u32 v116, 0, v48
	v_dual_mov_b32 v11, v24 :: v_dual_add_nc_u32 v118, 0, v52
	v_dual_mov_b32 v12, v24 :: v_dual_mov_b32 v125, 0xff800000
	v_mov_b32_e32 v14, v24
	v_mov_b32_e32 v0, v24
	v_mov_b32_e32 v2, v24
	v_mov_b32_e32 v4, v24
	v_mov_b32_e32 v6, v24
	v_xor_b32_e32 v113, 64, v111
	v_or_b32_e32 v119, s52, v47
	v_mov_b16_e32 v104.l, 0
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
	s_and_b32 s65, s65, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s60, s38
	s_mov_b32 s61, s39
	s_mov_b32 s42, s62
	s_mov_b32 s43, s63
	s_mov_b32 s39, s44
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v44, v109, v32
	ds_bpermute_b32 v32, v112, v32
	ds_bpermute_b32 v36, v109, v33
	ds_bpermute_b32 v33, v112, v33
	ds_bpermute_b32 v39, v109, v34
	ds_bpermute_b32 v34, v112, v34
	ds_bpermute_b32 v37, v109, v35
	ds_bpermute_b32 v35, v112, v35
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v92, v32, v44, s0
	v_cndmask_b32_e64 v94, v44, v32, s0
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v38, 16, v40
	v_lshl_or_b32 v40, v41, 8, v41
	v_lshl_or_b32 v41, v43, 8, v43
	v_mov_b32_e32 v3, v24
	v_mov_b32_e32 v5, v24
	v_dual_mov_b32 v7, v24 :: v_dual_mul_f32 v124, s9, v38
	v_and_b32_e32 v32, 0x540054, v40
	v_and_b32_e32 v38, 0x760076, v41
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v93, v33, v36, s0
	v_cndmask_b32_e64 v95, v36, v33, s0
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v96, v34, v39, s0
	v_lshl_or_b32 v32, v32, 4, v32
	v_lshl_or_b32 v33, v38, 4, v38
	v_mov_b32_e32 v10, v24
	v_mov_b32_e32 v115, v24
	v_cndmask_b32_e64 v98, v39, v34, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v97, v35, v37, s0
	v_cndmask_b32_e64 v99, v37, v35, s0
	v_and_b32_e32 v100, 0x5040504, v32
	v_and_b32_e32 v101, 0x7060706, v33
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_or_b32 s3, s39, s52
	v_or_b32_e32 v48, 10, v119
	v_mad_u64_u32 v[60:61], null, s3, s56, v[88:89]
	v_or_b32_e32 v49, 12, v119
	v_or_b32_e32 v50, 14, v119
	v_or_b32_e32 v51, 16, v119
	v_add_nc_u32_e32 v62, 8, v89
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v63, s57, 3, v90
	v_lshl_add_u32 v64, s57, 4, v90
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s5, s53, s39
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s3, s3, s57
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v137, s39, v48, 1
	v_add_lshl_u32 v138, s39, v49, 1
	v_add_lshl_u32 v139, s39, v50, 1
	v_add_lshl_u32 v140, s39, v51, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v48, v62, s5, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v49, s3, v63, 1
	v_add_lshl_u32 v50, s3, v64, 1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v51, 0x80000000, v60, s29
	v_add_nc_u32_e32 v40, 0, v107
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v144, 0x80000000, v48, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v145, 0x80000000, v49, s4
	v_cndmask_b32_e64 v146, 0x80000000, v50, s4
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[48:51], v51, s[60:63], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v32, s44 :: v_dual_add_nc_u32 v41, 0, v110
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v61, s5, v89, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v33, s45
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v59, 0, v102
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v142, 0x80000000, v61, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v67, s3, v90, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v34, s46 :: v_dual_mov_b32 v35, s47
	v_dual_mov_b32 v36, s48 :: v_dual_mov_b32 v37, s49
	v_dual_mov_b32 v38, s50 :: v_dual_mov_b32 v39, s51
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v68, s3, v91, 1
	v_cndmask_b32_e64 v67, 0x80000000, v67, s4
	v_or_b32_e32 v44, 2, v119
	v_or_b32_e32 v45, 4, v119
	v_or_b32_e32 v46, 6, v119
	v_cndmask_b32_e64 v143, 0x80000000, v68, s4
	v_or_b32_e32 v47, 8, v119
	v_or_b32_e32 v52, 18, v119
	v_or_b32_e32 v53, 20, v119
	v_or_b32_e32 v56, 26, v119
	v_or_b32_e32 v57, 28, v119
	v_or_b32_e32 v58, 30, v119
	v_or_b32_e32 v54, 22, v119
	v_or_b32_e32 v55, 24, v119
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v43, s39, v119, 1
	v_add_lshl_u32 v87, s39, v44, 1
	v_add_lshl_u32 v134, s39, v45, 1
	v_add_lshl_u32 v135, s39, v46, 1
	v_add_lshl_u32 v136, s39, v47, 1
	v_add_lshl_u32 v52, s39, v52, 1
	v_add_lshl_u32 v53, s39, v53, 1
	v_add_lshl_u32 v56, s39, v56, 1
	v_add_lshl_u32 v57, s39, v57, 1
	v_add_lshl_u32 v58, s39, v58, 1
	v_add_lshl_u32 v54, s39, v54, 1
	v_add_lshl_u32 v141, s39, v55, 1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v44.h, v104.l
	v_mov_b16_e32 v45.h, v104.l
	v_mov_b16_e32 v47.h, v104.l
	v_mov_b16_e32 v64.h, v104.l
	v_mov_b16_e32 v66.h, v104.l
	v_mov_b16_e32 v46.h, v104.l
	v_mov_b16_e32 v55.h, v104.l
	v_mov_b16_e32 v65.h, v104.l
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v40, v[48:49]
	ds_store_b64 v114, v[50:51]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[48:51], v41 offset1:1
	ds_load_2addr_stride64_b64 v[60:63], v116 offset1:1
	ds_load_2addr_stride64_b64 v[83:86], v117 offset1:1
	ds_load_2addr_stride64_b64 v[126:129], v118 offset1:1
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[130:133], v67, s[40:43], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[67:74], v[48:49], v[92:93], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[75:82], v[50:51], v[92:93], v[32:39] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[38:41], v145, s[40:43], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[67:74], v[60:61], v[96:97], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[75:82], v[62:63], v[96:97], v[75:82] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[48:51], v146, s[40:43], 0 offen
	buffer_load_b128 v[60:63], v143, s[40:43], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[67:74], v[83:84], v[94:95], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[75:82], v[85:86], v[94:95], v[75:82] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[67:74], v[126:127], v[98:99], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[75:82], v[128:129], v[98:99], v[75:82] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v32, v67
	v_cvt_f32_i32_e32 v33, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v34, v69
	v_cvt_f32_i32_e32 v35, v70
	v_cvt_f32_i32_e32 v36, v71
	v_cvt_f32_i32_e32 v37, v72
	v_cvt_f32_i32_e32 v67, v73
	v_cvt_f32_i32_e32 v83, v74
	v_cvt_f32_i32_e32 v84, v75
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x1
	buffer_load_b128 v[68:71], v142, s[68:71], 0 offen
	buffer_load_b128 v[72:75], v144, s[68:71], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xf
	buffer_load_u16 v85, v43, s[64:67], 0 offen
	buffer_load_u16 v86, v87, s[64:67], 0 offen
	buffer_load_u16 v87, v134, s[64:67], 0 offen
	buffer_load_u16 v126, v135, s[64:67], 0 offen
	buffer_load_u16 v127, v136, s[64:67], 0 offen
	buffer_load_u16 v128, v137, s[64:67], 0 offen
	buffer_load_u16 v129, v138, s[64:67], 0 offen
	buffer_load_u16 v134, v139, s[64:67], 0 offen
	buffer_load_u16 v135, v140, s[64:67], 0 offen
	buffer_load_u16 v52, v52, s[64:67], 0 offen
	buffer_load_u16 v53, v53, s[64:67], 0 offen
	buffer_load_u16 v136, v54, s[64:67], 0 offen
	buffer_load_u16 v137, v141, s[64:67], 0 offen
	buffer_load_u16 v56, v56, s[64:67], 0 offen
	buffer_load_u16 v57, v57, s[64:67], 0 offen
	buffer_load_u16 v58, v58, s[64:67], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v81, v81
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v140, v124, v34
	v_mul_f32_e32 v83, v124, v83
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v82, v82
	v_mul_f32_e32 v139, v124, v33
	v_mul_f32_e32 v141, v124, v35
	v_mul_f32_e32 v143, v124, v37
	v_mul_f32_e32 v144, v124, v67
	v_mul_f32_e32 v35, v124, v79
	v_mul_f32_e32 v67, v124, v81
	v_mul_f32_e32 v138, v124, v32
	v_mul_f32_e32 v84, v124, v84
	v_mul_f32_e32 v32, v124, v77
	v_mul_f32_e32 v33, v124, v78
	v_mul_f32_e32 v43, v124, v82
	v_cvt_f32_i32_e32 v76, v76
	v_mul_f32_e32 v142, v124, v36
	v_cvt_f32_i32_e32 v80, v80
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(21)
	ds_store_b128 v59, v[130:133]
	s_waitcnt vmcnt(20)
	ds_store_b128 v59, v[38:41] offset:1024
	s_waitcnt vmcnt(19)
	ds_store_b128 v59, v[48:51] offset:2048
	s_waitcnt vmcnt(18)
	ds_store_b128 v59, v[60:63] offset:3072
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v37, v124, v76
	v_mul_f32_e32 v36, v124, v80
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(17) lgkmcnt(0)
	.loc	1 879 36                        ; attention.py:879:36
	v_dual_cndmask_b32 v38, 0xff80ff80, v68 :: v_dual_cndmask_b32 v41, 0xff80ff80, v69
	s_waitcnt vmcnt(16)
	v_dual_cndmask_b32 v48, 0xff80ff80, v71 :: v_dual_cndmask_b32 v49, 0xff80ff80, v72
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v60, 16, v86
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v62, 16, v126
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v104.h, v38.l
	v_dual_cndmask_b32 v51, 0xff80ff80, v70 :: v_dual_cndmask_b32 v50, 0xff80ff80, v73
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v59, 16, v85
	v_lshlrev_b32_e32 v61, 16, v87
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v73, v41, v38, v120
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v39, 16, v53
	v_lshlrev_b32_e32 v82, 16, v128
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v104
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v53, 16, v56
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v71, 16, v57
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v57, 0xffff0000, v41
	v_and_b32_e32 v56, 0xffff0000, v38
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v38, v41, v38, v121
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v70, 16, v58
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v58, 0xffff0000, v49
	v_mov_b16_e32 v104.h, v41.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v57
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v72, 0xffff0000, v50
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v56
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v56, v109, v73
	ds_bpermute_b32 v57, v112, v38
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v58
	v_cmp_neq_f32_e64 s12, 0xff800000, v104
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s8, vcc_lo, s6
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v104.h, v49.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v72
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v72, 0, 1, s8
	s_and_b32 s9, vcc_lo, s3
	s_and_b32 s6, vcc_lo, s7
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v104
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v104.h, v50.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s12, vcc_lo, s12
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v69, 0xff80ff80, v74, vcc_lo
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v74, v48, v51, v120
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v38, 0, 1, s9
	v_cndmask_b32_e64 v73, 0, 1, s6
	v_mov_b16_e32 v44.l, v72.l
	v_cndmask_b32_e64 v72, 0, 1, s12
	s_and_b32 s10, vcc_lo, s5
	s_and_b32 s5, vcc_lo, s11
	s_and_b32 s7, vcc_lo, s3
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v104
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b32_e32 v68, 0xff80ff80, v75, vcc_lo
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v75, v48, v51, v121
	ds_bpermute_b32 v58, v109, v74
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v74, 0, 1, s5
	v_mov_b16_e32 v45.l, v73.l
	v_lshlrev_b16 v34.h, 8, v38.l
	v_lshlrev_b16 v38.l, 8, v44.l
	v_mov_b16_e32 v44.l, v72.l
	v_cndmask_b32_e64 v72, 0, 1, s7
	s_and_b32 s11, vcc_lo, s3
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v77, v112, v75
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v46.l, v74.l
	v_lshlrev_b16 v38.h, 8, v45.l
	v_or_b16 v75.h, v44.l, v38.l
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v73, v57, v56, s0
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v38.l, v72.l
	v_cndmask_b32_e64 v72, 0, 1, s11
	v_cndmask_b32_e64 v41, 0, 1, s10
	v_lshlrev_b16 v41.h, 8, v46.l
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v74, 16, v73
	v_and_b32_e32 v73, 0xffff0000, v73
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v76.l, v38.l, v38.h
	v_mov_b16_e32 v38.l, v72.l
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v87, 16, v134
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v72, 0x3fb8aa3b, v74
	v_mul_f32_e32 v74, 0x3fb8aa3b, v73
	v_cndmask_b32_e64 v56, v56, v57, s0
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v76.h, v38.l, v41.h
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v38, v50, v49, v120
	v_perm_b32 v49, v50, v49, v121
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v72, v138, v59
	v_fmac_f32_e32 v74, v139, v60
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v50, v68, v69, v120
	ds_bpermute_b32 v59, v109, v38
	ds_bpermute_b32 v60, v112, v49
	v_perm_b32 v57, v68, v69, v121
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v63, 16, v127
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v127, v109, v50
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v78, v77, v58, s0
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v104.h, v51.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v128, v112, v57
	v_cndmask_b32_e64 v57, v58, v77, s0
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v75.l, v41.l, v34.h
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	ds_load_u16_d16 v34, v108 offset:512
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v38, v60, v59, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v50, 16, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v54, 16, v52
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v38, 0xffff0000, v38
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v77, 0x3fb8aa3b, v50 :: v_dual_lshlrev_b32 v52, 16, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v81, 0x3fb8aa3b, v38 :: v_dual_lshlrev_b32 v40, 16, v136
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v77, v142, v63
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v49, 0xffff0000, v78
	v_lshlrev_b32_e32 v79, 16, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v81, v143, v82 :: v_dual_mul_f32 v78, 0x3fb8aa3b, v49
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v73, 0x3fb8aa3b, v79 :: v_dual_lshlrev_b32 v86, 16, v129
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v49, v128, v127, s0
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v58, 16, v56
	v_and_b32_e32 v56, 0xffff0000, v56
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v73, v140, v61 :: v_dual_lshlrev_b32 v126, 16, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v85, 0x3fb8aa3b, v58 :: v_dual_lshlrev_b32 v50, 16, v49
	v_cndmask_b32_e64 v58, v59, v60, s0
	v_dual_mul_f32 v82, 0x3fb8aa3b, v56 :: v_dual_lshlrev_b32 v59, 16, v57
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v49, 0xffff0000, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v79, 0x3fb8aa3b, v50
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v57, 0xffff0000, v57
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v85, v84, v126
	v_fmac_f32_e32 v82, v37, v54
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v80, 0x3fb8aa3b, v49 :: v_dual_lshlrev_b32 v37, 16, v58
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v79, v144, v86 :: v_dual_mul_f32 v86, 0x3fb8aa3b, v57
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v54, 0xffff0000, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v80, v83, v87 :: v_dual_mul_f32 v87, 0x3fb8aa3b, v37
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_cndmask_b32_e64 v84, v127, v128, s0
	v_dual_mul_f32 v83, 0x3fb8aa3b, v59 :: v_dual_mul_f32 v126, 0x3fb8aa3b, v54
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v86, v33, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v35, v52
	v_dual_fmac_f32 v83, v32, v39 :: v_dual_and_b32 v52, 0xffff0000, v48
	v_fmac_f32_e32 v78, v141, v62
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v50, v108 offset:608
	ds_load_u16_d16 v49, v108 offset:352
	ds_load_u16_d16 v38, v108 offset:1536
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v52
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v52, 0xffff0000, v69
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s15, vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v52
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v52, 0xffff0000, v68
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v104
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v104.h, v48.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s14, vcc_lo, s13
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v52
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v52, 0xffff0000, v51
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v51, 0, 1, s15
	s_and_b32 s20, vcc_lo, s3
	s_and_b32 s13, vcc_lo, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v52
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v45.l, v51.l
	v_cndmask_b32_e64 v48, 0, 1, s13
	s_and_b32 s16, vcc_lo, s17
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v104
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v104.h, v69.l
	v_lshlrev_b32_e32 v69, 16, v84
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v52, 0, 1, s16
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v84, 0xffff0000, v84
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s19, vcc_lo, s17
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v104
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	v_mul_f32_e32 v69, 0x3fb8aa3b, v69
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v104.h, v68.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v126, v36, v53
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v44.l, v52.l
	v_cndmask_b32_e64 v53, 0, 1, s14
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v69, v67, v71
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v67, 0, 1, s20
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v71, 0x3fb8aa3b, v84
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v84, 0, 1, s19
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v104
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v32.h, 8, v44.l
	v_lshlrev_b16 v33.h, 8, v45.l
	v_mov_b16_e32 v44.l, v67.l
	.loc	1 880 25 is_stmt 1              ; attention.py:880:25
	v_fmac_f32_e32 v71, v43, v70
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v43.l, v84.l
	s_and_b32 s18, vcc_lo, s3
	s_and_b32 s17, vcc_lo, s17
	v_mov_b16_e32 v46.l, v53.l
	v_mov_b16_e32 v47.l, v48.l
	v_or_b16 v67.l, v44.l, v32.h
	v_cndmask_b32_e64 v68, 0, 1, s18
	v_or_b16 v67.h, v43.l, v33.h
	v_cndmask_b32_e64 v70, 0, 1, s17
	s_waitcnt lgkmcnt(3)
	v_lshlrev_b16 v34.h, 8, v46.l
	v_lshlrev_b16 v40.h, 8, v47.l
	v_mov_b16_e32 v43.l, v68.l
	v_perm_b32 v68, v67, v75, v122
	v_perm_b32 v67, v67, v75, v123
	v_mov_b16_e32 v44.l, v70.l
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v42
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v43.l, v43.l, v34.h
	ds_bpermute_b32 v68, v109, v68
	ds_bpermute_b32 v67, v112, v67
	v_or_b16 v43.h, v44.l, v40.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v62, v108 offset:1600
	ds_load_u16_d16 v39, v108 offset:1792
	ds_load_u16_d16 v63, v108 offset:1856
	ds_load_u16_d16 v35, v108 offset:768
	ds_load_u16_d16 v59, v108 offset:832
	ds_load_u16_d16 v36, v108 offset:1024
	ds_load_u16_d16 v60, v108 offset:1088
	ds_load_u16_d16 v37, v108 offset:1280
	ds_load_u16_d16 v61, v108 offset:1344
	ds_load_u16_d16 v58, v108 offset:576
	ds_load_u16_d16 v33, v108 offset:256
	ds_load_u16_d16 v32, v108
	ds_load_u16_d16 v40, v108 offset:32
	ds_load_u16_d16 v56, v108 offset:64
	ds_load_u16_d16 v57, v108 offset:320
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v49, v108 offset:480
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v58, v108 offset:704
	ds_load_u16_d16_hi v62, v108 offset:1728
	ds_load_u16_d16_hi v39, v108 offset:1920
	ds_load_u16_d16_hi v63, v108 offset:1984
	ds_load_u16_d16 v48, v108 offset:96
	ds_load_u16_d16_hi v35, v108 offset:896
	ds_load_u16_d16_hi v59, v108 offset:960
	ds_load_u16_d16 v51, v108 offset:864
	ds_load_u16_d16_hi v36, v108 offset:1152
	ds_load_u16_d16_hi v60, v108 offset:1216
	ds_load_u16_d16 v52, v108 offset:1120
	ds_load_u16_d16_hi v37, v108 offset:1408
	ds_load_u16_d16_hi v61, v108 offset:1472
	ds_load_u16_d16 v53, v108 offset:1376
	ds_load_u16_d16_hi v38, v108 offset:1664
	ds_load_u16_d16 v54, v108 offset:1632
	.loc	1 881 25                        ; attention.py:881:25
	v_perm_b32 v70, v43, v76, v122
	v_perm_b32 v43, v43, v76, v123
	v_cndmask_b32_e64 v75, v67, v68, s0
	v_cndmask_b32_e64 v67, v68, v67, s0
	ds_bpermute_b32 v70, v109, v70
	ds_bpermute_b32 v43, v112, v43
	v_and_b32_e32 v129, 0x1000000, v75
	v_and_b32_e32 v127, 1, v67
	v_and_b32_e32 v68, 1, v75
	v_and_b32_e32 v76, 0x100, v75
	v_and_b32_e32 v84, 0x100, v67
	v_cmp_eq_u32_e64 s34, 0, v129
	v_cmp_eq_u32_e64 s28, 1, v127
	v_cmp_eq_u32_e64 s30, 1, v68
	v_cmp_eq_u32_e64 s31, 0, v76
	v_cmp_eq_u32_e64 s27, 0, v84
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v129, v78, 0xff800000, s34
	v_cndmask_b32_e64 v78, 0xff800000, v85, s28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v84, v82, 0xff800000, s27
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v128, 0x1000000, v67
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v130, v43, v70, s0
	v_cndmask_b32_e64 v43, v70, v43, s0
	v_cmp_eq_u32_e64 s26, 0, v128
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v128, v74, 0xff800000, s31
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v85, 0x1000000, v130
	v_and_b32_e32 v68, 0x100, v130
	v_and_b32_e32 v70, 1, v43
	v_and_b32_e32 v74, 0x1000000, v43
	v_and_b32_e32 v127, 0x10000, v130
	v_cmp_eq_u32_e64 s38, 0, v85
	v_cmp_eq_u32_e64 s36, 0, v68
	v_cmp_eq_u32_e64 s23, 1, v70
	v_cmp_eq_u32_e64 s22, 0, v74
	v_cmp_eq_u32_e64 s37, 0, v127
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v85, v80, 0xff800000, s38
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v75, 0x10000, v75
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v81, v81, 0xff800000, s36
	v_cndmask_b32_e64 v74, v71, 0xff800000, s22
	v_cndmask_b32_e64 v79, v79, 0xff800000, s37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s33, 0, v75
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v75, 0xff800000, v87, s23
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v68, v79, v85, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v131, v73, 0xff800000, s33
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v67, 0x10000, v67
	v_cmp_eq_u32_e64 s25, 0, v67
	v_and_b32_e32 v67, 1, v130
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v82, v83, 0xff800000, s25
	v_cndmask_b32_e64 v83, v86, 0xff800000, s26
	v_cndmask_b32_e64 v86, 0xff800000, v72, s30
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v72, 0x100, v43
	v_and_b32_e32 v43, 0x10000, v43
	v_cmp_eq_u32_e64 s35, 1, v67
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v130, v84, v82, v83
	v_max_f32_e32 v132, v86, v128
.Ltmp4:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s24, 0, v72
	v_cmp_eq_u32_e64 s21, 0, v43
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v77, 0xff800000, v77, s35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v76, v126, 0xff800000, s24
	v_cndmask_b32_e64 v73, v69, 0xff800000, s21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v67, v129, v77, v81
	v_max3_f32 v43, v75, v76, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max3_f32 v67, v132, v131, v67
	v_max3_f32 v43, v130, v43, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v43, v67, v68, v43
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v67, v43, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v126, v42, v43, v67
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v128, v126
	v_sub_f32_e32 v68, v86, v126
	v_sub_f32_e32 v70, v131, v126
	v_sub_f32_e32 v72, v77, v126
	v_sub_f32_e32 v87, v79, v126
	v_sub_f32_e32 v69, v129, v126
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v87, v87
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_sub_f32_e32 v67, v42, v126
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v81, v126
	v_sub_f32_e32 v80, v85, v126
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v127, v67
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_1)
	v_exp_f32_e32 v80, v80
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v42, v43, 0, s31
	v_cndmask_b32_e64 v43, 0, v68, s30
	v_cndmask_b32_e64 v68, v70, 0, s33
	v_cndmask_b32_e64 v70, 0, v72, s35
	v_cndmask_b32_e64 v72, v87, 0, s37
	v_cndmask_b32_e64 v67, v69, 0, s34
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v44.l, v42.h
	v_mov_b16_e32 v45.l, v43.h
	v_mov_b16_e32 v47.l, v68.h
	v_mov_b16_e32 v64.l, v70.h
	v_mov_b16_e32 v66.l, v72.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, v71, 0, s36
	v_cndmask_b32_e64 v71, v80, 0, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v46.l, v67.h
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v87, 0, v127, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v44, 1, v44
	v_and_b32_e32 v45, 1, v45
	v_and_b32_e32 v47, 1, v47
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v17, v17, v87 :: v_dual_and_b32 v64, 1, v64
	v_dual_mul_f32 v19, v19, v87 :: v_dual_and_b32 v66, 1, v66
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s30, v42, v42
	v_cmp_o_f32_e64 s31, v43, v43
	v_mov_b16_e32 v55.l, v69.h
	v_mov_b16_e32 v65.l, v71.h
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v31, v31, v87 :: v_dual_and_b32 v46, 1, v46
	v_mul_f32_e32 v29, v29, v87
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v42, v42, v44, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v30, v30, v87
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v43, v43, v45, 0x7fff
	v_cmp_o_f32_e64 s36, v70, v70
	v_cmp_o_f32_e64 s38, v72, v72
	v_add3_u32 v45, v68, v47, 0x7fff
	v_add3_u32 v47, v70, v64, 0x7fff
	v_add3_u32 v70, v72, v66, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v72, v108 offset:2048
	ds_load_u16_d16 v41, v108 offset:288
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s33, v67, v67
	v_cmp_o_f32_e64 s34, v68, v68
	v_and_b32_e32 v55, 1, v55
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v16, v16, v87 :: v_dual_and_b32 v65, 1, v65
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v44, v67, v46, 0x7fff
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s30
	v_cndmask_b16 v42.l, 0x7fff, v43.h, s31
	v_cmp_o_f32_e64 s35, v69, v69
	v_cmp_o_f32_e64 s37, v71, v71
	v_add3_u32 v46, v69, v55, 0x7fff
	v_add3_u32 v55, v71, v65, 0x7fff
	v_cndmask_b16 v43.h, 0x7fff, v44.h, s33
	v_cndmask_b16 v43.l, 0x7fff, v45.h, s34
	v_permlanex16_b32 v45, v42, s72, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v44.h, 0x7fff, v46.h, s35
	v_cndmask_b16 v44.l, 0x7fff, v47.h, s36
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v80, v108 offset:2112
	ds_load_u16_d16 v55, v108 offset:1888
	ds_load_u16_d16_hi v34, v108 offset:640
	ds_load_u16_d16_hi v33, v108 offset:384
	ds_load_u16_d16_hi v32, v108 offset:128
	ds_load_u16_d16_hi v40, v108 offset:160
	ds_load_u16_d16_hi v56, v108 offset:192
	ds_load_u16_d16_hi v48, v108 offset:224
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v41, v108 offset:416
	ds_load_u16_d16_hi v57, v108 offset:448
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v46, v43, s72, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v64, v45, v42, v100
	v_perm_b32 v65, v45, v42, v101
	s_waitcnt lgkmcnt(8)
	v_cndmask_b16 v42.h, 0x7fff, v55.h, s37
	v_cndmask_b16 v42.l, 0x7fff, v70.h, s38
	v_permlanex16_b32 v47, v44, s72, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v66, v46, v43, v100
	v_perm_b32 v67, v46, v43, v101
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v87
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v43, v42, s72, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v68, v47, v44, v100
	v_perm_b32 v69, v47, v44, v101
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v87
	v_mul_f32_e32 v26, v26, v87
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v70, v43, v42, v100
	v_perm_b32 v71, v43, v42, v101
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v87
	v_mul_f32_e32 v28, v28, v87
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v42, v108 offset:544
	ds_load_u16_d16 v43, v108 offset:800
	ds_load_u16_d16 v44, v108 offset:1056
	ds_load_u16_d16 v45, v108 offset:1312
	ds_load_u16_d16 v46, v108 offset:1568
	ds_load_u16_d16 v47, v108 offset:1824
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v42, v108 offset:672
	ds_load_u16_d16_hi v50, v108 offset:736
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v43, v108 offset:928
	ds_load_u16_d16_hi v51, v108 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v44, v108 offset:1184
	ds_load_u16_d16_hi v52, v108 offset:1248
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v45, v108 offset:1440
	ds_load_u16_d16_hi v53, v108 offset:1504
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v46, v108 offset:1696
	ds_load_u16_d16_hi v54, v108 offset:1760
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v47, v108 offset:1952
	ds_load_u16_d16_hi v55, v108 offset:2016
	ds_load_u16_d16_hi v80, v108 offset:2240
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[32:39], v[64:71], v[24:31]
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v33, v84, v128, s0
	v_cndmask_b32_e64 v34, v128, v84, s0
	v_cndmask_b32_e64 v36, v131, v82, s0
	v_cndmask_b32_e64 v38, v78, v86, s0
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v18, v18, v87
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v33, v111, v33
	ds_bpermute_b32 v34, v113, v34
	ds_bpermute_b32 v36, v113, v36
	ds_bpermute_b32 v38, v111, v38
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v20, v20, v87
	v_mul_f32_e32 v21, v21, v87
	v_mul_f32_e32 v22, v22, v87
	v_mul_f32_e32 v23, v23, v87
	v_mul_f32_e32 v8, v8, v87
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v32, v108 offset:2080
	ds_load_u16_d16 v127, v108 offset:2144
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v87
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[40:47], v[64:71], v[16:23]
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v41, v77, v75, s0
	v_cndmask_b32_e64 v43, v81, v76, s0
	v_cndmask_b32_e64 v45, v85, v74, s0
	v_cndmask_b32_e64 v47, v79, v73, s0
	ds_bpermute_b32 v41, v113, v41
	ds_bpermute_b32 v43, v113, v43
	ds_bpermute_b32 v45, v113, v45
	s_waitcnt lgkmcnt(7)
	v_cndmask_b32_e64 v35, v34, v33, s1
	v_cndmask_b32_e64 v33, v33, v34, s1
	v_cndmask_b32_e64 v34, v82, v131, s0
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(5)
	v_max_f32_e32 v40, v38, v38
.Ltmp9:
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v47, v113, v47
	ds_bpermute_b32 v34, v111, v34
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v37, v36, v34, s1
	v_cndmask_b32_e64 v34, v34, v36, s1
	v_cndmask_b32_e64 v36, v86, v78, s0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v78, v78, v126
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v36, v113, v36
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v78, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v78, 0, v78, s28
.Ltmp10:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v39, v36, v36
	v_max_f32_e32 v39, v40, v39
.Ltmp11:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, v75, v77, s0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v75, v75, v126
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v40, v111, v40
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v75, 0, v75, s23
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v75, v75
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v42, v41, v40, s1
	v_cndmask_b32_e64 v40, v40, v41, s1
	v_cndmask_b32_e64 v41, v76, v81, s0
	v_cndmask_b32_e64 v81, v129, v83, s0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v76, v76, v126
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v41, v111, v41
	ds_bpermute_b32 v81, v113, v81
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v76, v76
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v76, v76, 0, s24
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v44, v43, v41, s1
	v_cndmask_b32_e64 v41, v41, v43, s1
	v_cndmask_b32_e64 v43, v74, v85, s0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v74, v74, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v77, v40, v44, v41
.Ltmp13:
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v43, v111, v43
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v74, v74
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v74, v74, 0, s22
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v46, v45, v43, s1
	v_cndmask_b32_e64 v43, v43, v45, s1
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v45, v33, v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_max3_f32 v39, v39, v35, v45
.Ltmp15:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v45, v73, v79, s0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v73, v73, v126
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v45, v111, v45
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v73, v73
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v73, v73, 0, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v73, v73
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_max3_f32 v79, v45, v47, v46
	v_max3_f32 v77, v77, v79, v43
.Ltmp17:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v79, v83, v129, s0
	ds_bpermute_b32 v79, v111, v79
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_max3_f32 v85, v79, v81, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max3_f32 v39, v39, v85, v77
.Ltmp19:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v77, v84, v126
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v84.h, v104.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v77, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v77, v77, 0, s27
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s27, v78, v78
	v_mov_b16_e32 v84.l, v77.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v77, v77
	v_and_b32_e32 v84, 1, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v77, v77, v84, 0x7fff
	v_mov_b16_e32 v84.h, v104.l
	v_mov_b16_e32 v84.l, v78.h
	v_cndmask_b16 v77.h, 0x7fff, v77.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v84, 1, v84
	v_add3_u32 v78, v78, v84, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v77.l, 0x7fff, v78.h, s27
	v_permlanex16_b32 v78, v77, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v135, v78, v77, v100
	v_perm_b32 v136, v78, v77, v101
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v77, v83, v126
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v78.h, v104.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v77, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v77, v77, 0, s26
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v78.l, v77.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v77, v77
	v_and_b32_e32 v78, 1, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v77, v77, v78, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v78, v82, v126
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v82.h, v104.l
	v_cndmask_b16 v77.h, 0x7fff, v77.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v78, v78
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v76, v76
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v78, v78, 0, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v82.l, v78.h
	v_cmp_o_f32_e64 s25, v78, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v82, 1, v82
	v_add3_u32 v78, v78, v82, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v77.l, 0x7fff, v78.h, s25
	v_permlanex16_b32 v78, v77, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v137, v78, v77, v100
	v_perm_b32 v138, v78, v77, v101
	v_mov_b16_e32 v77.h, v104.l
	v_mov_b16_e32 v77.l, v76.h
	v_and_b32_e32 v77, 1, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v76, v76, v77, 0x7fff
	v_mov_b16_e32 v77.h, v104.l
	v_mov_b16_e32 v77.l, v75.h
	v_cndmask_b16 v76.h, 0x7fff, v76.h, s3
	v_cmp_o_f32_e64 s3, v74, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v77, 1, v77
	v_add3_u32 v75, v75, v77, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v76.l, 0x7fff, v75.h, s23
	v_permlanex16_b32 v75, v76, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v139, v75, v76, v100
	v_perm_b32 v140, v75, v76, v101
	v_mov_b16_e32 v75.h, v104.l
	v_mov_b16_e32 v75.l, v74.h
	v_and_b32_e32 v75, 1, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v74, v74, v75, 0x7fff
	v_mov_b16_e32 v75.h, v104.l
	v_mov_b16_e32 v75.l, v73.h
	v_cndmask_b16 v74.h, 0x7fff, v74.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v75, 1, v75
	v_add3_u32 v73, v73, v75, 0x7fff
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v75, v47, v45, s1
	v_cndmask_b32_e64 v45, v45, v47, s1
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v47, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v74.l, 0x7fff, v73.h, s21
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v47, v47 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v73, v74, s72, 0xfedcba98 op_sel:[1,0]
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v47, v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v141, v73, v74, v100
	v_perm_b32 v142, v73, v74, v101
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v73, v36, v38, s1
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v47
.Ltmp27:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v47, v105, v105
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, v38, v36, s1
	v_cndmask_b32_e64 v38, v81, v79, s1
	v_cndmask_b32_e64 v74, v79, v81, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v105, v47, v39
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v12, v12, v87
	v_mul_f32_e32 v14, v14, v87
	v_mul_f32_e32 v15, v15, v87
	v_dual_mul_f32 v2, v2, v87 :: v_dual_sub_f32 v35, v35, v105
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v33, v105
	v_sub_f32_e32 v34, v34, v105
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v4, v4, v87 :: v_dual_max_f32 v47, v125, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_2)
	v_exp_f32_e32 v34, v34
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v87
	v_dual_mul_f32 v11, v11, v87 :: v_dual_sub_f32 v36, v36, v105
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v47, v47, v39
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v73, v105
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v87
	v_mul_f32_e32 v5, v5, v87
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s12
	v_cndmask_b32_e64 v33, 0, v33, s8
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v0, v0, v87
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s16
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v36, v36
.Ltmp28:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v35, v33
.Ltmp29:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v37, v105
	v_sub_f32_e32 v37, v74, v105
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v7, v7, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v37, v37
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s10
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v36, 0, v36, s9
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v13, v13, v87 :: v_dual_add_f32 v36, v39, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[8:15], v[56:63], v[64:71], v[8:15]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s20
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s15
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v33, v36, v33 :: v_dual_add_f32 v34, v35, v34
.Ltmp31:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v38, v105
	v_sub_f32_e32 v38, v40, v105
	v_sub_f32_e32 v40, v45, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v40, v40
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s19
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v87
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s6
	v_cndmask_b32_e64 v40, 0, v40, s14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v37
.Ltmp33:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v42, v105
	v_dual_sub_f32 v39, v41, v105 :: v_dual_mov_b32 v42, v126
	v_dual_sub_f32 v41, v43, v105 :: v_dual_add_f32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v41, v41
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s7
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v39, 0, v39, s5
	v_cndmask_b32_e64 v41, 0, v41, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp34:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v37, v37, v38 :: v_dual_sub_f32 v38, v44, v105
	v_mov_b32_e32 v44, v115
.Ltmp35:
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[0:7], v[48:55], v[64:71], v[0:7]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s11
.Ltmp36:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v38, v38, v39 :: v_dual_sub_f32 v39, v75, v105
.Ltmp37:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v81, v108 offset:2368
	ds_load_u16_d16 v73, v108 offset:2304
	ds_load_u16_d16 v74, v108 offset:2560
	ds_load_u16_d16 v82, v108 offset:2624
	ds_load_u16_d16 v75, v108 offset:2816
	ds_load_u16_d16 v83, v108 offset:2880
	ds_load_u16_d16 v129, v108 offset:2656
	ds_load_u16_d16 v76, v108 offset:3072
	ds_load_u16_d16 v84, v108 offset:3136
	ds_load_u16_d16 v130, v108 offset:2912
	ds_load_u16_d16 v77, v108 offset:3328
	ds_load_u16_d16 v85, v108 offset:3392
	ds_load_u16_d16 v131, v108 offset:3168
	ds_load_u16_d16 v78, v108 offset:3584
	ds_load_u16_d16 v86, v108 offset:3648
	ds_load_u16_d16 v132, v108 offset:3424
	ds_load_u16_d16 v79, v108 offset:3840
	ds_load_u16_d16 v87, v108 offset:3904
	ds_load_u16_d16 v133, v108 offset:3680
	ds_load_u16_d16 v134, v108 offset:3936
	ds_load_u16_d16 v128, v108 offset:2400
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v37, v38
.Ltmp39:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s18
.Ltmp40:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v39, v39, v40 :: v_dual_sub_f32 v40, v46, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp41:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v40, v41
	v_add_f32_e32 v36, v39, v40
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_add_f32 v40, v33, v34 :: v_dual_add_f32 v41, v35, v36
.Ltmp43:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v81, v108 offset:2496
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v74, v108 offset:2688
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v82, v108 offset:2752
	ds_load_u16_d16 v34, v108 offset:2592
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v75, v108 offset:2944
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v83, v108 offset:3008
	ds_load_u16_d16 v35, v108 offset:2848
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v76, v108 offset:3200
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v84, v108 offset:3264
	ds_load_u16_d16 v36, v108 offset:3104
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v77, v108 offset:3456
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v85, v108 offset:3520
	ds_load_u16_d16 v37, v108 offset:3360
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v78, v108 offset:3712
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v86, v108 offset:3776
	ds_load_u16_d16 v38, v108 offset:3616
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v79, v108 offset:3968
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v87, v108 offset:4032
	ds_load_u16_d16 v39, v108 offset:3872
	ds_load_u16_d16_hi v73, v108 offset:2432
	ds_load_u16_d16 v33, v108 offset:2336
	ds_load_u16_d16_hi v72, v108 offset:2176
	ds_load_u16_d16_hi v32, v108 offset:2208
	ds_load_u16_d16_hi v127, v108 offset:2272
	s_waitcnt lgkmcnt(3)
	ds_load_u16_d16_hi v33, v108 offset:2464
	ds_load_u16_d16_hi v128, v108 offset:2528
	ds_load_u16_d16_hi v34, v108 offset:2720
	ds_load_u16_d16_hi v129, v108 offset:2784
	ds_load_u16_d16_hi v35, v108 offset:2976
	ds_load_u16_d16_hi v130, v108 offset:3040
	ds_load_u16_d16_hi v36, v108 offset:3232
	ds_load_u16_d16_hi v131, v108 offset:3296
	ds_load_u16_d16_hi v37, v108 offset:3488
	ds_load_u16_d16_hi v132, v108 offset:3552
	ds_load_u16_d16_hi v38, v108 offset:3744
	ds_load_u16_d16_hi v133, v108 offset:3808
	ds_load_u16_d16_hi v39, v108 offset:4000
	ds_load_u16_d16_hi v134, v108 offset:4064
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v40, v40, v41 :: v_dual_sub_f32 v41, v125, v47
	v_mov_b32_e32 v125, v47
.Ltmp45:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[72:79], v[135:142], v[24:31]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[80:87], v[135:142], v[8:15]
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v43, v40
.Ltmp47:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v115, v40, v43
	s_delay_alu instid0(TRANS32_DEP_1)
.Ltmp50:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v41, 0, v41, s3
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s3, s39, 32
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[32:39], v[135:142], v[16:23]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[127:134], v[135:142], v[0:7]
	.loc	1 818 13                        ; attention.py:818:13
	s_cmpk_lt_u32 s39, 0x7e0
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v115, v44, v41
	s_mov_b32 s39, s3
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	ds_bpermute_b32 v37, v109, v115
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v104.l
	v_mov_b16_e32 v40.h, v104.l
	v_mov_b16_e32 v38.h, v104.l
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v33, 1, v106
	.loc	1 1046 24 is_stmt 0             ; attention.py:1046:24
	v_mul_lo_u32 v32, s57, v103
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s57, v33
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 48, v33
	v_or_b32_e32 v35, 16, v33
	v_or_b32_e32 v34, 32, v33
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s57, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_i32_e64 s3, s57, v35
	v_cmp_gt_i32_e64 s1, s57, v34
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v41, null, v37, v37, v25
	v_div_scale_f32 v42, null, v37, v37, v24
	v_div_scale_f32 v43, null, v37, v37, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v45, v41
	v_rcp_f32_e32 v46, v42
	v_div_scale_f32 v44, null, v37, v37, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v43
	v_div_scale_f32 v49, vcc_lo, v25, v37, v25
	v_rcp_f32_e32 v48, v44
	v_div_scale_f32 v50, s6, v24, v37, v24
	v_fma_f32 v52, -v41, v45, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v53, -v42, v46, 1.0
	v_div_scale_f32 v51, s7, v27, v37, v27
	v_fma_f32 v54, -v43, v47, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v45, v52, v45 :: v_dual_fmac_f32 v46, v53, v46
	v_fma_f32 v55, -v44, v48, 1.0
	v_div_scale_f32 v52, null, v37, v37, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v53, v49, v45
	v_dual_fmac_f32 v47, v54, v47 :: v_dual_fmac_f32 v48, v55, v48
	v_mul_f32_e32 v54, v50, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v58, v52
	v_fma_f32 v59, -v41, v53, v49
	v_div_scale_f32 v63, null, v37, v37, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v60, -v42, v54, v50
	v_mul_f32_e32 v55, v51, v47
	v_fmac_f32_e32 v53, v59, v45
	v_div_scale_f32 v56, s8, v26, v37, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v54, v60, v46
	v_fma_f32 v59, -v52, v58, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v41, -v41, v53, v49
	v_rcp_f32_e32 v49, v63
	v_mul_f32_e32 v57, v56, v48
	v_fma_f32 v42, -v42, v54, v50
	v_fma_f32 v61, -v43, v55, v51
	v_div_fmas_f32 v41, v41, v45, v53
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v58, v59, v58
	v_div_fmas_f32 v42, v42, v46, v54
	v_fma_f32 v62, -v44, v57, v56
	v_fmac_f32_e32 v55, v61, v47
	v_div_fixup_f32 v25, v41, v37, v25
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s6, 0, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v24, v42, v37, v24
	v_fma_f32 v42, -v63, v49, 1.0
	v_fma_f32 v43, -v43, v55, v51
	s_mov_b32 vcc_lo, s7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v45, s9, v29, v37, v29
	v_fmac_f32_e32 v49, v42, v49
	v_fmac_f32_e32 v57, v62, v48
	v_div_fmas_f32 v41, v43, v47, v55
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v25.h
	v_mov_b16_e32 v47.h, v104.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v44, v57, v56
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v43, v44, v48, v57
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v44, 0, v24, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v24, v41, v37, v27
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v27, 1, v38
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v26, v43, v37, v26
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v44.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v38, 0, v24, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v25, v25, v27, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v41, v45, v58
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v24, 1, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v39, s7, v28, v37, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v25.l, v38.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v40.l, v26.h
	v_add3_u32 v27, v44, v24, 0x7fff
	v_cndmask_b16 v24.h, 0x7fff, v25.h, vcc_lo
	v_mov_b16_e32 v25.h, v104.l
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	v_and_b32_e32 v40, 1, v40
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v39, v49
	v_fma_f32 v43, -v52, v41, v45
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v25, 1, v25
	v_cndmask_b16 v24.l, 0x7fff, v27.h, vcc_lo
	v_add3_u32 v27, v26, v40, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v63, v42, v39
	v_fmac_f32_e32 v41, v43, v58
	v_div_scale_f32 v43, null, v37, v37, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v25, v38, v25, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v40, v49
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v38, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v38, v43
	v_fma_f32 v44, -v52, v41, v45
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v39, -v63, v42, v39
	v_div_scale_f32 v40, null, v37, v37, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v41, v44, v58, v41
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v39, v39, v49, v42
	v_fma_f32 v42, -v43, v38, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v45, v40
	v_div_fixup_f32 v29, v41, v37, v29
	v_div_fixup_f32 v28, v39, v37, v28
	v_fmac_f32_e32 v38, v42, v38
	v_div_scale_f32 v39, s7, v31, v37, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v25.l, 0x7fff, v27.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v27, v39, v38
	v_fma_f32 v26, -v40, v45, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v42.h, v104.l
	v_mov_b16_e32 v47.l, v29.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v43, v27, v39
	v_fmac_f32_e32 v45, v26, v45
	v_div_scale_f32 v26, s8, v30, v37, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v42.l, v28.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v27, v44, v38
	v_div_scale_f32 v44, null, v37, v37, v17
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v28, v28
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v43, v27, v39
	v_div_scale_f32 v43, null, v37, v37, v16
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v42, v28, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v39, v38, v27
	v_rcp_f32_e32 v38, v43
	v_mul_f32_e32 v41, v26, v45
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v27, v27, v37, v31
	v_fma_f32 v46, -v40, v41, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v41, v46, v45 :: v_dual_and_b32 v46, 1, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s10, v27, v27
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v26, -v40, v41, v26
	v_rcp_f32_e32 v40, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v39, v29, v46, 0x7fff
	v_mov_b16_e32 v39.l, v27.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v31, -v44, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v31, v40
	v_div_fmas_f32 v26, v26, v45, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v31, -v43, v38, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v45.h, v104.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v29, v26, v37, v30
	v_div_scale_f32 v30, s7, v17, v37, v17
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v26.h, 0x7fff, v39.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v31, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v41, v30, v40
	v_div_scale_f32 v31, s8, v16, v37, v16
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v104.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v45.l, v29.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v44, v41, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v47, v31, v38
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v28, 1, v39
	v_cmp_o_f32_e64 s7, v29, v29
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v46, v40
	v_div_scale_f32 v46, null, v37, v37, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v28, v27, v28, 0x7fff
	v_cndmask_b16 v26.l, 0x7fff, v42.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v27, -v44, v41, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v30, v46
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v45
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v43, v47, v31
	v_div_scale_f32 v44, null, v37, v37, v18
	v_div_fmas_f32 v40, v27, v40, v41
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v45, v38
	v_rcp_f32_e32 v41, v44
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v17, v40, v37, v17
	s_mov_b32 s10, 0x7ffffffe
	v_fma_f32 v31, -v43, v47, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v43.h, v104.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fmas_f32 v31, v31, v38, v47
	v_fma_f32 v38, -v46, v30, 1.0
	v_div_scale_f32 v28, vcc_lo, v19, v37, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v43.l, v17.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v16, v31, v37, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v30, v38, v30
	v_fma_f32 v31, -v44, v41, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v39, v29, v39, 0x7fff
	v_mov_b16_e32 v38.h, v104.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v16, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_dual_mul_f32 v16, v28, v30 :: v_dual_fmac_f32 v41, v31, v41
	v_div_scale_f32 v31, s8, v18, v37, v18
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v27.l, 0x7fff, v39.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v46, v16, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v29.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v31, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v16, v40, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v44, v42, v31
	v_fma_f32 v28, -v46, v16, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v38, v29, v38, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v40, v41
	v_div_scale_f32 v40, null, v37, v37, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v16, v28, v30, v16
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v28, -v44, v42, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v30, v40
	v_div_scale_f32 v31, null, v37, v37, v20
	v_div_fmas_f32 v28, v28, v41, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_mov_b16_e32 v41.h, v104.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v18, v28, v37, v18
	v_fma_f32 v28, -v40, v30, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v28, v30
	v_div_scale_f32 v28, s7, v21, v37, v21
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v41.l, v18.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v28, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v39, v17, v39, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v17, v16, v37, v19
	v_rcp_f32_e32 v19, v31
	v_fma_f32 v43, -v40, v42, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v16.h, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v42, v43, v30
	v_div_scale_f32 v43, null, v37, v37, v23
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v104.l
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v31, v19, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v17.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v40, v42, v28
	v_rcp_f32_e32 v40, v43
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v41, 1, v41
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v19, v29, v19
	v_div_scale_f32 v29, s8, v20, v37, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v16.l, 0x7fff, v38.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v38, 1, v39
	v_add3_u32 v41, v18, v41, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v28, v28, v30, v42
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v18, v18
	v_mov_b16_e32 v18.h, v104.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v39, v29, v19
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v38, v17, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v17, v17
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v21, v28, v37, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v31, v39, v29
	v_fmac_f32_e32 v39, v44, v19
	v_div_scale_f32 v44, null, v37, v37, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v17, -v31, v39, v29
	v_rcp_f32_e32 v30, v44
	v_fma_f32 v29, -v43, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v40, v29, v40
	v_fma_f32 v29, -v44, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v30, v29, v30
	v_div_fmas_f32 v19, v17, v19, v39
	v_div_scale_f32 v28, vcc_lo, v23, v37, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.h, 0x7fff, v38.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v29, s7, v22, v37, v22
	v_div_fixup_f32 v19, v19, v37, v20
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v21, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v21, v28, v40 :: v_dual_mul_f32 v38, v29, v30
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v104.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v18.l, v20.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v31, -v43, v21, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.l, 0x7fff, v41.h, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v39.l, v19.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v21, v31, v40 :: v_dual_and_b32 v18, 1, v18
	v_fma_f32 v31, -v44, v38, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v18, v20, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v43, v21, v28
	v_fmac_f32_e32 v38, v31, v30
	v_div_scale_f32 v31, null, v37, v37, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v28, v40, v21
	v_fma_f32 v28, -v44, v38, v29
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v29, v31
	v_div_scale_f32 v40, null, v37, v37, v8
	s_mov_b32 vcc_lo, s7
	v_div_fmas_f32 v28, v28, v30, v38
	v_rcp_f32_e32 v30, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_add3_u32 v20, v19, v39, 0x7fff
	v_mov_b16_e32 v39.h, v104.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v22, v28, v37, v22
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v28, -v31, v29, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v19, v21, v37, v23
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v22, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v22, s7, v9, v37, v9
	v_fma_f32 v23, -v40, v30, 1.0
	v_fmac_f32_e32 v29, v28, v29
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v18.l, 0x7fff, v20.h, vcc_lo
	v_mov_b16_e32 v20.l, v21.h
	v_mov_b16_e32 v20.h, v104.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v23, v30
	v_mul_f32_e32 v28, v22, v29
	v_div_scale_f32 v23, s8, v8, v37, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v20, 1, v20
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v38, -v31, v28, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v41, v23, v30
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v20, v21, v20, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v28, v38, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v40, v41, v23
	v_div_scale_f32 v38, null, v37, v37, v11
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v19.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v22, -v31, v28, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v42, v30
	v_div_scale_f32 v42, null, v37, v37, v10
	v_rcp_f32_e32 v31, v38
	v_div_fmas_f32 v22, v22, v29, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v23, -v40, v41, v23
	v_rcp_f32_e32 v29, v42
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v19, v19
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v9, v22, v37, v9
	v_div_fmas_f32 v22, v23, v30, v41
	v_div_scale_f32 v23, vcc_lo, v11, v37, v11
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v41.h, v104.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v8, v22, v37, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v30, -v42, v29, 1.0
	v_div_scale_f32 v22, s8, v10, v37, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s6
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v29, v30, v29
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v39
	v_mov_b16_e32 v30.l, v9.h
	v_mov_b16_e32 v30.h, v104.l
	v_mov_b16_e32 v41.l, v8.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v40, v22, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v28, v19, v39, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v38, v31, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v31, v39, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v21, v21
	v_and_b32_e32 v21, 1, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v19, v23, v31 :: v_dual_and_b32 v30, 1, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v28.l, 0x7fff, v20.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v21, v9, v21, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v38, v19, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v19, v39, v31
	v_fma_f32 v39, -v42, v40, v22
	v_fma_f32 v23, -v38, v19, v23
	v_div_scale_f32 v38, null, v37, v37, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v39, v29
	v_div_scale_f32 v39, null, v37, v37, v12
	v_div_fmas_f32 v19, v23, v31, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v23, v38
	v_fma_f32 v22, -v42, v40, v22
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v31, v39
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v11, v19, v37, v11
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v8, v8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v22, v22, v29, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_add3_u32 v9, v8, v30, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v20, -v38, v23, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v40.h, v104.l
	v_cndmask_b16 v21.h, 0x7fff, v21.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v19, -v39, v31, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v40.l, v11.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v23, v20, v23
	v_div_scale_f32 v20, vcc_lo, v13, v37, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v31, v19, v31
	v_div_scale_f32 v19, s7, v12, v37, v12
	v_mul_f32_e32 v8, v20, v23
	v_div_fixup_f32 v10, v22, v37, v10
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v21.l, 0x7fff, v9.h, s8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v29, v19, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v9, 1, v40
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v38, v8, v20
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v22.h, v104.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v39, v29, v19
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v11, v9, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v8, v30, v23
	v_div_scale_f32 v30, null, v37, v37, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v29, v41, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v22.l, v10.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v38, v8, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v19, -v39, v29, v19
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v8, v20, v23, v8
	v_rcp_f32_e32 v20, v30
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v23, null, v37, v37, v14
	v_div_fmas_f32 v19, v19, v31, v29
	v_div_fixup_f32 v8, v8, v37, v13
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_add3_u32 v22, v10, v22, 0x7fff
	v_mov_b16_e32 v29.h, v104.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v11, v19, v37, v12
	v_rcp_f32_e32 v12, v23
	v_fma_f32 v13, -v30, v20, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v9.h, 0x7fff, v9.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v11, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v20, v13, v20
	v_div_scale_f32 v13, s7, v15, v37, v15
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v11.l, v8.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v19, -v23, v12, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v11.h, v104.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v31, v13, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v9.l, 0x7fff, v22.h, vcc_lo
	v_mov_b16_e32 v29.l, v10.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v12, v19, v12
	v_div_scale_f32 v19, s8, v14, v37, v14
	v_fma_f32 v38, -v30, v31, v13
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v11, 1, v11
	v_cmp_o_f32_e64 s9, v8, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v22, v19, v12
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v31, v38, v20
	v_div_scale_f32 v38, null, v37, v37, v1
	v_fma_f32 v39, -v23, v22, v19
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v11, v8, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v8, -v30, v31, v13
	v_rcp_f32_e32 v13, v38
	v_div_scale_f32 v30, null, v37, v37, v0
	v_dual_fmac_f32 v22, v39, v12 :: v_dual_and_b32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v8, v8, v20, v31
	v_rcp_f32_e32 v20, v30
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v10, v29, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v19, -v23, v22, v19
	v_fma_f32 v23, -v38, v13, 1.0
	v_div_fixup_f32 v8, v8, v37, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v10, v10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v31, null, v37, v37, v3
	v_div_fmas_f32 v12, v19, v12, v22
	v_fmac_f32_e32 v13, v23, v13
	v_div_scale_f32 v15, vcc_lo, v1, v37, v1
	v_fma_f32 v19, -v30, v20, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v10, v12, v37, v14
	v_div_scale_f32 v14, s8, v0, v37, v0
	v_mul_f32_e32 v12, v15, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v20, v19, v20
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v19.h, v104.l
	v_cndmask_b16 v11.l, 0x7fff, v29.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v22, -v38, v12, v15
	v_mul_f32_e32 v23, v14, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v19.l, v8.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.h, v104.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v12, v22, v13
	v_fma_f32 v22, -v30, v23, v14
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v19, 1, v19
	v_mov_b16_e32 v29.l, v10.h
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v15, -v38, v12, v15
	v_fmac_f32_e32 v23, v22, v20
	v_rcp_f32_e32 v22, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v19, v8, v19, 0x7fff
	v_and_b32_e32 v29, 1, v29
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v12, v15, v13, v12
	v_fma_f32 v13, -v30, v23, v14
	v_div_scale_f32 v14, null, v37, v37, v2
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v1, v12, v37, v1
	v_div_fmas_f32 v13, v13, v20, v23
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v15, -v31, v22, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v8, v14
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v13, v37, v0
	v_fmac_f32_e32 v22, v15, v22
	v_div_scale_f32 v13, s7, v3, v37, v3
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v15, v10, v29, 0x7fff
	v_cndmask_b16 v19.h, 0x7fff, v19.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v12, v13, v22
	v_fma_f32 v20, -v14, v8, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.l, v1.h
	v_mov_b16_e32 v29.h, v104.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v23, -v31, v12, v13
	v_fmac_f32_e32 v8, v20, v8
	v_div_scale_f32 v20, s8, v2, v37, v2
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v19.l, 0x7fff, v15.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v12, v23, v22 :: v_dual_and_b32 v15, 1, v29
	v_mul_f32_e32 v23, v20, v8
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v10.l, v0.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v13, -v31, v12, v13
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v10.h, v104.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v14, v23, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v15, v1, v15, 0x7fff
	v_cmp_o_f32_e64 s7, v1, v1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v12, v13, v22, v12
	v_div_scale_f32 v13, null, v37, v37, v5
	v_dual_fmac_f32 v23, v29, v8 :: v_dual_and_b32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v3, v12, v37, v3
	v_rcp_f32_e32 v12, v13
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v1, -v14, v23, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v10, v0, v10, 0x7fff
	v_mov_b16_e32 v29.h, v104.l
	v_mov_b16_e32 v14.h, v104.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v1, v1, v8, v23
	v_div_scale_f32 v8, null, v37, v37, v4
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v0.h, 0x7fff, v15.h, s7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v1, v1, v37, v2
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v3, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v3, v8
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v0.l, 0x7fff, v10.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v10, -v13, v12, 1.0
	v_div_scale_f32 v15, null, v37, v37, v7
	v_div_scale_f32 v23, null, v37, v37, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v12, v10, v12
	v_div_scale_f32 v10, vcc_lo, v5, v37, v5
	v_fma_f32 v20, -v8, v3, 1.0
	v_rcp_f32_e32 v22, v15
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v30, v10, v12
	v_div_scale_f32 v31, s7, v4, v37, v4
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v14.l, v2.h
	v_mov_b16_e32 v29.l, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v13, v30, v10
	v_fmac_f32_e32 v3, v20, v3
	v_rcp_f32_e32 v20, v23
	v_fma_f32 v38, -v15, v22, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v14, 1, v14
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v39, v12
	v_mul_f32_e32 v40, v31, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v22, v38, v22
	v_div_scale_f32 v38, s8, v7, v37, v7
	v_fma_f32 v39, -v8, v40, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v23, v20, 1.0
	v_dual_mul_f32 v42, v38, v22 :: v_dual_and_b32 v29, 1, v29
	v_fma_f32 v10, -v13, v30, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v20, v41, v20
	v_div_scale_f32 v41, s9, v6, v37, v6
	v_fmac_f32_e32 v40, v39, v3
	v_fma_f32 v13, -v15, v42, v38
	v_div_fmas_f32 v10, v10, v12, v30
	v_mul_f32_e32 v39, v41, v20
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v8, -v8, v40, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v2, v2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v5, v10, v37, v5
	v_fma_f32 v12, -v23, v39, v41
	v_fmac_f32_e32 v42, v13, v22
	v_div_fmas_f32 v3, v8, v3, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v8, v2, v14, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v39, v12, v20
	v_fma_f32 v2, -v15, v42, v38
	v_div_fixup_f32 v3, v3, v37, v4
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v29, v1, v29, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v4, -v23, v39, v41
	v_div_fmas_f32 v2, v2, v22, v42
	s_mov_b32 vcc_lo, s9
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v12.h, v104.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v4, v4, v20, v39
	v_div_fixup_f32 v2, v2, v37, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v7.l, v5.h
	v_mov_b16_e32 v7.h, v104.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v4, v37, v6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v6.l, v3.h
	v_mov_b16_e32 v6.h, v104.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v10.h, v104.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v8.l, 0x7fff, v29.h, vcc_lo
	v_and_b32_e32 v6, 1, v6
	v_mov_b16_e32 v10.l, v2.h
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v12.l, v4.h
	v_and_b32_e32 v7, 1, v7
	v_add3_u32 v1, v3, v6, 0x7fff
	v_and_b32_e32 v10, 1, v10
	v_cndmask_b32_e64 v15, v19, v9, s0
	v_cndmask_b32_e64 v9, v9, v19, s0
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v19, v32, v36, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v6, 1, v12
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s7
	v_add3_u32 v7, v5, v7, 0x7fff
	v_cmp_o_f32_e64 s6, v5, v5
	v_cmp_o_f32_e64 s7, v3, v3
	v_add3_u32 v3, v4, v6, 0x7fff
	v_add3_u32 v5, v2, v10, 0x7fff
	v_cmp_o_f32_e64 s8, v2, v2
	v_cmp_o_f32_e64 s9, v4, v4
	v_cndmask_b16 v2.h, 0x7fff, v7.h, s6
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s7
	v_cndmask_b32_e64 v4, v24, v26, s0
	v_cndmask_b16 v1.h, 0x7fff, v5.h, s8
	v_cndmask_b16 v1.l, 0x7fff, v3.h, s9
	v_cndmask_b32_e64 v6, v25, v27, s0
	v_cndmask_b32_e64 v7, v18, v16, s0
	v_cndmask_b32_e64 v10, v16, v18, s0
	v_cndmask_b32_e64 v13, v17, v28, s0
	v_cndmask_b32_e64 v16, v2, v0, s0
	v_cndmask_b32_e64 v0, v0, v2, s0
	v_cndmask_b32_e64 v12, v28, v17, s0
	v_cndmask_b32_e64 v14, v11, v21, s0
	v_cndmask_b32_e64 v11, v21, v11, s0
	v_cndmask_b32_e64 v17, v1, v8, s0
	v_cndmask_b32_e64 v1, v8, v1, s0
	s_mov_b32 s6, 0x76543210
	v_cndmask_b32_e64 v3, v26, v24, s0
	v_cndmask_b32_e64 v5, v27, v25, s0
	v_permlanex16_b32 v2, v4, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v6, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v10, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v13, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v0, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v11, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v9, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v1, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v3, v100
	v_perm_b32 v1, v2, v3, v101
	v_perm_b32 v2, v4, v5, v100
	v_perm_b32 v3, v4, v5, v101
	v_perm_b32 v4, v6, v7, v100
	v_perm_b32 v5, v6, v7, v101
	v_perm_b32 v6, v8, v12, v100
	v_perm_b32 v7, v8, v12, v101
	v_perm_b32 v12, v13, v16, v100
	v_perm_b32 v13, v13, v16, v101
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v32, v33, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v8, v10, v14, v100
	v_perm_b32 v9, v10, v14, v101
	v_perm_b32 v10, v11, v15, v100
	v_perm_b32 v11, v11, v15, v101
	v_perm_b32 v14, v18, v17, v100
	v_perm_b32 v15, v18, v17, v101
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v17, v32, v35, 1
	v_add_lshl_u32 v18, v32, v34, 1
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s9, s55, 0xffff
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	s_mov_b32 s8, s54
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s4
	.loc	1 1049 17                       ; attention.py:1049:17
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
.Ltmp51:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
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
		.amdhsa_next_free_vgpr 147
		.amdhsa_next_free_sgpr 73
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_vgpr, 147
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.numbered_sgpr, 73
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12848
; TotalNumSgprs: 75
; NumVgprs: 147
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 75
; NumVGPRsForWavesPerEU: 147
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
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
	.quad	.Ltmp50-.Lfunc_begin0
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
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     75
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     147
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
